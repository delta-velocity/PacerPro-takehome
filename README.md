# README

Sorry in advance if I don't know the exact steps to get the program to run!

To start the server locally:
```
bundle install
bin/rails server
```

`127.0.0.1:3000` is the local address to access the server using a browser. The homepage by default shows a list of all items in the database. `127.0.0.1:3000/tests` shows all non-deleted items.

You can run `bundle exec rspec spec/item_spec.rb` to run the RSpec tests for the Item model, with the tests stored in `spec/`.