# rc
for rc_file in $ZDOTDIR/rc/[0-9][0-9]*; do
  [[ -f $rc_file ]] && source "$rc_file"
done

# aliases
for alias_file in $ZDOTDIR/aliases/[0-9][0-9]*.aliases; do
  source "$alias_file"
done

if [[ -f $ZDOTDIR/.zsh_aliases.local ]]; then
  source $ZDOTDIR/.zsh_aliases.local
fi
