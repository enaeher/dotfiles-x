-- look_cleanios.lua drawing engine configuration file for Ion.

if not gr.select_engine("de") then return end

de.reset()

de.defstyle("*", {
    shadow_colour = "#000000",
    highlight_colour = "#ffffff",
    background_colour = "#d8d8d8",
    foreground_colour = "#000000",
    padding_pixels = 0,
    highlight_pixels = 0,
    shadow_pixels = 1,
    spacing = 0,
    border_style = "elevated",
--    font = "-*-inconsolata-medium-r-normal-*-14-*-*-*-*-*-*-*",
    text_align = "center",
})

de.defstyle("frame", {
    based_on = "*",
    padding_colour = "#000000",
    background_colour = "#000000",
    transparent_background = true,
})


de.defstyle("frame-tiled", {
    based_on = "frame",
    shadow_pixels = 1,
    highlight_pixels = 0,
    padding_pixels = 0,
    spacing = 0,
})

de.defstyle("tab", {
    based_on = "*",
--    font = "-*-inconsolata-medium-r-normal-*-14-*-*-*-*-*-*-*",
    de.substyle("active-selected", {
        shadow_colour = "#000000",
        highlight_colour = "#000000",
        background_colour = "#f0c000",
        foreground_colour = "#000000",
    }),
    de.substyle("active-unselected", {
        shadow_colour = "#000000",
        highlight_colour = "#000000",
        background_colour = "#d8d8d8",
        foreground_colour = "#000000",
    }),
    de.substyle("inactive-selected", {
        shadow_colour = "#000000",
        highlight_colour = "#000000",
        background_colour = "#a8a8a8",
        foreground_colour = "#000000",
    }),
    de.substyle("inactive-unselected", {
        shadow_colour = "#333333",
        highlight_colour = "#333333",
        background_colour = "#d8d8d8",
        foreground_colour = "#000000",
    }),
    text_align = "center",
})

de.defstyle("tab-frame", {
    based_on = "tab",
    de.substyle("*-*-*-*-activity", {
        shadow_colour = "#000000",
        highlight_colour = "#000000",
        background_colour = "#990000",
        foreground_colour = "#eeeeee",
    }),
})

de.defstyle("tab-frame-tiled", {
    based_on = "tab-frame",
    spacing = 0,
})

de.defstyle("tab-menuentry", {
    based_on = "tab",
    text_align = "left",
    spacing = 0,
})

de.defstyle("tab-menuentry-big", {
    based_on = "tab-menuentry",
    font = "-*-inconsolata-medium-r-normal-*-14-*-*-*-*-*-*-*",
    padding_pixels = 7,
})

de.defstyle("input-edln", {
    based_on = "*",
    de.substyle("*-cursor", {
        background_colour = "#000000",
        foreground_colour = "#d8d8d8",
    }),
    de.substyle("*-selection", {
        background_colour = "#f0c000",
        foreground_colour = "#000000",
    }),
})

--dopath("lookcommon_clean")

gr.refresh()

