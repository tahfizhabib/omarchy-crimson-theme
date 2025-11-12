return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1A1621", -- Default background
                base01 = "#4c4756", -- Lighter background (status bars)
                base02 = "#1A1621", -- Selection background
                base03 = "#4c4756", -- Comments, invisibles
                base04 = "#FEFDFD", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#FEFDFD", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#b17777", -- Variables, errors, red
                base09 = "#d4b0b0", -- Integers, constants, orange
                base0A = "#DA884A", -- Classes, types, yellow
                base0B = "#E48A3E", -- Strings, green
                base0C = "#b7acc8", -- Support, regex, cyan
                base0D = "#9e96c0", -- Functions, keywords, blue
                base0E = "#bba7be", -- Keywords, storage, magenta
                base0F = "#eeba92", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
