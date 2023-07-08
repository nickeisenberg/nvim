-- return {
--   "startup-nvim/startup.nvim",
--   dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
--   config = function()
--     -- require("startup").setup({theme = "dashboard"})
--     require("startup").setup(require"plugin_setup.startup")
--   end
-- }

return {
  "echasnovski/mini.starter",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VimEnter",
  config = function ()
    -- local status, starter = pcall(require, "mini.starter")
    -- if not status then
    --   return
    -- end
    local starter = require "mini.starter"
    return {
      starter.setup({
        content_hooks = {
          starter.gen_hook.adding_bullet(""),
          starter.gen_hook.aligning("center", "center"),
        },
        evaluate_single = true,
        footer = os.date(),
        header = table.concat({
          [[          ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗        ]],
          [[          ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║        ]],
          [[          ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║        ]],
          [[          ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║        ]],
          [[          ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║        ]],
          [[          ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝        ]],
          [[                                   /\                                   ]],
          [[                              /\  //\\                                  ]],
          [[                       /\    //\\///\\\        /\                       ]],
          [[                      //\\  ///\////\\\\  /\  //\\                      ]],
          [[         /\          /  ^ \/^ ^/^  ^  ^ \/^ \/  ^ \                     ]],
          [[        / ^\    /\  / ^   /  ^/ ^ ^ ^   ^\ ^/  ^^  \                    ]],
          [[       /^   \  / ^\/ ^ ^   ^ / ^  ^    ^  \/ ^   ^  \       *           ]],
          [[      /  ^ ^ \/^  ^\ ^ ^ ^   ^  ^   ^   ____  ^   ^  \     /|\          ]],
          [[     / ^ ^  ^ \ ^  _\___________________|  |_____^ ^  \   /||o\         ]],
          [[    / ^^  ^ ^ ^\  /______________________________\ ^ ^ \ /|o|||\        ]],
          [[   /  ^  ^^ ^ ^  /________________________________\  ^  /|||||o|\       ]],
          [[  /^ ^  ^ ^^  ^    ||___|___||||||||||||___|__|||      /||o||||||\      ]],
          [[ / ^   ^   ^    ^  ||___|___||||||||||||___|__|||          | |          ]],
          [[/ ^ ^ ^  ^  ^  ^   ||||||||||||||||||||||||||||||oooooooooo| |oooooooooo]],
          [[oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],
        }, "\n"),
        query_updaters = [[abcdefghilmoqrstuvwxyz0123456789_-,.ABCDEFGHIJKLMOQRSTUVWXYZ]],
        items = {
          { action = "Lazy", name = "L: Lazy", section = "Lazy" },
          { action = "Mason", name = "M: Mason", section = "Language Servers" },
          { action = "Telescope find_files", name = "F: Find Files", section = "Telescope" },
          { action = "Telescope live_grep", name = "G: Find Word", section = "Telescope" },
          { action = "Telescope oldfiles", name = "R: Recent Files", section = "Telescope" },
          { action = "enew", name = "E: New Buffer", section = "Builtin actions" },
          { action = "qall!", name = "Q: Quit Neovim", section = "Builtin actions" },
        },
      }),
      vim.cmd([[
        augroup MiniStarterJK
          au!
          au User MiniStarterOpened nmap <buffer> j <Cmd>lua MiniStarter.update_current_item('next')<CR>
          au User MiniStarterOpened nmap <buffer> k <Cmd>lua MiniStarter.update_current_item('prev')<CR>
          au User MiniStarterOpened nmap <buffer> <C-p> <Cmd>Telescope find_files<CR>
          au User MiniStarterOpened nmap <buffer> <C-n> <Cmd>Telescope file_browser<CR>
        augroup END
      ]])
    }
  end
}
