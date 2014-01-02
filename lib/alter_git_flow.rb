require "alter_git_flow/version"
require "alter_git_flow/constants"
require 'alter_git_flow/commands/basic_command_runner'
require 'alter_git_flow/commands/cocaine_command_runner'
require 'alter_git_flow/commands/fake_command_runner'
require 'alter_git_flow/commands/basic_command'
require 'alter_git_flow/commands/git_current_branch_command'
require 'alter_git_flow/scenarios/basic_scenario'
require 'alter_git_flow/scenarios/scenario_runner'

require 'pry-nav'
require 'cocaine'

module AlterGitFlow

  autoload :Config,              'alter_git_flow/config'
  autoload :Cli,                 'alter_git_flow/cli'
  autoload :ParamsParser,        'alter_git_flow/params_parser'

  def self.config(&block)
    @config ||= ::AlterGitFlow::Config.new
    block_given? ? yield(@config) : @config
  end

end

AlterGitFlow.config do |config|
  config.command_runner = AlterGitFlow::Commands::CocaineCommandRunner
end