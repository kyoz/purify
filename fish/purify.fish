# name: purify
# base on: theme-clearance (https://github.com/oh-my-fish/theme-clearance)

# Set fish global colors
set -l normal     fafafa
set -l selection  3e4452
set -l comment    5f5f87

set -l red    ff6059
set -l green  5fff87
set -l blue   5fafff
set -l yellow ffff87
set -l pink   ff79c6
set -l salmon ff875f

set -g fish_color_autosuggestion $selection
set -g fish_color_command        $green
set -g fish_color_comment        $comment
set -g fish_color_end            $salmon
set -g fish_color_error          $red
set -g fish_color_escape         $pink
set -g fish_color_normal         $normal
set -g fish_color_operator       $green
set -g fish_color_param          $normal
set -g fish_color_quote          $yellow
set -g fish_color_redirection    $foreground
set -g fish_color_search_match   --background=$selection
set -g fish_color_selection      --background=$selection

# Function to support git
function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l last_status $status

  # Define required colors
  set -l cyan   (set_color 88fcfc)
  set -l pink   (set_color ff79c6)
  set -l red    (set_color ff6059)
  set -l blue   (set_color 5fafff)
  set -l green  (set_color 5fff87)
  set -l normal (set_color fafafa)

  set -l cwd $blue(pwd | sed "s:^$HOME:~:")

  # Add a newline before new prompts
  echo -e ''

  # Display [venvname] if in a virtualenv
  if set -q VIRTUAL_ENV
      echo -n -s (set_color -b blue black) '[' (basename "$VIRTUAL_ENV") ']' $normal ' '
  end

  # Print pwd or full path
  echo -n -s $cwd $normal

  # Show git branch and status
  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if [ (_git_is_dirty) ]
      set git_info $cyan $git_branch $red " !"
    else
      set git_info $cyan $git_branch $green " √"
    end

    echo -n -s $cyan ' ⇢  ' $git_info
  end

  # Terminate with a nice prompt char
  echo -e ''
  echo -e -n -s $pink '❯ '
end
