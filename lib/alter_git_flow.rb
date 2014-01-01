require "alter_git_flow/version"
require "alter_git_flow/cli"
require 'alter_git_flow/commands/basic_command_runner'
require 'alter_git_flow/commands/cocaine_command_runner'

require 'pry-nav'
require 'cocaine'

module AlterGitFlow

  autoload :Config,              'alter_git_flow/config'

  def self.config(&block)
    @config ||= ::AlterGitFlow::Config.new
    block_given? ? yield(@config) : @config
  end

end

AlterGitFlow.config do |config|
  config.command_runner = AlterGitFlow::Commands::CocaineCommandRunner
end