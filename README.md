# LlamaApp

This is a skeleton application for a completely clean Rails application using the latest version of Rails (currently 5.0.1) plus all the bits that I always end up using in an App.

* Rails
* HAML / Coffee / SASS
* [Procodile](https://github.com/adamcooke/procodile) - for process management
* [Authie](https://github.com/adamcooke/authie) - for handling user sessions
* [Clockwork]() - for cron tasks

## Getting Started

1. Get the skelton
2. Replace references to `LlamaApp` and `llamaapp` with the name of your application.
3. Start it up `procodile start --dev`

What follows is some example README that can be included in your app.

------

# Your app name here

You can write a description here if you want

## Getting started

1. Clone the application
2. `bundle`
3. Configure `database.yml` for your local database
4. `rake db:create db:schema:load db:seed`
5. `procodile start --dev`
