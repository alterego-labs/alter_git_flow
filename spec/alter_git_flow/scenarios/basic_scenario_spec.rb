require 'spec_helper'
require 'alter_git_flow/scenarios/basic_scenario'

describe AlterGitFlow::Scenarios::BasicScenario do

  subject { AlterGitFlow::Scenarios::BasicScenario.new }

  context "attributes" do

    before :each do
      AlterGitFlow::Scenarios::BasicScenario.any_instance.should_receive(:init_commands)
    end

    its(:commands) { should be_nil }

  end

  context "on initialize" do

    it "is call init_commands" do
      expect_any_instance_of(AlterGitFlow::Scenarios::BasicScenario).to receive(:init_commands)
      AlterGitFlow::Scenarios::BasicScenario.new
    end

  end

  describe "#init_commands" do

    it "is raise error" do
      expect{ subject.send(:init_commands) }.to raise_error
    end

  end

end