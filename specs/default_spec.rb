require 'minitest/spec'

describe_recipe 'opsworks_www_redirect::default' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'creates local-wwwredirect.conf' do
    file(File.join(node[:apache][:dir], 'sies-available', "#{application_name}.conf.d", 'local-wwwredirect.conf')).must_exist.with(:owner, 'root').and(:group, 'root').and(:mode, '644')
  end
end
