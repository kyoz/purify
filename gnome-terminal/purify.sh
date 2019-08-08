#!/usr/bin/env bash
# Purify - Gnome Terminal color scheme install script
# Based on https://github.com/aaron-williamson/base16-gnome-terminal

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Purify"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="purify"
[[ -z "$DCONF" ]] && DCONF=dconf
[[ -z "$UUIDGEN" ]] && UUIDGEN=uuidgen

dset() {
    local key="$1"; shift
    local val="$1"; shift

    if [[ "$type" == "string" ]]; then
        val="'$val'"
    fi

    "$DCONF" write "$PROFILE_KEY/$key" "$val"
}

# Because dconf still doesn't have "append"
dlist_append() {
    local key="$1"; shift
    local val="$1"; shift

    local entries="$(
        {
            "$DCONF" read "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
            echo "'$val'"
        } | head -c-1 | tr "\n" ,
    )"

    "$DCONF" write "$key" "[$entries]"
}

# Newest versions of gnome-terminal use dconf
if which "$DCONF" > /dev/null 2>&1; then
    # Check that uuidgen is available
    type $UUIDGEN >/dev/null 2>&1 || { echo >&2 "Requires uuidgen but it's not installed.  Aborting!"; exit 1; }

    [[ -z "$BASE_KEY_NEW" ]] && BASE_KEY_NEW=/org/gnome/terminal/legacy/profiles:

    if [[ -n "`$DCONF list $BASE_KEY_NEW/`" ]]; then
        if which "$UUIDGEN" > /dev/null 2>&1; then
            PROFILE_SLUG=`uuidgen`
        fi

        if [[ -n "`$DCONF read $BASE_KEY_NEW/default`" ]]; then
            DEFAULT_SLUG=`$DCONF read $BASE_KEY_NEW/default | tr -d \'`
        else
            DEFAULT_SLUG=`$DCONF list $BASE_KEY_NEW/ | grep '^:' | head -n1 | tr -d :/`
        fi

        DEFAULT_KEY="$BASE_KEY_NEW/:$DEFAULT_SLUG"
        PROFILE_KEY="$BASE_KEY_NEW/:$PROFILE_SLUG"

        # Copy existing settings from default profile
        $DCONF dump "$DEFAULT_KEY/" | $DCONF load "$PROFILE_KEY/"

        # Add new copy to list of profiles
        dlist_append $BASE_KEY_NEW/list "$PROFILE_SLUG"

        # Update profile values with theme options
        # Black  #282C34
        # White  #FAFAFA
        # Red    #FF6059
        # Green  #5FFF87
        # Blue   #5FAFFF
        # Yellow #FFFF87
        # Pink   #FF79C6

        dset visible-name "'$PROFILE_NAME'"
        dset palette "['#282C34', '#FF6059', '#5FFF87', '#FFFF87', '#5FAFFF', '#FF79C6', '#5FAFFF', '#FAFAFA', '#FAFAFA', '#FF6059', '#5FFF87', '#FFFF87', '#5FAFFF', '#FF79C6', '#5FAFFF', '#FAFAFA']"
        dset background-color "'#313440'"
        dset foreground-color "'#FAFAFA'"
        dset bold-color "'#FAFAFA'"
        dset bold-color-same-as-fg "true"
        dset cursor-colors-set "true"
        dset cursor-background-color "'#FAFAFA'"
        dset cursor-foreground-color "'#313440'"
        dset highlight-colors-set "true"
        dset highlight-background-color "'#252834'"
        dset highlight-foreground-color "'#FAFAFA'"
        dset use-theme-colors "false"
        dset use-theme-background "false"
        dset allow-bold false # Disable bold text


        unset PROFILE_NAME
        unset PROFILE_SLUG
        unset DCONF
        unset UUIDGEN
        exit 0
    fi
fi

# Fallback for Gnome 2 and early Gnome 3
[[ -z "$GCONFTOOL" ]] && GCONFTOOL=gconftool
[[ -z "$BASE_KEY" ]] && BASE_KEY=/apps/gnome-terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

gset() {
    local type="$1"; shift
    local key="$1"; shift
    local val="$1"; shift

    "$GCONFTOOL" --set --type "$type" "$PROFILE_KEY/$key" -- "$val"
}

# Because gconftool doesn't have "append"
glist_append() {
    local type="$1"; shift
    local key="$1"; shift
    local val="$1"; shift

    local entries="$(
        {
            "$GCONFTOOL" --get "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
            echo "$val"
        } | head -c-1 | tr "\n" ,
    )"

    "$GCONFTOOL" --set --type list --list-type $type "$key" "[$entries]"
}

# Append the Base16 profile to the profile list
glist_append string /apps/gnome-terminal/global/profile_list "$PROFILE_SLUG"

gset string visible_name "$PROFILE_NAME"
gset string palette "#313440:#FF6059:#5FFF87:#FFFF87:#5FAFFF:#FF79C6:#5FAFFF:#FAFAFA:#FAFAFA:#FF6059:#5FFF87:#FFFF87:#5FAFFF:#FF79C6:#5FAFFF:#F7F7F7"
gset string background_color "#313440"
gset string foreground_color "#FAFAFA"
gset string bold_color "#FAFAFA"
gset bool   bold_color_same_as_fg "true"
gset bool   cursor-colors-set "true"
gset string cursor-background-color "'#FAFAFA'"
gset string cursor-foreground-color "'#313440'"
gset string highlight-background-color "'#252834'"
gset string highlight-foreground-color "'#FAFAFA'"
gset bool   use_theme_colors "false"
gset bool   use_theme_background "false"

unset PROFILE_NAME
unset PROFILE_SLUG
unset DCONF
unset UUIDGEN
