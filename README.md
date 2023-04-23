# Warden Sinatra example

An example of how to use Warden to create a username/password authentication in a Sinatra website. You can find the origin blog article here (in French) :

![Warden Sinatra](README.png)

## How shall I run the app?
You must have a functional Ruby installation.

```
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec ruby app.rb
```

And then you can try and login with user `admin` and password `admin` :)


## Problems?
Ensure that there is no environment variable called `DATABASE_URL`.
```shell
$ unset DATABASE_URL
```

Ensure that the following commands are shown:
```shell
$ bundle exec rake -T
rake db:create              # Creates the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:create:all to create all databases in the config). Without RAILS_ENV or when RAILS_ENV is dev...
rake db:create_migration    # Create a migration (parameters: NAME, VERSION)
rake db:drop                # Drops the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:drop:all to drop all databases in the config). Without RAILS_ENV or when RAILS_ENV is developme...
rake db:encryption:init     # Generate a set of keys for configuring Active Record encryption in a given environment
rake db:environment:set     # Set the environment value for the database
rake db:fixtures:load       # Loads fixtures into the current environment's database
rake db:migrate             # Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)
rake db:migrate:down        # Runs the "down" for a given migration VERSION
rake db:migrate:redo        # Rolls back the database one migration and re-migrates up (options: STEP=x, VERSION=x)
rake db:migrate:status      # Display status of migrations
rake db:migrate:up          # Runs the "up" for a given migration VERSION
rake db:prepare             # Runs setup if database does not exist, or runs migrations if it does
rake db:reset               # Drops and recreates all databases from their schema for the current environment and loads the seeds
rake db:rollback            # Rolls the schema back to the previous version (specify steps w/ STEP=n)
rake db:schema:cache:clear  # Clears a db/schema_cache.yml file
rake db:schema:cache:dump   # Creates a db/schema_cache.yml file
rake db:schema:dump         # Creates a database schema file (either db/schema.rb or db/structure.sql, depending on `ENV['SCHEMA_FORMAT']` or `config.active_record.schema_format`)
rake db:schema:load         # Loads a database schema file (either db/schema.rb or db/structure.sql, depending on `ENV['SCHEMA_FORMAT']` or `config.active_record.schema_format`) into the database
rake db:seed                # Loads the seed data from db/seeds.rb
rake db:seed:replant        # Truncates tables of each database for current environment and loads the seeds
rake db:setup               # Creates all databases, loads all schemas, and initializes with the seed data (use db:reset to also drop all databases first)
rake db:version             # Retrieves the current schema version number
```
