require 'spec_helper'
require 'alter_git_flow/cli'
require 'alter_git_flow/params_parser'

describe AlterGitFlow::Cli do

  let(:parser) { double(:parser) }

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

  describe "#good_run" do

    before :each do
      subject.stub(:parser).and_return parser
    end

    describe "when parsing is valid" do

      it "is running scenario" do
        parser.stub(:valid?).and_return true
        expect(subject).to receive(:scenario_run).exactly(1).times
        subject.send(:good_run, nil, nil)
      end

    end

    describe "when parsing is invalid" do

      it "is return false" do
        parser.stub(:valid?).and_return false
        expect(subject).to receive(:scenario_run).exactly(0).times
        subject.send(:good_run, nil, nil).should be_false
      end

    end

  end

  describe "#parser" do

    let(:argv) { double(:argv) }

    describe "when first calling" do

      it "is create new instance of params parser" do
        expect(AlterGitFlow::ParamsParser).to receive(:new).with(argv)
        subject.send(:parser, argv)
      end

    end

    describe "when not first calling" do

      it "is return cached parser object" do
        subject.instance_variable_set(:@_parser, parser)
        expect(AlterGitFlow::ParamsParser).to receive(:new).exactly(0).times
        subject.send(:parser).should eq parser
      end

    end

  end

end