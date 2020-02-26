#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

on_start() {

  print_node_header

  print_info "This script will guide you through installing NPM config, global packages..etc"
  print_info "It will not install anything without your direct agreement!"

  ask_for_confirmation "Do you want to proceed with installation?"

  if ! answer_is_yes; then
    exit 1
  fi

}

configure_npm() {
  # Ask required parameters
  print_info "NPM Configuration\n"

  local name=""
  local email=""

  ask "What is your name: " && printf "\n"
  name="$(get_answer)"

  ask "What is your email: " && printf "\n"
  email="$(get_answer)"

  print_success "Author name set as: $name \n"
  npm set init.author.name "$name"

  print_success "\n Author email set as: $email \n"
  npm set init.author.email "$email"

  finish
}

install_global_packages() {
	print_info "Installing NPM global packages"

	NPM_PACKAGES=(
	"bash-language-server"
	"dockerfile-language-server-nodejs"
	"netlify-cli"
	"now"
	"parker"
	"prettier"
	"serve"
	"source-map-explorer"
	"svgo"
	"overtime-cli"
	"dependency-cruiser"
	"npkill"
	"expo-cli"
	"nodemon"
  "gatsby-cli"
	)

	yarn global add "${NPM_PACKAGES[@]}"
	unset -v NPM_PACKAGES

  finish
}


main() {
  on_start
  configure_npm
  install_global_packages

  print_success "\n Done with NPM global packages and Configuration \n\n"
}

main
