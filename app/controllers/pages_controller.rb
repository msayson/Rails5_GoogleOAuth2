# Controller for static web pages
class PagesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper

  before_action :load_readme, only: [:about]

  def index
    @title = 'Home'
  end

  def about
    @text = sanitize(@readme_markdown)
  end

  private

  def load_readme
    readme_contents = File.read('README.md')
    @readme_markdown = text_to_markdown(readme_contents)
  end

  def text_to_markdown(text)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      disable_indented_code_blocks: true, # four spaces != code block
      fenced_code_blocks: true, # read triple-backtick blocks as code
      hard_wrap: true,          # print newlines within paragraphs
      no_intra_emphasis: true   # don't parse HTML emphasis within words
    )
    markdown.render(text)
  end
end
