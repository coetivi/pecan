require 'pecan/info'
require 'pecan/configuration'
require 'pecan/git'
require 'pecan/Console'

module PecanController
  @@config = Configuration.new
  @@git = Git.new

  def self.set_repository(repository_ssh)
    Console.terminate("ERROR: Repository not found.", 1) unless @@git.is_repository_valid(repository_ssh)

    @@config.set('repo', repository_ssh)
  end
end
