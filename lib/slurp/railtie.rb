require 'slurp'
require 'rails'

module Slurp
  class Railtie < Rails::Railtie

    if ENV['SLURP'] == '1'
      config.before_initialize do
        load File.join(File.dirname(__FILE__), 'configuration_extension.rb')
      end

      config.after_initialize do
        if Rails.configuration.database_configuration[Rails.env]['database'] == ':memory:'
          load "#{Rails.root}/db/schema.rb"
        end
      end
    end

  end
end
