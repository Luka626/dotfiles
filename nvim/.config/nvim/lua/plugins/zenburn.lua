    return{
        'phha/zenburn.nvim',
        name = 'zenburn', -- Optional: specify a name for the plugin
        lazy = false, -- Set to false if you want it loaded on startup
        priority = 1000, -- Optional: ensure it loads early
        config = function()
            vim.cmd('colorscheme zenburn')
        end,
    }
