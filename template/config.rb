# Theme configuration
config[:silverback] = {
  blog: {
    # The full URL to your site (used in the RSS feed and sitemap)
    url: 'http://example.com',
    # Your blog's title (used in the title meta and in the header)
    title: 'Middleman Silverback',
    # Your blog's subtitle (used in the description meta and in the header)
    subtitle: 'All of this copy can be changed in the config.rb file.',
    # The URL linked to in the header (leave as-is unless your site isn't at the
    # root of your domain)
    home_url: '/',
    # The path to the image you want to use in the header
    avatar_url: '/images/avatar.jpg',
    # Options for the description in the sidebar
    sidebar_show_description: true,
    sidebar_description_prefix: '👋',
    description: 'Middleman Silverback is a theme created by Elliot Jackson. You
    can download it and read the docs
    <a href="https://github.com/elliotekj/middleman-silverback">here</a>.',
    # Options for the articles list in the sidebar
    sidebar_show_articles: true,
    sidebar_articles_prefix: '✏️',
    # Options for the archive links in the sidebar
    sidebar_show_archives: true,
    sidebar_archives_prefix: '📂',
    # Your name (used in the post meta)
    author: 'Elliot Jackson',
    # The text you want in the read more buttons
    read_more_text: 'Read the rest...',
    # The text you want for the pagination links
    pagination_next_text: 'Older posts',
    pagination_prev_text: 'Newer posts',
    # The text you want to show in the footer
    footer_text: 'This is some sample footer text.'
  }
}

# Specify layouts
page '/*.html', layout: 'layouts/body'
page '/feed.xml', layout: false

# Markdown configuration
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, footnotes: true, highlight: true,
               link_attributes: { rel: 'nofollow' }, smartypants: true

# Autoprefix the CSS
activate :autoprefixer

# Middleman-blog configuration
activate :blog do |blog|
  blog.sources = 'articles/{year}-{month}-{day}-{title}.html'
  # blog.layout = 'layout'
  blog.summary_separator = /READMORE/
  # blog.summary_length = 250
  # blog.year_link = '{year}.html'
  # blog.month_link = '{year}/{month}.html'
  # blog.day_link = '{year}/{month}/{day}.html'
  # blog.default_extension = '.markdown'

  blog.calendar_template = 'calendar.html'

  # Enable pagination
  blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = 'page/{num}'
end

# Use pretty URLs
activate :directory_indexes

# Middleman-syntax configuration
activate :syntax, line_numbers: true

configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_javascript
end
