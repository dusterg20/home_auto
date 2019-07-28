# Home Automation App

This is an application for
[*Controlling Raspberry Pi for Home Automation*]

By Dustin Garrett

## License

All source code in the Repository are property of Dustin Garret and may be
used under the opensource agreement.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
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
