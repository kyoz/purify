# | | / /
# | |/ / _   _  ___ ____
# |    \| | | |/ _ \_  /  Author: Kyoz
# | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
# \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
#         __/ |
#        |___/

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import default_colors, reverse, bold, normal, default


# pylint: disable=too-many-branches,too-many-statements
class Default(ColorScheme):
    progress_bar_color = 75

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                fg = 209
                bg = 235
            if context.border:
                fg = 61
            if context.image:
                fg = 84
            if context.video:
                fg = 209
            if context.audio:
                fg = 141
            if context.document:
                fg = 15
            if context.container:
                attr |= bold
                fg = 173
            if context.directory:
                attr |= bold
                fg = 75
            elif context.executable and not \
                    any((context.media, context.container,
                         context.fifo, context.socket)):
                attr |= bold
                fg = 84
            if context.socket:
                fg = 212
                attr |= bold
            if context.fifo or context.device:
                fg = 212
                if context.device:
                    attr |= bold
            if context.link:
                fg = 75 if context.good else 209
                bg = 236
            if context.bad:
                bg = 238
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (174, 95):
                    fg = 248
                else:
                    fg = 174
            if not context.selected and (context.cut or context.copied):
                fg = 15
                bg = 236
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = 228
            if context.badinfo:
                if attr & reverse:
                    bg = 173
                else:
                    fg = 95

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = 212
            elif context.directory:
                fg = 84
            elif context.tab:
                if context.good:
                    bg = 228
            elif context.link:
                fg = 75

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 108
                elif context.bad:
                    fg = 174
            if context.marked:
                attr |= bold | reverse
                fg = 212
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 209
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 84
                attr &= ~bold
            if context.vcscommit:
                fg = 228
                attr &= ~bold

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 141

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = 173
            elif context.vcschanged:
                fg = 75
            elif context.vcsunknown:
                fg = 75
            elif context.vcsstaged:
                fg = 141
            elif context.vcssync:
                fg = 84
            elif context.vcsignored:
                fg = default

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = 84
            elif context.vcsbehind:
                fg = 173
            elif context.vcsahead:
                fg = 75
            elif context.vcsdiverged:
                fg = 209
            elif context.vcsunknown:
                fg = 75

        return fg, bg, attr
