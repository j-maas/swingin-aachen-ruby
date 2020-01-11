# Getting started
## Prerequisites
Ensure your machine has all of the following installed.

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)

  > On Windows, use [RubyInstaller](https://rubyinstaller.org/). 
                                                                
- [SQLite](https://sqlite.org/index.html)
  > If on Windows Ruby does not find SQLite3, follow the instructions in [RubyIntaller's README](https://github.com/oneclick/rubyinstaller2#install-gems-with-c-extensions-and-additional-library-dependencies): Install it on MSYS2 with `ridk exec pacman -S mingw-w64-x86_64-sqlite3`.
- [Node.js](https://nodejs.org/)
- [Yarn](https://yarnpkg.com/)

## Installation
1. `bundle install` (Installs gem dependencies.)
2. `rails yarn:install` (Installs Node.js dependencies.)
3. `rails db:setup` (Creates the database, runs the migrations, and initializes it with seed data.)

## Running
You can start a development server with
```
rails server
```
Whenever you make changes to the code, simply reload the page to see the changes.

## Testing
```
rails test
```
will run all available tests.