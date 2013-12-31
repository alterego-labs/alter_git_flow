module AlterGitFlow
  class Cli

    def run( argv = ARGV, env = ENV )
      exit 1 unless good_run( argv, env )
    end

    private

    def good_run(argv, env)
      argv.any?
    end

  end
end