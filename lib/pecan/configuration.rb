require 'yaml'

class Configuration
  CONFIG_DIR = '.pecan'
  CONFIG_FILE_NAME = 'config.yaml'

  def initialize
    createConfigDirectory
  end

  def configFile
    "#{CONFIG_DIR}/#{CONFIG_FILE_NAME}"
  end

  def createConfigDirectory
    if Dir.exists? CONFIG_DIR
      return
    end

    Dir.mkdir CONFIG_DIR
  end

  def set(name, value)
    config = {}

    if File.exists? configFile
      config = YAML.load_file(configFile)
    end

    config[name] = value
    File.write(configFile, config.to_yaml)
  end
end
