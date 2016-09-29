# Silverback: A responsive theme for middleman-blog

Silverback is a theme built for [middleman-blog][] which in turn runs on the
[Middleman][] static site generator. As you would expect in this day and age, it's
responsive and relatively lightweight with 10KB of CSS and no JS. A live demo
can be seen here: http://elliotekj.com.

![Screenshot][]

## Installation

1. If you don't already have Middleman installed, do so ([official docs][]):

```
$ gem install middleman
```

2. Now `cd` into the parent directory of your new project and run:

```
$ middleman init MY_PROJECT_FOLDER -T elliotekj/middleman-silverback
```

You'll be asked whether or not you want to use LiveReload. I would highly
recommend doing so.

You're good to go.

## Usage

If you have never used Middleman before then [this page][] will get you started.
Briefly put, `cd` into the directory the Middleman command we ran above just created
then run:

```
$ bundle exec middleman serve
```

That will get you running on localhost. To generate all of the static pages,
run:

```
$ bundle exec middleman build
```

## Configuration

Silverback comes with a number of options, all of which are configurable and
documented within `config.rb`. Here's a rundown of them:

- `url`: The full URL to your site (used in the RSS feed and sitemap)
- `title`: Your blog's title (used in the title meta and in the header)
- `subtitle`: Your blog's subtitle (used in the description meta and in the
  header)
- `home_url`: The URL linked to in the header (leave as-is unless your site
  isn't at the root of your domain)
- `avatar_url`: The path to the image you want to use in the header
- `sidebar_show_description`: Show or hide the description in the sidebar (BOOL)
- `sidebar_description_prefix`: Optionally prefix your description with a
  character
- `description`: The description shown in the sidebar
- `sidebar_show_articles`: Show or hide the articles list in the sidebar (BOOL)
- `sidebar_articles_prefix`: Optionally prefix the articles list with a
  character
- `sidebar_show_archives`: Show or hide the archive links in the sidebar (BOOL)
- `sidebar_archives_prefix`: Optionally prefix the archive links with a
  character
- `author`: Your name (used in the post meta)
- `read_more_text`: The text you want in the read more buttons
- `pagination_next_text`: The text you want for the next page pagination link
- `pagination_prev_text`: The text you want for the previous page pagination link
- `footer_text`: The text you want to show in the footer

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Make sure `scss_lint` and `rubocop` pass
5. Push to the branch (`git push origin my-new-feature`)
6. Create new [pull request][]

## License

Silverback is released under the MIT [`LICENSE`][].

## About

Silverback is made by Elliot Jackson.

- Blog: http://elliotekj.com
- Other repos: https://github.com/elliotekj
- Email: [username] [at] elliotekj.com

[Screenshot]: https://github.com/elliotekj/middleman-silverback/blob/master/screenshot.png
[Middleman]: https://github.com/middleman/middleman
[middleman-blog]: https://github.com/middleman/middleman-blog
[official docs]: https://middlemanapp.com/basics/install/
[this page]: https://middlemanapp.com/basics/development_cycle/
[pull request]: https://github.com/elliotekj/middleman-silverback/pull/new/master
[`LICENSE`]: https://github.com/elliotekj/middleman-silverback/blob/master/LICENSE
