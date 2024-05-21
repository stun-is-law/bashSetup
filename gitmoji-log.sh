#!/bin/bash

num_commits=35

if [ "$#" -eq 1 ]; then
  num_commits=$1
fi

git log --oneline -n $num_commits --decorate --color=always | awk '
BEGIN {
  reset_color = "\033[0m"
  emoji["sparkles"] = "✨"
  emoji["bug"] = "🐛"
  emoji["fire"] = "🔥"
  emoji["rocket"] = "🚀"
  emoji["zap"] = "⚡"
  emoji["art"]="🎨"
  emoji["zap"]="⚡️"
  emoji["fire"]="🔥"
  emoji["bug"]="🐛"
  emoji["ambulance"]="🚑️"
  emoji["sparkles"]="✨"
  emoji["memo"]="📝"
  emoji["rocket"]="🚀"
  emoji["lipstick"]="💄"
  emoji["tada"]="🎉"
  emoji["white_check_mark"]="✅"
  emoji["lock"]="🔒️"
  emoji["closed_lock_with_key"]="🔐"
  emoji["bookmark"]="🔖"
  emoji["rotating_light"]="🚨"
  emoji["construction"]="🚧"
  emoji["green_heart"]="💚"
  emoji["arrow_down"]="⬇️"
  emoji["arrow_up"]="⬆️"
  emoji["pushpin"]="📌"
  emoji["construction_worker"]="👷"
  emoji["chart_with_upwards_trend"]="📈"
  emoji["recycle"]="♻️"
  emoji["heavy_plus_sign"]="➕"
  emoji["heavy_minus_sign"]="➖"
  emoji["wrench"]="🔧"
  emoji["hammer"]="🔨"
  emoji["globe_with_meridians"]="🌐"
  emoji["pencil2"]="✏️"
  emoji["poop"]="💩"
  emoji["rewind"]="⏪️"
  emoji["twisted_rightwards_arrows"]="🔀"
  emoji["package"]="📦️"
  emoji["alien"]="👽️"
  emoji["truck"]="🚚"
  emoji["page_facing_up"]="📄"
  emoji["boom"]="💥"
  emoji["bento"]="🍱"
  emoji["wheelchair"]="♿️"
  emoji["bulb"]="💡"
  emoji["beers"]="🍻"
  emoji["speech_balloon"]="💬"
  emoji["card_file_box"]="🗃️"
  emoji["loud_sound"]="🔊"
  emoji["mute"]="🔇"
  emoji["busts_in_silhouette"]="👥"
  emoji["children_crossing"]="🚸"
  emoji["building_construction"]="🏗️"
  emoji["iphone"]="📱"
  emoji["clown_face"]="🤡"
  emoji["egg"]="🥚"
  emoji["see_no_evil"]="🙈"
  emoji["camera_flash"]="📸"
  emoji["alembic"]="⚗️"
  emoji["mag"]="🔍️"
  emoji["label"]="🏷️"
  emoji["seedling"]="🌱"
  emoji["triangular_flag_on_post"]="🚩"
  emoji["goal_net"]="🥅"
  emoji["dizzy"]="💫"
  emoji["wastebasket"]="🗑️"
  emoji["passport_control"]="🛂"
  emoji["adhesive_bandage"]="🩹"
  emoji["monocle_face"]="🧐"
  emoji["coffin"]="⚰️"
  emoji["test_tube"]="🧪"
  emoji["necktie"]="👔"
  emoji["stethoscope"]="🩺"
  emoji["bricks"]="🧱"
  emoji["technologist"]="🧑‍💻"
  emoji["money_with_wings"]="💸"
  emoji["thread"]="🧵"
  emoji["safety_vest"]="🦺"
}

{
  line = $0
  # Replace gitmojis with real emojis
  for (gitmoji in emoji) {
    gsub(":" gitmoji ":", emoji[gitmoji], line)
  }
  print line
}' | less -R
