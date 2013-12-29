module AlterGitFlow::Scenarios
  class ScenarioRunner

    def self.execute(scenario, command_runner)
      command_runner.run(scenario.commands)
    end

  end
end