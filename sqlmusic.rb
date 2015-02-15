require 'sinatra'
require 'sqlite3'
# require 'pry'

db = SQLite3::Database.new "playlist.db"

get '/' do
  playlist = db.execute("SELECT * FROM playlist")
  erb :index, locals: {playlist: playlist}
end

post '/' do
  playlist = db.execute("INSERT INTO playlist (artist, track) VALUES (?, ?)", params["artist"], params["track"])
  redirect '/'
end

#
# put '/votefy/:id' do
#   playlist = db.execute("UPDATE playlist SET track=? WHERE id=?", params["newtrack"], params["id"])
#
#   redirect '/votefy'
# end
#
# delete '/votefy/:id' do
#   playlist = db.execute("DELETE FROM playlist WHERE id=?", params["id"])
#   redirect '/votefy'
#  end
