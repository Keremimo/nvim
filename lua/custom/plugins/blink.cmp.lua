return {
  'saghen/blink.cmp',
  event = 'BufReadPost',
  build = 'nix shell github:nix-community/fenix/monthly#minimal.toolchain -c cargo build --release',
  opts = {
    keymap = {
      preset = 'super-tab',
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },
    },
    appearance = { use_nvim_cmp_as_default = true },
  },
}
