module AlterGitFlow::Commands
  class BasicCommandRunner

    def run(commands)
      commands.each { |c| exec_command(c) }
    end

    private

    def exec_command(command)
      raise "You must implement executing command method!"
    end

  end
end