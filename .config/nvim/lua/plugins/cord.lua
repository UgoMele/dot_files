return {
  {
    'vyfor/cord.nvim',
    build = './build',
    event = 'VeryLazy',
    config = function()
      require('cord').setup({
        usercmds = true,
        timer = {
          enable = true,
          interval = 1500,
          reset_on_idle = false,
          reset_on_change = false,
        },
        editor = {
          image = nil,
          client = 'neovim',
          tooltip = 'The Superior Text Editor',
        },
        display = {
          show_time = true,
          show_repository = true,
          show_cursor_position = false,
          swap_fields = false,
          workspace_blacklist = {},
        },
        lsp = {
          show_problem_count = false,
          severity = 1,
          scope = 'workspace',
        },
        idle = {
          enable = true,
          show_status = true,
          timeout = 1800000,
          disable_on_focus = true,
          text = 'Idle',
          tooltip = '💤',
        },
        text = {
          viewing = 'Viewing {}',
          editing = 'Editing {}',
          file_browser = 'Browsing files in {}',
          plugin_manager = 'Managing plugins in {}',
          lsp_manager = 'Configuring LSP in {}',
          workspace = 'In {}',
        },
        buttons = {
          {
            label = 'View Repository',
            url = 'git',
          },
        },
        assets = {
        },
      })
    end
  }
}
