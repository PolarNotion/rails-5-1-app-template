Rails.application.config do |config|
  config.generators do |g|
    g.assets          false
    g.helper          false
    g.jbuilder        false
    g.stylesheets     false
    g.test_framework :rspec
  end
end