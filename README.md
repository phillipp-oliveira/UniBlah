##Staging
[http://uniblah-staging.herokuapp.com](http://uniblah-staging.herokuapp.com)


##Versions

Ruby -> 2.4.1

Rails -> 5.0.1

PostgreSQL -> 9.5.6


## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, create and migrate the database:

```
$ rails db:setup
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

Happy Codding!


## License
MIT License