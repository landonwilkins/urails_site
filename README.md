The future Urails website!

![Screenshot](http://i.imgur.com/1uy69.png)

# Installation
This is a simple rails app, and to get it running, I recommend following this proceedure

1. Git clone the app to a directory you want, and navigate to said directory
2. `bundle install` to get the dependencies
3. `rake db:setup` to get the databases set up and populated
4. `rake db:migrate` as a precaution
5. `rails server`

# Testing
I recommend running guard as you code, as it gives you live feedback on your code and how many tests it passes.

It is installed as a part of the bundle, so all you ahve to do to run it is:
1. `bundle exec guard`

Its that simple
