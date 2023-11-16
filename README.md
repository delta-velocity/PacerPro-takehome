# README

Sorry in advance if I don't know the exact steps to get the program to run!

To start the server locally:
```
bundle install
bin/rails server
```

`127.0.0.1:3000` is the local address to access the server using a browser. The homepage by default shows a list of all items in the database. `127.0.0.1:3000/tests` shows all non-deleted items.

You can run `bundle exec rspec spec/item_spec.rb` to run the RSpec tests for the Item model, with the tests stored in `spec/`.

## Soft Delete
The `soft_delete` method sets the `deleted_at` attribute to the current time, using `Time.now`. It also updates the database in the same method. `restore` does the opposite, setting the value to `nil`, also updating the database.

## Database

I don't know if my testing values were added with Git, so, just in case, you can add your own values by running:
```bin/rails console```
to access the Ruby on Rails interactive console from a Unix command line. From there you can run:
```Item.new(name: "name of your item here").save```
to generate and add a new item to the database.

To retrieve an item, run:
```Item.unscoped.all```
to get a list of all items, including deleted items. Pick any `id` and run:
```item_x = Item.unscoped.find(ID)```
to store a value from the database in the `item_x` variable. You can then call `item_x.soft_delete` to delete the file or `item_x.restore` to restore the file. `item_x.deleted` returns `true` if the file has a deleted timestamp.