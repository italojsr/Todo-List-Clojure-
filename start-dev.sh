#!/bin/bash

# Carrega o nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Usa Node.js 18
nvm use 18

# Inicia o shadow-cljs
npx shadow-cljs watch app
