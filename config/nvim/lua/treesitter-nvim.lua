local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
    ensure_installed = {
        "bash",
        "lua",
        "json",
        "python",
        "julia",
        "latex",
        "java",
        "r"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}
