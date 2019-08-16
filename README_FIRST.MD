# Template repository for Node.js development in a Docker container

## Variables

- `__PROJECT_NAME__`
- `__PROJECT_DESCRIPTION__`
- `__AUTHOR_NAME__`
- `__GIT_HOST__`
- `__GIT_USER__`
- `__YEAR__`

## Container directory structure

- `/home/node/`
    - `app/`
        - `source/`
            - **/*
        - `package.json`
        - `package-lock.json`
    - `root/`
        - `ash.sh`
        - `package.json -> ../root/package.json`
        - `package-lock.json -> ../root/package-lock.json`

## Usage

    $ docker-compose up -d
    $ docker-compose exec app sh
    
### Commands
    
- `add`
- `remove`
- `update`
- `lint`
- `test`
