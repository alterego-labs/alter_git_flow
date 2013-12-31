module AlterGitFlow::Commands
  class GitCurrentBranchCommand

    def pattern
      "rev-parse --abbrev-ref HEAD"
    end

    def arguments
      ""
    end

  end
end