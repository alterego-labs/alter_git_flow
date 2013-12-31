require 'spec_helper'
require 'alter_git_flow/params_parser'

describe AlterGitFlow::ParamsParser do

  let(:argv) { ["scenario", "argument"] }

  before :each do
    stub_const('AlterGitFlow::VALID_SCENARIOS', [:scenario])
  end

  it "is call parse in initialize" do
    expect_any_instance_of(AlterGitFlow::ParamsParser).to receive(:parse)
    parser = AlterGitFlow::ParamsParser.new(argv)
  end

  describe "when passing valid command line arguments" do

    let(:valid_scenario) { "scenario" }
    let(:valid_arguments) { ["argument"] }

    subject { AlterGitFlow::ParamsParser.new(argv) }

    it { should be_valid }

    its(:scenario) { should eq valid_scenario }

    its(:arguments) { should eq valid_arguments }

  end

  describe "when argv isn't proper" do

    let(:argv) { ["scenario1", "argument"] }

    subject { AlterGitFlow::ParamsParser.new(argv) }

    it { should_not be_valid }

  end

end