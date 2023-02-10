require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module TaskApp
  class Application < Rails::Application

    config.load_defaults 6.0

    config.generators do |g|
      g.skip_routes true        #routes.rbの変更されず
      g.helper false            #ヘルパーファイルの生成せず
      g.assets false            #css,JavaScriptファイル生成せず
      g.test_framework :rspec   #testファイル生成せず
      g.controller_specs false  #specs_controller生成せず
      f.view_specs false        #specs_view生成せず
    end
  end
end
