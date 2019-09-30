#
# Cookbook:: task
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe  'task1::ntp'
include_recipe  'task1::cups'
include_recipe  'task1::timezone'
include_recipe  'task1::dns'