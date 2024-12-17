-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.max_fps = 240;

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

math.randomseed(os.time())
local hue = math.random(1, 360);



config.window_background_gradient = {
    colors = {"hsl(0,0%,14.51%)"},
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
        vertical_align = "Bottom",
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
config.keys = {
  {
    key = 's',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      -- wezterm.action.SendKey { key = 's' },
      wezterm.action.SendKey { key = 'e' },
    },
  },
  {
    key = 'S',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 's' },
      wezterm.action.SendKey { key = '/' },
    },
  },
  {
    key = 'm',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 'm' },
    },
  },
  {
    key = 'DownArrow',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 'DownArrow' }
    },
  },
  {
    key = 'UpArrow',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 'UpArrow' },
    },
  },
  {
    key = 'k',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = 'k' }
    },
  },
  {
    key = '7',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = '/' },
    },
  },
  {
    key = '/',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
      wezterm.action.SendKey { key = '/' },
    },
  },
  {
    key = 'g',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey { key = ' ' },
      wezterm.action.SendKey { key = 's' },
      wezterm.action.SendKey { key = 'c' },
    },
  },
  {
    key = 'e',
    mods = 'CMD',
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
}

return config
