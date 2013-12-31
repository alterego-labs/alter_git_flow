require 'spec_helper'
require 'alter_git_flow/params_parser'

describe AlterGitFlow::ParamsParser do

  describe "when passing valid command line arguments" do

    let(:argv) { ["scenario", "argument"] }

    it "is call parse in initialize" do
      expect_any_instance_of(AlterGitFlow::ParamsParser).to receive(:parse)
      parser = AlterGitFlow::ParamsParser.new(argv)
    end

    context "attributes" do

      subject { AlterGitFlow::ParamsParser.new(argv) }

      it { should be_valid }

      its(:scenario) { should eq argv.first }

      its(:arguments) { should eq ["argument"] }

    end

  end

end