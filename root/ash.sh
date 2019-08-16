unalias ls &>/dev/null

shortlist() {
  ls --color -Al ${1} | tail -n+2
}

_ls() {
  pwd
  shortlist ${1}
}

alias ls="_ls"

update() {
  npm install --loglevel error --no-optional $@
}

add() {
  update $@
}

remove() {
  npm uninstall --loglevel error $@
}

lint() {
  npm -s run lint
}

test() {
  npm -s test
}

qa() {
  lint
  test
}

cyan() {
  echo "\e[36m${1}\e[0m"
}

color() {
  echo "\e[33m${1}\e[0m"
}

CONTAINER="__PROJECT_NAME__"
USER=$(whoami)
ENTRY_POINT=$PWD
NODE_VERSION=$(node --version | sed -r 's/^v//')
NPM_VERSION=$(npm --version)
NPX_VERSION=$(npx --version)
YARN_VERSION=$(yarn --version)

export PS1="$(color ${CONTAINER}) $(cyan €) 

echo -e "Initialized ash shell for the $(color ${CONTAINER}) development container."
echo -e "$(color node): ${NODE_VERSION}"
echo -e " $(color npm): ${NPM_VERSION}"
echo -e " $(color npx): ${NPX_VERSION}"
echo -e "$(color yarn): ${YARN_VERSION}"
echo -e "You are user $(color ${USER}) working in $(color ${ENTRY_POINT})."

echo ""
echo "Checking dependencies..."
update
shortlist

unset -f color
