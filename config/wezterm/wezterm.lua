-- Pull in the wezterm API
local wezterm = require 'wezterm'

local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")

local session_manager = require("wezterm-session-manager/session-manager")
wezterm.on("save_session", function(window) 
  session_manager.save_state(window)
end)
wezterm.on("load_session", function(window) session_manager.load_state(window) end)
wezterm.on("restore_session", function(window) session_manager.restore_state(window) end)


-- This will hold the configuration.
local config = wezterm.config_builder()


-- Session management.
config.unix_domains = {
  {
    name = "unix";
  },
}

config.max_fps = 241;

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

math.randomseed(os.time())
local hue = math.random(1, 360);



config.window_background_gradient = {
    colors = {"hsl(1,0%,14.51%)"},
    blend = "Oklab",
    orientation = {
	Radial = {
	    cx = 0.8,
	    cy = 0.8,
	    radius = 1.2,
	}
    },
}


local onedark_dark_bg = "#282c34";

local schemes = {}

-- Rick and Morty
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/1.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*1.372
        width = "550", 
        height = "754.6",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- DEATH STAR
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/2.png",
        },
        vertical_align = "Middle",
        horizontal_align = "Right",
        -- height = width*0,931
        width = "550", 
        height = "512",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- Millennium Falcon
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/3.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*0.53
        width = "550", 
        height = "291.5",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat"
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- PICKLE RICKKK!
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/4.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*1.572
        width = "500", 
        height = "786",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- BB8
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/5.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*1.551
        width = "380", 
        height = "589",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);


-- ArmaHEADon
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/6.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*1.515
        width = "350", 
        height = "550",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- R2
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/7.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*1.5
        width = "380", 
        height = "570",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- R2D2 & C-3PO
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/8.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*1.597
        width = "380", 
        height = "607",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- Rey
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/9.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*1.30
        width = "550", 
        height = "715",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- Kylo Ren
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/10.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*1.116
        width = "550", 
        height = "613.8",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- Mooncake
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/11.png",
        },
        vertical_align = "Middle",
        horizontal_align = "Right",
        -- height = width*1.056
        width = "500", 
        height = "528",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

-- Avocato
table.insert(
  schemes,
  {
    background = {
        source = {
            File = wezterm.config_dir .. "/backgrounds/12.png",
        },
        vertical_align = "Bottom",
        horizontal_align = "Right",
        -- height = width*2.062
        width = "300", 
        height = "618",
        repeat_x = "NoRepeat",
        repeat_y = "NoRepeat",
    },
    window_background_gradient = {
        colors = {onedark_dark_bg},
        blend = "Oklab",
        orientation = {
            Radial = {
                cx = 0.8,
                cy = 0.8,
                radius = 1.2,
            }
        },
    }
  }
);

wezterm.on('update-right-status', function(window, pane)
  window:set_right_status(window:active_workspace())
end)

config.enable_tab_bar = true;
-- config.use_fancy_tab_bar = false;
local MOD_TMUX_PROFILE = 'LEADER';
local MOD_WEZ_PROFILE = 'CMD';
-- Key bindings; a bit messy but pretty useful.
-- + Some of them link to tmux actions such as navigation. Example: 
--   "CMD+s" links to "<ctrl+a>e" (where ctrl+a is my tmux <leader>), which
--   triggers the seession selector.
-- + Some of the bindings are just shortcuts to nvim actions and they are 
--    hooked to the ones defined via whichkey (see nvim.init). For instance,
--    "CMD+g" links to "<Space>+s+c", which is a whichkey action that fires
--    "CocSearch" command.
-- + There are also some bindings for switching terminal backgrounds
--    (list of images under "backgrounds" directory).
config.leader = { key = 'a', mods = 'CMD', timeout_milliseconds = 1000 }
config.keys = {
  {
    key = 's',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      -- wezterm.action.SendKey { key = 's' },
      wezterm.action.SendKey { key = 'e' },
    },
  },
  {
    key = 'S',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 's' },
      wezterm.action.SendKey { key = '/' },
    },
  },
  {
    key = 's',
    mods = MOD_WEZ_PROFILE,
    action = workspace_switcher.switch_workspace(),
  },
  {
    key = 'S',
    mods = MOD_WEZ_PROFILE,
    action = workspace_switcher.switch_to_prev_workspace(),
  },
  {
    key = 'm',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 'm' },
    },
  },
  {
    key = 'm',
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.TogglePaneZoomState,
  },
  {
    key = 'DownArrow',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 'DownArrow' }
    },
  },
  {
    key = 'DownArrow',
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    key = 'UpArrow',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 'UpArrow' },
    },
  },
  {
    key = 'UpArrow',
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'LeftArrow',
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'k',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 'k' }
    },
  },
  {
    key = '7',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = '/' },
    },
  },
  {
    key = '/',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = '/' },
    },
  },
  {
    key = 'g',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = ' ' },
      wezterm.action.SendKey { key = 's' },
      wezterm.action.SendKey { key = 'c' },
    },
  },
  {
    key = 'g',
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = ' ' },
      wezterm.action.SendKey { key = 's' },
      wezterm.action.SendKey { key = 'c' },
    },
  },
  {
    key = 'e',
    mods = MOD_TMUX_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = ' ' },
      wezterm.action.SendKey { key = 'e' },
      wezterm.action.SendKey { key = 'f' },
    },
  },
  {
    key = 'e',
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = ' ' },
      wezterm.action.SendKey { key = 'e' },
      wezterm.action.SendKey { key = 'f' },
    },
  },
  {
    key = 'b',
    mods = 'CMD',
    action = wezterm.action_callback(function(win, pane)
      wezterm.GLOBAL.scheme_index = wezterm.GLOBAL.scheme_index or 1;
      local background = schemes[wezterm.GLOBAL.scheme_index]
      if wezterm.GLOBAL.scheme_index >= #schemes then
        wezterm.GLOBAL.scheme_index = 1;
      else
        wezterm.GLOBAL.scheme_index = wezterm.GLOBAL.scheme_index + 1;
      end
      win:set_config_overrides {
        background = { background.background, },
        window_background_gradient = background.window_background_gradient,
      }
    end),
  },
  {
    key = "v",
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action{EmitEvent = "save_session"},
      wezterm.action_callback(function(win, pane)
	  win:set_right_status('Session saved')
      end)
    },
  },
  {
    key = "L",
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action{EmitEvent = "load_session"},
      wezterm.action_callback(function(win, pane)
	  win:set_right_status('Session loaded')
      end)
    },
  },
  {
    key = "R",
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action{EmitEvent = "restore_session"},
      wezterm.action_callback(function(win, pane)
	  win:set_right_status('Session restored')
      end)
    },
  },
  {
    key = "c",
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.Multiple {
      wezterm.action_callback(function(win, pane)
	  win:set_right_status('')
      end)
    },
  },
  {
    key = 'w',
    mods = MOD_WEZ_PROFILE,
    action = wezterm.action.PromptInputLine {
      description = wezterm.format {
        { Attribute = { Intensity = 'Bold' } },
        { Foreground = { AnsiColor = 'Fuchsia' } },
        { Text = 'Enter name for new workspace' },
      },
      action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- Or the actual line of text they wrote
        if line then
          window:perform_action(
            wezterm.action.SwitchToWorkspace {
              name = line,
            },
            pane
          )
        end
      end),
    },
  },
  {
    key = 'LeftArrow',
    mods = 'ALT',
    action = wezterm.action.SplitPane {
      direction = 'Left',
      -- command = { args = { 'top' } },
      size = { Percent = 50 },
    },
  },
  {
    key = 'RightArrow',
    mods = 'ALT',
    action = wezterm.action.SplitPane {
      direction = 'Right',
      -- command = { args = { 'top' } },
      size = { Percent = 50 },
    },
  },
  {
    key = 'DownArrow',
    mods = 'ALT',
    action = wezterm.action.SplitPane {
      direction = 'Down',
      -- command = { args = { 'top' } },
      size = { Percent = 50 },
    },
  },
  {
    key = 'UpArrow',
    mods = 'ALT',
    action = wezterm.action.SplitPane {
      direction = 'Up',
      -- command = { args = { 'top' } },
      size = { Percent = 50 },
    },
  },
}

workspace_switcher.apply_to_config(config)

return config

