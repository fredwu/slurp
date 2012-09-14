module Rails
  class Application
    class Configuration
      def database_configuration
        db_config = File.join(File.dirname(__FILE__), '..', '..', 'config', 'database.yml')
        YAML::load(ERB.new(IO.read(db_config)).result)
      end
    end
  end
end
