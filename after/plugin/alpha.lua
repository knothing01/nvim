local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

dashboard.section.buttons.val = {
    dashboard.button("e", "  > New File", "<cmd>e ~/newfile.txt<CR>"),  -- Example command, adjust as per your setup
    dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
    dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
    dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
}

alpha.setup(dashboard.opts)

-- Disable folding in alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

