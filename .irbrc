#!usr/bin/env ruby (~/.rvm/rubies/ruby-1.9.3-p194)

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

ActiveRecord::Base.logger.level = 1 if defined? ActiveRecord::Base
