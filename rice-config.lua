-- Recreate the dark GNOME desktop style from the supplied reference.
-- Run with: kacu-pkg apply /etc/kacu/examples/rice.lua
return {
    name = "KacuOS dark desktop rice",

    -- Official Arch packages only. pacman will show its normal confirmation prompt.
    packages = {
        "plank",
        "kitty",
        "fastfetch",
        "code",
        "cava",
        "ttf-jetbrains-mono",
    },

    -- Values are passed to gsettings as GVariant values.
    gsettings = {
        ["org.gnome.desktop.interface"] = {
            ["color-scheme"] = "prefer-dark",
            ["enable-animations"] = false,
            ["monospace-font-name"] = "JetBrains Mono 10",
        },
        ["org.gnome.desktop.wm.preferences"] = {
            ["button-layout"] = "appmenu:minimize,maximize,close",
        },
    },

    -- Plank supplies the bottom dock; GNOME keeps its normal top panel.
    autostart = { "plank" },

    -- Kitty supports translucent terminal windows through the compositor.
    kitty = {
        background = "#11131b",
        foreground = "#d5d9e2",
        cursor = "#9bd5ca",
        background_opacity = 0.84,
        font_family = "JetBrains Mono",
        font_size = 10,
    },
}
