return {
  'goolord/alpha-nvim',
  event = "VimEnter",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    local time = os.date("%H:%M")
		local date = os.date("%a %d %b")
		local v = vim.version()
		local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch

    dashboard.section.header.val = {
      [[                                                                                                          ]],
      [[                                                                                                          ]],
      [[                                                                                                          ]],
      [[                                                                                                          ]],
      [[                                                                                                        ]],
      [[       ████ ██████                                             █████       ██                     ]],
      [[      █████████████                                               █████                               ]],
      [[      ███████     ████    ████ ███ ██    ████ ███   ███  ████████ ███   ███████████   ]],
      [[        ██████    ███   ███ █████ ███ ███    ██ ███    ████████ █████ ██████████████   ]],
      [[         ██████ ██████████████   █████████     ███████      ███████ █████ █████ ████ █████   ]],
      [[  █████████████ ███   ██████    ███  ███     ███            ██████ █████ █████ ████ █████   ]],
      [[ ██ █████████████    ████████  █████ ████     ████              ████ █████ █████ ████ ██████ ]],
      [[                                                                                                          ]],
      [[                                                                                                          ]],
      [[                                                                                                          ]],
    }

    -- Tell the header section to use a specific highlight group name
    dashboard.section.header.opts = dashboard.section.header.opts or {}
    dashboard.section.header.opts.hl = "SAlphaHeader"

    dashboard.section.buttons.val = {
			dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰮗   Find file", ":cd $HOME | Telescope find_files<CR>"),
			dashboard.button("e", "   File Explorer", ":cd $HOME | Neotree<CR>"),
			dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("c", "   Configuration", ":e ~/.config/nvim/lua/user/config.lua<CR>"),
			dashboard.button("R", "󱘞   Ripgrep", ":Telescope live_grep<CR>"),
			dashboard.button("q", "󰗼   Quit", ":qa<CR>"),
		}

    -- Tell the buttons section to use a specific highlight group name
    dashboard.section.buttons.opts = dashboard.section.buttons.opts or {}
    dashboard.section.buttons.opts.hl = "SAlphaButtons"


		function centerText(text, width)
			local totalPadding = width - #text
			local leftPadding = math.floor(totalPadding / 2)
			local rightPadding = totalPadding - leftPadding
			return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
		end

		dashboard.section.footer.val = {
      " ",
      " ",
			centerText("< github.com/shayyz-code >", 50),
			" ",
			" ",
			" ",
			centerText(date .. " " .. time, 50),
			centerText(version, 50),
		}

    -- Tell the footer section to use a specific highlight group name
    dashboard.section.footer.opts = dashboard.section.footer.opts or {}
    dashboard.section.footer.opts.hl = "SAlphaFooter"

    -- Create (or re-create) the highlight group function
    local function set_salpha_hl()
      vim.api.nvim_set_hl(0, "SAlphaHeader", { fg = "#3f47ff", bg = nil, bold = true })
      -- Optional: other groups you may want to control
      vim.api.nvim_set_hl(0, "SAlphaButtons", { fg = "#42cdef", bg = nil })
      vim.api.nvim_set_hl(0, "SAlphaFooter",  { fg = "#ffffff", bg = nil, italic = true })
    end

    -- apply immediately
    set_salpha_hl()

    -- re-apply after colorscheme changes so theme doesn't overwrite it
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function() set_salpha_hl() end,
    })

    alpha.setup(dashboard.opts)
  end,
}
