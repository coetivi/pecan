require_relative 'pecan/info'
require_relative 'pecan/configuration'

module PecanController
  @@config = Configuration.new

  def self.repositorySet(repositorySSH)
    @@config.set('repo', repositorySSH)
  end
end
