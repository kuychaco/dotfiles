profiling = false

atom.commands.add 'atom-workspace', {
  'user:toggle-profile': ->
    console.log 'toggle profile'
    if profiling
      console.profileEnd()
      profiling = false
    else
      profiling = true
      console.profile()
}

atom.keymaps.add 'user',
  'atom-workspace': 'ctrl-alt-cmd-r': 'user:toggle-profile'

atom.commands.add 'atom-workspace', {
  'user:profile-save-state': ->
    console.log 'profile save-state'
    console.profile()
    atom.saveState()
    console.profileEnd()
}

atom.keymaps.add 'user',
  'atom-workspace': 'ctrl-alt-cmd-s': 'user:profile-save-state'


# atom.workspace.emitter.on 'did-open', ->
#   if atom.workspace.getActivePane().getPendingItem()
#     atom.commands.dispatch(document.activeElement, 'tree-view:toggle-focus')
