require 'sinatra'
require 'sqlite3'
require "awesome_print"
# require 'pry'

db = SQLite3::Database.new "playlist.db"

get '/songs' do
  playlist = db.execute("SELECT * FROM playlist")
  puts playlist.ai
  erb :index, locals: {playlist: playlist}
end

post '/songs' do
  playlist = db.execute("INSERT INTO playlist (artist, track) VALUES (?, ?)", params["artist"], params["track"])
  redirect '/songs'
end

delete '/songs/:id' do
  playlist = db.execute("DELETE FROM playlist WHERE id=(?)",params[:id])
  redirect '/songs'
 end

#
# put '/votefy/:id' do
#   playlist = db.execute("UPDATE playlist SET track=? WHERE id=?", params["newtrack"], params["id"])
#
#   redirect '/votefy'
# end
#
