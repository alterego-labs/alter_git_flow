require 'spec_helper'
require 'alter_git_flow/cli'

describe AlterGitFlow::Cli do

  subject { AlterGitFlow::Cli.new }

  describe "#run" do

    describe "when command executed success" do

      it "is nothing to return" do
        subject.stub(:good_run).and_return(true)
        expect(subject).to receive(:exit).exactly(0).times
        subject.run
      end

    end

    describe "when command failed" do

      it "is exiting with status 1" do
        subject.stub(:good_run).and_return(false)
        expect(subject).to receive(:exit).with(1).exactly(1).times
        subject.run
      end

    end

  end

end