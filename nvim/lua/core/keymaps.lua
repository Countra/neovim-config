vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口 (分屏)
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertical 垂直新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontal 水平新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
-- 因为Ctrl+l和h的方式已经被切换窗口的快捷键暂用了，并且似乎没有区分大小写
-- 原方式：<C-L> 和 <C-H>
-- 现方式：<C-b>l 和 <C-b>h ，b是buffer的意思
keymap.set("n", "<C-b>l", ":bnext<CR>")
keymap.set("n", "<C-b>h", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
