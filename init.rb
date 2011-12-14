require 'redmine'
require 'dispatcher'
require 'show_descriptions_patch'

Redmine::Plugin.register :redmine_show_descriptions do
  name 'Redmine Show Descriptions plugin'
  author 'Alexandr Poplavsky, Pavel Vinokurov'
  description 'Show full issue descriptions in the issues list'
  version '0.0.4'
  url 'http://www.redmine.org/projects/redmine/wiki/PluginShowIssueDescriptions'
  author_url 'http://www.redmine.org/projects/redmine/wiki/PluginShowIssueDescriptions'

   Dispatcher.to_prepare do
     QueriesHelper.send(:include, ShowDescriptionsPatch::QueriesHelperPatch)
   end
end
