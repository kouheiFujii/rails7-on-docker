# Rails 7 on Docker application
This application is demonstration Rails 7 with mysql, all runninng Docker.

# Setup
```bash
$ docker-compose build

$ docker-compose up -d mysql

$ docker-compose run --rm web rails db:create

$ docker-compose up web
```

# Test
```bash
$ docker-compose run --rm web bundle exec rspec
```

# Lint
```bash
$ docker-compose run --rm web bundle exec rubocop
```
