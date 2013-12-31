require 'spec_helper'
require 'alter_git_flow/commands/basic_command'

describe AlterGitFlow::Commands::BasicCommand do

  subject { AlterGitFlow::Commands::BasicCommand.new }

  its(:name) { should eq "git" }

  context "required override methods" do

    describe "#pattern" do
      it "is raise error" do
        expect{subject.pattern}.to raise_error
      end
    end

    describe "#pattern" do
      it "is raise error" do
        expect{subject.arguments}.to raise_error
      end
    end

  end

end