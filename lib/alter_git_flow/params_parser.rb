require 'alter_git_flow/constants'

module AlterGitFlow
  class ParamsParser

    attr_reader :scenario, :arguments

    def initialize(argv = [])
      @argv = argv
      parse
    end

    def valid?
      @argv.any? && AlterGitFlow::VALID_SCENARIOS.include?(scenario.to_sym)
    end

    private

    def parse
      @scenario = @argv.shift
      @arguments = @argv
    end

  end
end