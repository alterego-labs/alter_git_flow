module AlterGitFlow::Commands
  class FakeCommandRunner

    private

    def exec_command(command)
      "Executing command: #{command.name} #{command.pattern} with params #{command.arguments}"
    end

  end
end