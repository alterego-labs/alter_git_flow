require 'spec_helper'

require 'alter_git_flow'

describe "Failure scenarios" do

  let(:env) { double }

  subject { AlterGitFlow::Cli.new }

  before :each do
    expect(subject).to receive(:exit).with(1)
  end

  describe "when passing no arguments" do

    let(:argv) { [] }

    it "is exiting with status 1" do
      subject.run(argv, env)
    end

  end

  describe "when try to run not exists scenario" do

    let(:argv) { ['scenario'] }

    it "is exiting with status 1" do
      subject.run(argv, env)
    end

  end

end