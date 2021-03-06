# mechdb

mechdb is a love letter to the mechanical keyboard community. The goal of this project is to provide a platform to aggregate content created by the community (group buys, builds, etc) into a beautiful and digestible format.

Goals of this project:

* Group buy aggregation
* Knowledge base (work-in-progress)
* A social platform for mechanical keyboard-related discourse (possibly)

## Dependencies

mechdb is built on:

* Ruby version `2.7.2`
* Rails version `~> 6.1.1`

Dependencies are as normal for any recent Rails project.

## Database

The default database for the project is Postgres. To replicate a development environment:

1. Assign a username and password for your development database user
2. Run `rails credentials:edit` to edit your local `credentials.yml.enc` file
3. Add your credentials to the file like this:
```yml
development:
  db_username: YOUR_USERNAME_HERE
  db_password: YOUR_PASSWORD_HERE
```
4. Initialize your database by doing `rails db:create`
5. Migrate the schema with `rails db:migrate`

## Obtaining an Administrative Account

Currently, the app is read-only when you are signed in as a User with the `default` role.
You can obtain full privileges by setting an account to the `admin` role.

1. Create an account like normal (maybe don't use your real info, but I won't stop you)
2. Run `rails console` in the app's root directory
3. *Assuming you are the only User in the database,* run `User.first.admin!` in the interpreter
4. Verify your account has the `admin` role:
```ruby
User.first.admin?
=> true
```

You will also have a green shield beside your name when signed in.

## Tests

Whoops.

## Deployment

The application runs on a Heroku instance maintained by a single person, currently. Please feel free to submit pull requests to this repository. They can and probably will be reflected as updates to the production codebase.