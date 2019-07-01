module SongsHelper
  def artist_select(artist, song)
      if song.artist.nil?
        select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
      else
        artist.name
      end
    end
  end
