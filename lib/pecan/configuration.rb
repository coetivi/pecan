require 'yaml'

class Configuration
  CONFIG_DIR = '.pecan'
  CONFIG_FILE_NAME = 'config.yaml'

  def initialize
    create_config_directory
  end

  def config_file
    "#{CONFIG_DIR}/#{CONFIG_FILE_NAME}"
  end

  def create_config_directory
    if Dir.exists?(CONFIG_DIR)
      return
    end

    Dir.mkdir(CONFIG_DIR)
  end

  def set(name, value)
    config = {}

    if File.exists?(config_file)
      config = YAML.load_file(config_file)
    end

    config[name] = value
    File.write(config_file, config.to_yaml)
  end
end
