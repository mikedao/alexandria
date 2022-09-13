source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "faraday"
gem "bcrypt"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "pry"
  gem "rspec-rails"
  gem "capybara"
  gem "launchy"
  gem "shoulda-matchers"
end

group :development do
  gem "web-console"
end

