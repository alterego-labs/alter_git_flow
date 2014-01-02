require 'spec_helper'
require 'alter_git_flow/config'
require 'support/it_has_attribute'

describe AlterGitFlow::Config do

  subject { AlterGitFlow::Config.new }

  include_examples "attribute", 'command_runner'

end