require 'jar_dependencies'
require_jar('org.logstash.inputs', 'logstash-input-kafka', ::File.read(::File.join(::File.dirname(__FILE__), '../version')).split("\n").first)
