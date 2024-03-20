-- Enable auto format on-save
vim.g.autoformat = true

-- Enable elite-mode (hjkl mode. arrow-keys resize window)
vim.g.elite_mode = false

-- When enabled, 'q' closes any window
vim.g.window_q_mapping = false

-- Display structure in statusline by default
vim.g.structure_status = false

-- IME switching
vim.cmd([[
    let fcitx5state=system("fcitx5-remote")
    autocmd InsertLeave * :silent let fcitx5state=system("fcitx5-remote")[0] | silent !fcitx5-remote -c
    autocmd InsertEnter * :silent if fcitx5state == 2 | call system("fcitx5-remote -o") | endif
]])

--相对行号显示
vim.opt.relativenumber = true
vim.opt.number = true

--markdown删除拼写提示
vim.api.nvim_command('autocmd FileType markdown setlocal spell spelllang=en_us,cjk')
