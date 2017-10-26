module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song, artist)
    if artist
      artist.name
    else
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    end
  end
end

      #checks to see if there is an artist ID, and whether that artist ID is valid
      #if the artist id is valid but song id is not,
        #redirect to artist_songs_path
      #but if both are valid:
        #show the artist name as a link on the page and have a hidden field tag


      #if the artist id is not valid but the song is:
        #if the song has an artist, display a link to the artist name, and also a hidden_field_tag with artist's name
        #if the song does not have an artist, show an artist dropdown menu to select one
        #
