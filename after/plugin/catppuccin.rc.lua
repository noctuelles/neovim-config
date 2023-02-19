require("catppuccin").setup({
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {
      latte = {
        base = "#FBF1C7",
        mantle = "#F9EBAF",
        crust = "#E0D39D",
        pink = "#BD5FA3",
        mauve = "#7A33D7",
        green = "#338022",
        teal = "#148389",
        yellow = "#A06514",
        peach = "#E45A09",
        text = "#2D2018",
        subtext1 = "#4B3628",
        subtext0 = "#5D4A3D",
        overlay2 = "#6e5e52",
        overlay1 = "#817268",
        overlay0 = "#93867E",
        surface2 = "#A59a93",
        surface1 = "#B7AEA9",
        surface0 = "#C9C2BE",
      },
    },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})
