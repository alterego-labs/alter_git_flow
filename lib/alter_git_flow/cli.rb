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
      true
    end

    def parser(argv = [])
      @_parser ||= ParamsParser.new argv
    end

  end
end