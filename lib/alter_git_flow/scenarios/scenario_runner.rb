require 'active_support/core_ext/string'

module AlterGitFlow::Scenarios
  class ScenarioRunner

    attr_reader :parser

    def initialize(parser)
      @parser = parser
    end

    def execute(command_runner)
      command_runner.run(instantiate_scenario.commands)
    end

    private

    def instantiate_scenario
      scenario_class.constantize.new(parser.arguments)
    end

    def scenario_class
      "#{parser.scenario.to_s.classify}Scenario"
    end

  end
end