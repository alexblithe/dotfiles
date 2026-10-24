local mod = "SUPER";

hl.bind(mod.." + RETURN", function()
    hl.dispatch(hl.dsp.exec_cmd("kitty"));
end);
hl.bind(mod .. " + D", function ()
    hl.dispatch(hl.dsp.exec_cmd("rofi -show drun"))
end)

hl.bind(mod .. " + SHIFT + Q", hl.dsp.window.kill())

-- Toggle terminal scratchpad
hl.bind(mod .. " + grave", hl.dsp.workspace.toggle_special("terminal"))
hl.bind(mod .. " + SHIFT + grave", hl.dsp.window.move({ workspace = "special:terminal", follow = false }))

hl.bind(mod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mod .. " + T", hl.dsp.window.float())
hl.bind(mod .. " + M", hl.dsp.exit())

-- Move focus between windows
hl.bind(mod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Switch to workspaces 1-8
for workspace = 1, 8 do
    hl.bind(mod .. " + " .. tostring(workspace), hl.dsp.focus({ workspace = tostring(workspace) }))
end

-- Resize windows
hl.bind(mod .. " + SHIFT + H", hl.dsp.window.resize({ x = -30, y = 0, relative = true }))
hl.bind(mod .. " + SHIFT + L", hl.dsp.window.resize({ x = 30, y = 0, relative = true }))
hl.bind(mod .. " + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -30, relative = true }))
hl.bind(mod .. " + SHIFT + J", hl.dsp.window.resize({ x = 0, y = 30, relative = true }))

-- Move focused window to workspaces 1-8
for workspace = 1, 8 do
    hl.bind(mod .. " + SHIFT + " .. tostring(workspace), hl.dsp.window.move({ workspace = tostring(workspace), follow = false }))
end

-- Brightness keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +10%"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 10%-"))

-- Volume keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pamixer --increase 5"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pamixer --decrease 5"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pamixer --toggle-mute"))

-- Lock screen
hl.bind(mod .. " + CTRL + L", hl.dsp.exec_cmd("hyprlock"))

-- Screenshot with grimblast
hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd("grimblast copy area"))

-- Color picker
hl.bind(mod .. " + P", hl.dsp.exec_cmd("hyprpicker -a"))

-- Clipboard history
hl.bind(mod .. " + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))

