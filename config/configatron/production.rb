configatron.mack.site_domain = 'http://www.mackery.com'
configatron.mack.caching.use_page_caching = true
configatron.cachetastic_default_options.debug = false
configatron.cachetastic_default_options.adapter = :file
configatron.cachetastic_default_options.default_expiry = 24.hours
configatron.cachetastic_default_options.store_options.dir = Mack::Paths.tmp
require 'logger'
log_2 = Logger.new(Mack::Paths.log("cachetastic.log"))
log_2.level = Logger::ERROR
configatron.cachetastic_default_options.logger = [log_2]