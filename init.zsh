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
