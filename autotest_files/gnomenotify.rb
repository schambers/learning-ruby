 # -*- ruby -*-  
 # Adapted from PeepCode RSpec screencast no 1,  
 # who got it from someone else!  
 # Adapted with tip from http://ph7spot.com/articles/getting_started_with_autotest  
 # by DitoCujo (http://ditoinfo.wordpress.com)  
 module Autotest::GnomeNotify  
   EXPIRATION_IN_SECONDS = 5  
   ERROR_ICON = "gtk-dialog-error"  
   SUCCESS_ICON = "gtk-dialog-info"  

   def self.notify(title, msg, icon)  
     options = "-t #{EXPIRATION_IN_SECONDS * 1000} -i #{icon}"  
     system "notify-send #{options} '#{title}' '#{msg}'"  
   end  

  def self.notify_pass(output)
    notify "Pass", "#{output}", SUCCESS_ICON
  end

  def self.notify_fail(output)
    notify "FAIL", "#{output}", ERROR_ICON    
  end

#  Autotest.add_hook :green do |at|
#    results = [at.results].flatten.join("\n")  
#    output = results.slice(/(\d+)\s+examples?,\s*(\d+)\s+failures?(,\s*(\d+)\s+not implemented)?/)  
#    notify "Success! Good job!", "#{output}", SUCCESS_ICON
#  end

#  Autotest.add_hook :red do |at|
#    results = [at.results].flatten.join("\n")  
#    output = results.slice(/(\d+)\s+examples?,\s*(\d+)\s+failures?(,\s*(\d+)\s+not implemented)?/)  
#    notify "FAIL!", "#{output}", ERROR_ICON
#  end 

   Autotest.add_hook :ran_command do |at|  
     results = [at.results].flatten.join("\n")  
     output = results.slice(/(\d+)\s+examples?,\s*(\d+)\s+failures?(,\s*(\d+)\s+not implemented)?/)  
     if output  
       if $~[2].to_i > 0  
         notify_fail(output)  
       else  
         notify_pass(output)
       end  
     end  
   end  

  Autotest.add_hook :ran_features do |at|
   results = Term::ANSIColor.uncolored([at.results].flatten.join("\n"))
   
   output = results.slice(/(\d+) scenarios? \((.*)\)/)
   counts = $~[2]
   failed = (counts =~ /(\d+) failed/) ? $~[1].to_i : 0
   undefined = (counts =~ /(\d+) undefined/) ? $~[1].to_i : 0
   passed = (counts =~ /(\d+) passed/) ? $~[1].to_i : 0
   
   failed + undefined > 0 ? notify_fail(output) : notify_pass(output)
  end

 end  
