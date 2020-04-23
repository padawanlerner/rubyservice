# myapp.rb
# require 'rubygems'
require 'sinatra'
require 'rom-sql'
require 'rom'
require File.dirname(__FILE__) + '/models.rb'
require 'json'
# require 'Date'

# rom = ROM.container(:sql, 'sqlite:////'+Dir.pwd+'/database.sqlite') do |config|
#   # define relations and commands here...

#   config.relation(:Players) do
#     schema(infer: true)
#     def by_name(name)
#       where(Name: name)
#     end
#   end

#   # class Players < ROM::Relation[:sql]
#   #   schema(infer: true)
#   # end
# end


# print $rom.relations[:Players].each do |p|
#   puts p.to_a
# end
# # print $rom.relations[:Players].by_name("adam").to_a

# puts("go")

# before do
#   content_type :json
# end


get '/' do
  @players = $rom.relations[:Players]

  output = {Players: @players}
  # output.to_json
  # @players.each do |user|
  #   user.to_json
  #   # puts
  #   # user.to_a
  # end
  # @players.to_json
  
  # print(response)
  # 'du'
end


after do
  response.body = JSON.dump(response.body)
end