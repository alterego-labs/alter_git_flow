require 'spec_helper'
require 'alter_git_flow/scenarios/scenario_runner'

describe AlterGitFlow::Scenarios::ScenarioRunner do

  let(:runner) { double(:runner) }
  let(:scenario) { double(:scenario, commands: [double]) }

  subject { AlterGitFlow::Scenarios::ScenarioRunner }

  describe "#execute" do

    it "is call runner's run with commands" do
      expect(runner).to receive(:run).with(scenario.commands).exactly(1).times
      subject.execute scenario, runner
    end

  end

end