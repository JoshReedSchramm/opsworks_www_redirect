name             "opsworks_www_redirect"
description      "Configures the canonical URL for a site as the www version"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
maintainer       "Level Seven"
license          "Apache 2.0"
version          "0.0.1"

%w{ packages gem_support apache2 opsworks_initial_setup }.each do |cb|
  depends cb
end
