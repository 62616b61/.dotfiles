i3-msg "workspace 9; append_layout ~/.config/i3/workspaces/ws9.json"
(urxvt -name Cava -e cava &)
(urxvt -name Jam -e jam &)
(urxvt -name Bonsai --hold -e sh ~/Scripts/bonsai.sh &)

i3-msg "workspace 2; append_layout ~/.config/i3/workspaces/ws2.json"
(urxvt &)
(urxvt &)
(urxvt &)
(urxvt &)

i3-msg "workspace 4;"
(chromium &)
