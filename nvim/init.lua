if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_cursor_vfx_particle_phase = 1.2
  -- vim.o.guifont = "JetBrainsMono Nerd Font:h10"
  vim.o.guifont = "SauceCodePro Nerd Font:h10"
  vim.g.neovide_floating_shadow = false

  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  -- vim.g.neovide_floating_shadow = true
  -- vim.g.neovide_floaring_z_height = 10
  -- vim.g.neovide_light_angle_degrees = 45
  -- vim.g.neovide_light_radius = 5

  -- vim.g.neovide_transparency = 0.99
  vim.g.neovide_transparency = 0.96
  vim.g.transparency = 0.8
  vim.g.neovide_window_blurred = true
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 10
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 5

  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_underline_stroke_scale = 1.0

  vim.g.neovide_no_idle = false

  vim.g.neovide_confirm_quit = true

  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_animate_in_insert_mode = true

  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_smooth_blink = true

  vim.g.neovide_cursor_vfx_mode = "sonicboom"
end

-- Ignore case
vim.opt.ignorecase = true

-- map jj to <ESC>
require("config.lazy")
