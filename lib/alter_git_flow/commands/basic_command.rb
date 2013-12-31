module AlterGitFlow::Commands
  class BasicCommand

    def name
      "git"
    end

    def pattern
      raise "You must implement pattern method!"
    end

    def arguments
      raise "You must implement arguments method!"
    end

  end
end