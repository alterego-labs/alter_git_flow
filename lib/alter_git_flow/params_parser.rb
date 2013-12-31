module AlterGitFlow
  class ParamsParser

    attr_reader :scenario, :arguments

    def initialize(argv = [])
      @argv = argv
      parse if valid?
    end

    def valid?
      @argv.any?
    end

    private

    def parse
      @scenario = @argv.shift
      @arguments = @argv
    end

  end
end