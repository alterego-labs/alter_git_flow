module AlterGitFlow::Scenarios
  class BasicScenario

    attr_reader :commands

    def initialize(arguments = [])
      @args = arguments
      init_commands
    end

    private

    def init_commands
      raise "You must set commands for scenario!"
    end

  end
end