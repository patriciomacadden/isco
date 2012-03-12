# ISCO

This application holds the contents for the [International Standard Classification of Occupations](http://www.ilo.org/public/english/bureau/stat/isco/index.htm).

## Purpose

The purpose of this application is to provide the contents of the ISCO in a SQL file, both in English and Spanish languages (currently in Spanish only). Feel free to send a pull request with new languages and/or corrections.

## Current languages

* Spanish

## What's inside of this application?

### Database ready for use

Just run `rake db:migrate`.

### Browser

You can use this application for browsing through groups.

### API

Using the browser, just append `.json` to the url and it will return the data as json.

## Quick start

```
$ bundle
```

```
$ rake db:create
```

```
$ rake db:migrate
```

```
$ rails s
```

Now, you can use `http://localhost:3000` to browse the ISCO.

## Contributing

If you find a bug, want to improve the project, add more translations, or anything please send a pull request:

1. Fork it.
2. Create a branch (`git checkout -b my_awesome_branch`)
3. Commit your changes (`git commit -am "Added some magic"`)
4. Push to the branch (`git push origin my_awesome_branch`)
5. Create an ussue with a link to your branch
