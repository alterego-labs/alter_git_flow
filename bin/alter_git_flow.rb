#!/usr/bin/env ruby

# resolve bin path, ignoring symlinks
require "pathname"
bin_file = Pathname.new(__FILE__).realpath

# add self to libpath
$:.unshift File.expand_path("../../lib", bin_file)

require 'alter_git_flow'
AlterGitFlow::Cli.new.run( ARGV, ENV )