PROMPT='⟴  %{$fg[cyan]%}%c%{$reset_color%} %{$fg[magenta]%}$(git_info_ayush)%{$reset_color%}$(random_emoji)  '

EMOJI=(💩 🐦 🚀 🐞 🎨 🍕 🐭 👽 ☕️ 🔬 💀 🐷 🐼 🐶 🐸 🐧 🐳 🍔 🍣 🍻 🔮 💰 💎 💾 💜 🍪 🌞 🌍 🐌 🐓 🍄 )

function random_emoji {
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"
}

function git_info_ayush {
    if [ "$(git_current_branch)" != '' ]
    then
        echo "$(git_current_branch) "
    else
        echo ""
    fi    
}