$TESTING=true
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

Dir[File.dirname(__FILE__) + "spec/support/**/*.rb"].each {|f| require f}