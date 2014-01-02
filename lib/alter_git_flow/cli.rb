module AlterGitFlow
  class Cli

    def run( argv = ARGV, env = ENV )
      exit 1 unless good_run( argv, env )
    end

    private

    def good_run(argv, env)
      parser(argv).valid? ? scenario_run : false
    end

    def scenario_run
      AlterGitFlow::Scenarios::ScenarioRunner.new(parser).tap do |runner|
        runner.execute instantiate_command_runner
      end
    end

    def instantiate_command_runner
      AlterGitFlow.config.command_runner.new
    end

    def parser(argv = [])
      @_parser ||= ParamsParser.new argv
    end

  end
end