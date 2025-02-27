vim.opt.relativenumber = true

-- fillchars
vim.opt.fillchars:append { diff = "╱"}

-- Keymaps
local keymap = vim.api.nvim_set_keymap

-- Harpoon
keymap('n', '<leader>ha', '<cmd>lua require("harpoon.mark").add_file()<CR>', { desc = '[H]arppon [A]dd file' })
keymap('n', '<leader>ht', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = '[H]arppon [T]oggle' })
keymap('n', '<leader>h1', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', { desc = '[H]arpoon file [1]'})
keymap('n', '<leader>h2', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', { desc = '[H]arpoon file [2]'})
keymap('n', '<leader>h3', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', { desc = '[H]arpoon file [3]'})
keymap('n', '<leader>h4', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', { desc = '[H]arpoon file [4]'})
keymap('n', '<leader>fh', '<cmd>lua require("harpoon.ui").nav_prev()<CR>', { desc = 'Harpoon previous file'})
keymap('n', '<leader>fl', '<cmd>lua require("harpoon.ui").nav_next()<CR>', { desc = 'Harpoon next file'})


-- Diffview
keymap("n", "<leader>gd", ":DiffviewOpen<cr>", { noremap= true})
keymap("n", "<leader>tc", ":tabclose<cr>", { noremap= true})

--Bufferline
keymap("n", "<M-l>", "<cmd>bnext<CR>", { noremap= true})
keymap("n", "<M-h>", "<cmd>bprevious<CR>", { noremap= true})
keymap("n", "<leader>q", '<cmd>Bdelete!<cr>', { noremap= true})

