return {
    -- 🧠 Mind.nvim
    { 'phaazon/mind.nvim',
    branch = 'v2.2',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
        require'mind'.setup()
    end
},
}
