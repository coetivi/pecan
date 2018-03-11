require_relative 'pecan/info'
require_relative 'pecan/configuration'

module PecanController
  @@config = Configuration.new

  def self.set_repository(repository_ssh)
    @@config.set('repo', repository_ssh)
  end
end
