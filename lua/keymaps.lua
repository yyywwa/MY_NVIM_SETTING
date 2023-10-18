-----------------------windows------------------------------------
Keymap("n", "s", "", Opt)
-- windows 分屏快捷键
--左右
Keymap("n", "sv", ":vsp<CR>", Opt)
-- 上下
Keymap("n", "sh", ":sp<CR>", Opt)
-- 关闭当前
Keymap("n", "sc", "<C-w>c", Opt)
-- 关闭其他
Keymap("n", "so", "<C-w>o", Opt)
-- Alt + hjkl  窗口之间跳转
-- Keymap("n", "<leader>h", "w | <C-w>h", Opt)
-- Keymap("n", "<leader>j", "w | <C-w>j", Opt)
-- Keymap("n", "<leader>k", "w | <C-w>k", Opt)
-- Keymap("n", "<leader>l", "w | <C-w>l", Opt)
Keymap("n", "<leader>h", "<C-w>h", Opt)
Keymap("n", "<leader>j", "<C-w>j", Opt)
Keymap("n", "<leader>k", "<C-w>k", Opt)
Keymap("n", "<leader>l", "<C-w>l", Opt)
-- 左右比例控制
Keymap("n", "<C-Left>", ":vertical resize -2<CR>", Opt)
Keymap("n", "<C-Right>", ":vertical resize +2<CR>", Opt)
Keymap("n", "s,", ":vertical resize -20<CR>", Opt)
Keymap("n", "s.", ":vertical resize +20<CR>", Opt)
-- 上下比例
Keymap("n", "sj", ":resize +10<CR>", Opt)
Keymap("n", "sk", ":resize -10<CR>", Opt)
Keymap("n", "<C-Down>", ":resize +2<CR>", Opt)
Keymap("n", "<C-Up>", ":resize -2<CR>", Opt)
-- 等比例
Keymap("n", "s=", "<C-w>=", Opt)
-----------------------windows------------------------------------
