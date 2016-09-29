require 'thor/group'

module Middleman
  class Generator < ::Thor::Group
    include ::Thor::Actions

    source_root File.expand_path(File.dirname(__FILE__))

    def copy_default_files
      directory 'template', '.', exclude_pattern: /\.DS_Store$/
    end

    def ask_about_livereload
      @use_livereload = yes?('Do you want to use LiveReload?')
    end

    def build_gemfile
      return false unless @use_livereload

      insert_into_file 'Gemfile', "gem 'middleman-livereload'\n", after: "gem 'middleman-blog', '~> 4.0'\n"
      insert_into_file 'config.rb', <<-eos, after: "activate :syntax, line_numbers: true\n"

configure :development do
  activate :livereload
end
eos
    end
  end
end
