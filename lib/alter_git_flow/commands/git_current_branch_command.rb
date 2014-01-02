module AlterGitFlow::Commands
  class GitCurrentBranchCommand < BasicCommand

    def pattern
      "rev-parse --abbrev-ref HEAD"
    end

    def arguments
      {}
    end

  end
end