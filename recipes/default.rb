#
# Cookbook:: task
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe  'task::ntp'
include_recipe  'task::cups'
include_recipe  'task::timezone'
include_recipe  'task::dns'
include_recipe  'task::apache_httpd'
include_recipe  'task::html'