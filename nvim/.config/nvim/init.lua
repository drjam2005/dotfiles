-- ============================================================
-- Plugins — built-in vim.pack
-- ============================================================

vim.pack.add({
    "https://github.com/tpope/vim-sensible",
    "https://github.com/tpope/vim-dispatch",
    "https://github.com/tpope/vim-fugitive",

    {
        src = "https://github.com/lervag/vimtex",
        version = "v2.15",
    },

    "https://github.com/sheerun/vim-polyglot",
    "https://github.com/prabirshrestha/vim-lsp",
    "https://github.com/mattn/vim-lsp-settings",
    "https://github.com/prabirshrestha/asyncomplete.vim",

    "https://github.com/drsooch/gruber-darker-vim",
    "https://github.com/chriskempson/base16-vim",

    -- "https://github.com/instant-markdown/vim-instant-markdown",

    {
        src = "https://github.com/iamcco/markdown-preview.nvim",
    },

    "https://github.com/rktjmp/lush.nvim",
    "https://github.com/zenbones-theme/zenbones.nvim",
    "https://github.com/webhooked/kanso.nvim",

    "https://codeberg.org/turysaz/vim-zenmode.git",

    "https://github.com/AlessandroYorba/Alduin",
    "https://github.com/jalvesaq/Nvim-R",
    "https://github.com/mattn/emmet-vim",
    "https://github.com/ficd0/ashen.nvim",
    "https://github.com/jlanzarotta/colorSchemeExplorer",

    -- "https://github.com/drjam2005/kitty-sync.vim",
    "https://github.com/drjam2005/vim-setmake.vim",
})


-- ============================================================
-- General
-- ============================================================

vim.g.mapleader = " "

vim.opt.hidden = true
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.scrolloff = 4
vim.opt.signcolumn = "no"
vim.opt.autochdir = true
vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.filetype = "on"

vim.cmd("syntax on")


-- ============================================================
-- LSP
-- ============================================================

vim.g.lsp_signature_help_enabled = 0
vim.g.lsp_signature_help_delay = 0
vim.g.lsp_peek_definition_enabled = 0
vim.g.asyncomplete_auto_completeopt = 0
vim.g.lsp_show_message_request_enabled = 0
vim.g.lsp_document_highlight_enabled = 0
vim.g.lsp_diagnostics_virtual_text_enabled = 0

vim.keymap.set("n", "gd", "<cmd>LspDefinition<CR>")
vim.keymap.set("n", "gr", "<cmd>LspReferences<CR>")
vim.keymap.set("n", "K", "<cmd>LspHover<CR>")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.bo.omnifunc = "lsp#complete"
    end,
})


-- ============================================================
-- VimTeX
-- ============================================================

vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_view_forward_search_on_start = 0

vim.g.vimtex_compiler_latexmk = {
    aux_dir = "/home/james/.texfiles",
    build_dir = "out",
}


-- ============================================================
-- File search paths
-- ============================================================

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "python", "javascript" },
    callback = function()
        vim.opt_local.path:append("**")
    end,
})


-- ============================================================
-- Instant Markdown
-- ============================================================

vim.g.instant_markdown_slow = 1
vim.g.instant_markdown_autostart = 0
vim.g.instant_markdown_allow_unsafe_content = 1
vim.g.instant_markdown_allow_external_content = 1
vim.g.instant_markdown_logfile = "/tmp/instant_markdown.log"
vim.g.instant_markdown_autoscroll = 1
vim.g.instant_markdown_port = 8888
-- vim.g.instant_markdown_theme = "dark"


-- ============================================================
-- Colorscheme
-- ============================================================

vim.cmd("colorscheme base16-atelier-plateau")

vim.api.nvim_set_hl(0, "Normal", {
    bg = "NONE",
})

vim.api.nvim_set_hl(0, "StatusLine", {
    fg = "#d0d0d0",
    bg = "#1c1c1c",
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
    fg = "#707070",
    bg = "#121212",
})

vim.api.nvim_set_hl(0, "Macro", {
    fg = "#777777",
})

vim.api.nvim_set_hl(0, "PreProc", {
    fg = "#777777",
})

vim.api.nvim_set_hl(0, "Include", {
    fg = "#777777",
})

vim.api.nvim_set_hl(0, "LineNr", {
    fg = "#808080",
    bg = "NONE",
})

vim.api.nvim_set_hl(0, "VertSplit", {
    fg = "#676767",
    bg = "NONE",
})

vim.api.nvim_set_hl(0, "EndOfBuffer", {
    bg = "NONE",
})

vim.api.nvim_set_hl(0, "Function", {
    fg = "#dddddd",
})

vim.api.nvim_set_hl(0, "LspErrorHighlight", {
    fg = "#ff6c6b",
    bg = "NONE",
    underline = true,
})

vim.api.nvim_set_hl(0, "LspWarningHighlight", {
    fg = "#ECBE7B",
    bg = "NONE",
    underline = true,
})

vim.api.nvim_set_hl(0, "cppSTLvariable", {
    fg = "#ffffff",
})
