-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.termguicolors = true
vim.opt.tabstop = 4 -- Veličina taba je 4 space-a
vim.opt.shiftwidth = 4 -- Koristi 4 space-a za automatsko uvlačenje
vim.opt.expandtab = true -- Konvertuje tabove u space-ove

vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Delete>", "de", { noremap = true })
vim.keymap.set("i", "<C-Delete>", "<Esc>de<Ins>", { noremap = true })

-- Ctrl+a za select all
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true })
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { noremap = true })
vim.keymap.set("v", "<C-a>", "ggVG", { noremap = true })

-- Ctrl+x za dd (brisanje linije)
vim.keymap.set("n", "<C-x>", "dd", { noremap = true })
vim.keymap.set("i", "<C-x>", "<Esc>ddi", { noremap = true })

vim.keymap.set("n", "<C-c>", "yy", { noremap = true })
vim.keymap.set("v", "<C-c>", "y", { noremap = true })
vim.keymap.set("i", "<C-c>", "<Esc>yi", { noremap = true })

vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==", { noremap = true })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>==", { noremap = true })
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { noremap = true })

-- Shift + strelice za selektovanje karakter po karakter u insert modu
vim.keymap.set("i", "<S-Left>", "<Esc>vlhi", { noremap = true })
vim.keymap.set("i", "<S-Right>", "<Esc>vli", { noremap = true })
vim.keymap.set("i", "<S-Up>", "<Esc>vkji", { noremap = true })
vim.keymap.set("i", "<S-Down>", "<Esc>vji", { noremap = true })

-- Ctrl + Shift + strelice za selektovanje reč po reč u insert modu
vim.keymap.set("i", "<C-S-Left>", "<Esc>vbhi", { noremap = true })
vim.keymap.set("i", "<C-S-Right>", "<Esc>vwi", { noremap = true })

-- Shift + Home/End za selektovanje do početka/kraja linije u insert modu
vim.keymap.set("i", "<S-Home>", "<Esc>v0i", { noremap = true })
vim.keymap.set("i", "<S-End>", "<Esc>v$i", { noremap = true })

vim.keymap.set("n", "<S-Left>", "<Esc>vlhi", { noremap = true })
vim.keymap.set("n", "<S-Right>", "<Esc>vli", { noremap = true })
vim.keymap.set("n", "<S-Up>", "<Esc>vkji", { noremap = true })
vim.keymap.set("n", "<S-Down>", "<Esc>vji", { noremap = true })

-- Ctrl + Shift + strelice za selektovanje reč po reč u insert modu
vim.keymap.set("n", "<C-S-Left>", "<Esc>vbhi", { noremap = true })
vim.keymap.set("n", "<C-S-Right>", "<Esc>vwi", { noremap = true })

-- Shift + Home/End za selektovanje do početka/kraja linije u insert modu
vim.keymap.set("n", "<S-Home>", "<Esc>v0i", { noremap = true })
vim.keymap.set("n", "<S-End>", "<Esc>v$i", { noremap = true })

vim.keymap.set("i", "<C-z>", "<Esc>u<C-r>a", { noremap = true }) -- Undo u insert modu
vim.keymap.set("i", "<C-y>", "<Esc><C-r>ai", { noremap = true }) -- Redo u insert modu

vim.keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true }) -- Undo u insert modu

vim.keymap.set("i", "<C-y>", "<Esc><C-r>i", { noremap = true }) -- Redo u insert modu
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true }) -- Sačuvaj fajl u normalnom modu

vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true }) -- Sačuvaj fajl u insert modu BEZ izlaska

vim.opt.foldmethod = "indent" -- ili "manual", "indent", "expr"
vim.opt.foldlevel = 99
vim.opt.foldenable = true

vim.o.swapfile = true -- Omogućava swap fajlove
vim.o.updatecount = 0 -- Automatski čuva swap fajl svaki put kad se fajl izmeni
vim.opt.shortmess:append("A") -- Onemogućava dijalog o swap fajlu

vim.g.user_emmet_expandabbr_key = "<C-y>,"
vim.g.user_emmet_leader_key = "<C-y>"

vim.opt.clipboard = "unnamedplus"
