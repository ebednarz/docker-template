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
        - `node_modules/`
            - `**/*`
        - `source/` (mounted volume, under version control on the host)
            - `**/*`
        - `package.json -> ../root/package.json`
        - `package-lock.json -> ../root/package-lock.json`
    - `root/` (mounted volume, under version control on the host)
        - `ash.sh`
        - `package.json`
        - `package-lock.json`

## Usage

    $ docker-compose up -d
    $ docker-compose exec app sh
    
### Commands
    
- `add`
- `remove`
- `update`
- `lint`
- `test`
