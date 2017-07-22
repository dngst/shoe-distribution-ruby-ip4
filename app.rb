require 'bundler/setup'
Bundler.require(:default)
also_reload('lib/**/*.rb')

Dir[File.dirname(__FILE__)+"/../lib/*.rb"].each {|file| require file}

get '/' do
    erb :index
end

get '/brands' do
    erb :brands
end

get '/stores' do
    @stores=Store.all
    erb :stores
end