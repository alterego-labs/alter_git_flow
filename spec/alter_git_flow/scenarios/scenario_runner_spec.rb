require 'spec_helper'
require 'alter_git_flow/scenarios/basic_scenario'
require 'alter_git_flow/scenarios/scenario_runner'

class SomeScenario < AlterGitFlow::Scenarios::BasicScenario

  private

    def init_commands;end

end

describe AlterGitFlow::Scenarios::ScenarioRunner do

  let(:parser) { double(:parser, scenario: :some, arguments: [double]) }
  let(:runner) { double(:runner) }
  let(:scenario) { double(:scenario, commands: [double]) }

  subject { AlterGitFlow::Scenarios::ScenarioRunner.new(parser) }

  describe "#execute" do

    it "is call runner's run with commands" do
      runner.should_receive(:run).with(scenario.commands)
      subject.should_receive(:instantiate_scenario).and_return(scenario)
      subject.execute runner
    end

  end

  describe "#instantiate_scenario" do

    it "is instantiate scenario class by parsed argument" do
      subject.should_receive(:scenario_class).and_return 'SomeScenario'
      expect(SomeScenario).to receive(:new).with(parser.arguments)
      subject.send :instantiate_scenario
    end

  end

  describe "#scenario_class" do

    it "is return scenario class name by parsed argument" do
      subject.send(:scenario_class).should eq "SomeScenario"
    end

  end

end