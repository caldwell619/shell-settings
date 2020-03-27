echo "Skynet is active"

# Template to color something: 
# printf "$BIRed$( echo hello there )$Color_Off"

alias docker-run-postgres='docker run --rm --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data  postgres'

##################################### 
############   AWS    ############### 
##################################### 

# Start local DynamoDB
alias dynamo-start="docker run -p 8000:8000 amazon/dynamodb-local"

# View local tables
alias dynamo-local-tables="aws dynamodb list-tables --endpoint-url http://localhost:8000"

##################################### 
###########   GIT       ############# 
##################################### 

# shortcuts
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gr="git remote -v"
alias gb="git branch -v"
alias gf="git fetch"

function gp
    git push origin (git rev-parse --abbrev-ref HEAD)
end

alias auth="chmod +x"

##################################### 
###########  Python #################
##################################### 

alias python="python3"
alias py="python3"
alias pip="pip3"


##################################### 
##########   Babel       ############
##################################### 

function webpack_config
    npm install --save-dev \
        webpack \
        @babel/core \
        @babel/preset-env \
        babel-loader \
        babel-polyfill \
        webpack-cli \
        @babel/preset-stage-0
end

# Check browser compatibility
alias browser="npx browserslist"

##################################### 
########   Navigating       #########
##################################### 

# creates a folder, then goes into it
function goto
    mkdir $1 && cd $1
end

function cd
    if [ -z "$argv" ]; # No arguments
            cd ~
    else
        builtin cd "$argv" && ls
    end
end

##################################### 
########   Development       ########
##################################### 

# Vue
alias add-tests="vue add @vue/cli-plugin-unit-jest"
alias v-rollup="npx vue-sfc-rollup"
alias bootrap-vue-dependencies="npm i -D pug pug-plain-loader sass sass-loader"
# React
alias cra="npx create-react-app"


##################################### 
########    Docker          #########
#####################################


alias docker:vue='docker container run -it -p 8080:8080 -p 35729:35729 -v (pwd):/app docker:vue bash'


##################################### 
########      Util          #########
##################################### 

# Move markdown to docx
function convert_docx
    pandoc -o output.docx -f markdown -t docx $1.md
end

# Edit Bash
alias edit-bash='code ~/Code/bash-settings/.bash_profile'

# Refresh Bash
alias `refresh` = `source ~/.bash_profile`

# Zipping
function zip_del
    zip -m $1 $argv
end

function zip_update
    zip -u -m $1 $2
end

# Curl
function jcurl
    curl "$argv" | json | pygmentize -l json
end