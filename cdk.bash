_cdk()
{
  local cur prev opts
  _get_comp_words_by_ref -n : cur prev
  opts="list synthesize bootstrap deploy destroy diff metadata init context docs doctor"

  COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
}
complete -F _cdk cdk
