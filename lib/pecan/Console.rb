require 'open3'

module Console
  def Console.terminate(message, code)
    puts message
    exit code
  end

  def Console.sh(command)
    output, status = Open3.capture2e(command)
    status.success?
  end
end
