module AlterGitFlow::Commands
  class CocaineCommandRunner < BasicCommandRunner

    private

    def exec_command(command)
      prepare_cocaine_for(command).run
    end

    def prepare_cocaine_for(command)
      Cocaine::CommandLine.new(command.name, command.pattern, expected_outcodes: [0, 1]).tap do |c|
        c.command(command.arguments)
      end
    end

  end
end