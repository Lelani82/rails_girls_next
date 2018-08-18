# require gems and classes
require 'bundler'
Bundler.require
$: << File.expand_path('../', _FILE_)
Dir['./app/**/*.rb'].sort.each { |file| require file }

# configure sinatra
set :root, Dir['./app']
set :public_folder, Proc.new { File.join(root, 'assets') }
set :erb, :layout => :'layouts/application'