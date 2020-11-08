# frozen_string_literal: true

module PagesHelper

  def flash_msgs
   flash.each do |err,msg|  
       msg.each do |message| 
       "<p>#{message}</p>".html_safe
       end
   end
  end
  
end
