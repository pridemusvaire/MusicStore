# class Engine < Rails::Engine
#   Dir.glob(File.join(File.dirname(__FILE__), "../../../app/**/*_decorator*.rb")) do |c|
#     Rails.configuration.cache_classes ? require(c) : load(c)
#   end
# end