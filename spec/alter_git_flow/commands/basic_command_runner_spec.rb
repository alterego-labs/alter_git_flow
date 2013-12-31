require 'spec_helper'
require 'alter_git_flow/commands/basic_command_runner'

describe AlterGitFlow::Commands::BasicCommandRunner do

  subject { AlterGitFlow::Commands::BasicCommandRunner.new }

  describe "#run" do

    let(:commands) { [double, double, double] }

    it "is call exec_command for each command" do
      expect(subject).to receive(:exec_command).exactly(commands.count).times
      subject.run commands
    end

  end

  describe "#exec_command" do

    it "is raise error" do
      expect{ subject.send(:exec_command, nil) }.to raise_error
    end

  end

end