#!usr/bin/env ruby (~/.rvm/rubies/ruby-1.9.3-p194)

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

ActiveRecord::Base.logger.level = 1 if defined? ActiveRecord::Base

def y(obj)
  puts obj.to_yaml
end

class Object
  def mate(method_name)
    file, line = method(method_name).source_location
    `gedit '#{file}'` 
  end
end


#Break out of the Bundler jail
if defined? Bundler
  Gem.post_reset_hooks.reject! {|hook| hook.source_location.first =~ %r{/bundler/}}
  Gem::Specification.reset
  load 'rubygems/custom_require.rb'
end
