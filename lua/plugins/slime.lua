return {
  "jpalardy/vim-slime",
  config = function()
    vim.cmd(
      [[
        let g:slime_target = "tmux"
        let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
        let g:slime_preserve_curpos = 0
      ]]
    )
  end,
}
