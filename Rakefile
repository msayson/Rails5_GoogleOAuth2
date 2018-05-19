# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will
# automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

if Rails.env.test?
  require 'rubocop/rake_task'

  # RuboCop is a style code scanner for Rails
  # Documentation: https://rubocop.readthedocs.io
  #
  # See .rubocop.yml for project-specific configuration
  RuboCop::RakeTask.new(:rubocop)

  # Brakeman is a security code scanner for Rails
  # Documentation: https://brakemanscanner.org
  task :brakeman do
    # Brakeman parameters used:
    # -z  Exit with error code if warnings found
    # -5  Force Rails 5 mode
    # -q  Quiet mode, suppress informational messages
    sh 'brakeman -z -5 -q'
  end

  # Run Rubocop and Brakeman before tests
  task spec: %i[rubocop brakeman]
end
