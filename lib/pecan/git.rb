require 'pecan/Console'

class Git

  def initialize
    Console.terminate("Error: git command not recognized. Install git to continue.", 1) unless is_git_installed
  end

  def is_git_installed
    Console.sh("git --version")
  end

  def is_repository_valid(repository_ssh)
    Console.sh("git ls-remote #{repository_ssh}")
  end
end
