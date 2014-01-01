require 'spec_helper'
require 'alter_git_flow/config'

describe AlterGitFlow::Config do

  subject { AlterGitFlow::Config.new }

  describe "attributes" do

    describe "include command_runner" do

      it "is support reader" do
        subject.should be_respond_to :command_runner
      end

      it "is support setter" do
        subject.should be_respond_to :command_runner=
      end

    end

  end

end