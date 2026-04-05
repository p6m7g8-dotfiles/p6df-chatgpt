# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::chatgpt::deps()
#
#>
######################################################################
p6df::modules::chatgpt::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-openai
  )
}

######################################################################
#<
#
# Function: p6df::modules::chatgpt::vscodes()
#
#>
######################################################################
p6df::modules::chatgpt::vscodes() {

  p6df::modules::vscode::extension::install openai.chatgpt

  p6_return_void
}

######################################################################
#<
#
# Function: words chatgpt = p6df::modules::chatgpt::profile::mod()
#
#  Returns:
#	words - chatgpt
#
#  Environment:	 OPENAI_API_KEY
#>
######################################################################
p6df::modules::chatgpt::profile::mod() {

  p6_return_words 'chatgpt' '$OPENAI_API_KEY'
}
