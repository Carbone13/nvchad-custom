local M = {}
M.general = {
    n = {
        ["<leader>n"] = {"<cmd> NvimTreeToggle <CR>", "Toggle Tree"},
        ["<leader>p"] = { ":Lazy <CR>", "Open Lazy" },
        ["<leader>qa"] = { ":qa! <CR>", "Quit all"},
        ["<leader>w"] = { ":w <CR>", "Save"},
        ["<leader>a"] = { ":Ouroboros <CR>", "Switch header/source"},

        ["<leader>rr"] = { "<cmd>RunnerRun<cr>", "Run" },
        ["<leader>rd"] = { "<cmd>RunnerDebug<cr>", "Debug" },
        ["<leader>rt"] = { "<cmd>RunnerPrompt<cr>", "Prompt" },

        ["<leader>t"] = { "<cmd>ToggleTerm<cr>", "Terminal" },

        ["f"] = { "<cmd>HopWord<cr>", "Hop" },
    },
    i = {
        ["jk"] = { "<esc>"},
        ["kj"] = { "<esc"},
    },
    v = {
        ["<"] = { "<gv"},
        [">"] = { ">gv"},
    },
    t = {

    },
}

M.disabled = {
    -- line numbers
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
    ["<leader>b"] = "",
    
    n = {
        ["<leader>n"] = "",
        ["<leader>rn"] = "",
        ["<leader>b"] = "",
        ["<leader>th"] = "",
    }
}

local keymap = vim.api.nvim_set_keymap
local term_opts = { silent = true }

keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "<Esc>", "<cmd>close<cr>", term_opts)
keymap("x", "<Esc>", "<cmd>close<cr>", term_opts)

return M
