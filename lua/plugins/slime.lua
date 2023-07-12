return {
  "jpalardy/vim-slime",
  config = function()
    vim.cmd(
      [[
        let g:slime_target = "tmux"
        let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
        let g:slime_preserve_curpos = 0
        let g:slime_no_mappings = 1
        xmap <c-c><c-c> <Plug>SlimeRegionSend <Esc> `>
        nmap <c-c><c-i> <Plug>SlimeParagraphSend
        nmap <c-c><c-c> <Plug>SlimeParagraphSend <Esc> }
        nmap <c-c><v    <Plug>SlimeConfig
      ]]
    )
  end,
}
