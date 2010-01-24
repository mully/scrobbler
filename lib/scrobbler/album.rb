# Getting information about an album such as release date and the tracks on it is very easy.
# 
#   album = Scrobbler::Album.new('Carrie Underwood', 'Some Hearts', :include_info => true)
# 
#   puts "Album: #{album.name}"
#   puts "Artist: #{album.artist}"
#   puts "Reach: #{album.reach}"
#   puts "URL: #{album.url}"
#   puts "Release Date: #{album.release_date.strftime('%m/%d/%Y')}"
# 
#   puts
#   puts
# 
#   puts "Tracks"
#   longest_track_name = album.tracks.collect(&:name).sort { |x, y| y.length <=> x.length }.first.length
#   puts "=" * longest_track_name
#   album.tracks.each { |t| puts t.name }
#
# Would output:
#
#   Album: Some Hearts
#   Artist: Carrie Underwood
#   Reach: 18729
#   URL: http://www.last.fm/music/Carrie+Underwood/Some+Hearts
#   Release Date: 11/15/2005
# 
# 
#   Tracks
#   ===============================
#   Wasted
#   Don't Forget to Remember Me
#   Some Hearts
#   Jesus, Take the Wheel
#   The Night Before (Life Goes On)
#   Lessons Learned
#   Before He Cheats
#   Starts With Goodbye
#   I Just Can't Live a Lie
#   We're Young and Beautiful
#   That's Where It Is
#   Whenever You Remember
#   I Ain't in Checotah Anymore
#   Inside Your Heaven
#
module Scrobbler
  # @todo Add missing functions that require authentication
  class Album < Base
    mixins :image
    
    attr_reader :artist, :album_id, :artist_mbid, :name, :mbid, :playcount, :rank, :url
    attr_reader :reach, :release_date, :listeners, :playcount, :top_tags
    attr_reader :image_large, :image_medium, :image_small, :tagcount
    
    # needed on top albums for tag
    attr_reader :count, :playlist
    
    # needed for weekly album charts
    attr_reader :chartposition, :position
    
    class << self
      
      def new_from_xml(xml, o = {})
        data = self.data_from_xml(xml)
        return nil if data[:name].empty?
        Album.new(data[:artist], data[:name], data)
      end
      
      def data_from_xml(xml, o = {})
        data = {}
        o = {:include_artist_info => true}.merge(o) 
        xml.children.each do |child|
          data[:name] = child.content if ['name', 'title'].include?(child.name)
          data[:album_id] = child.content.to_i if child.name == 'id'
          data[:playcount] = child.content.to_i if child.name == 'playcount'
          data[:tagcount] = child.content.to_i if child.name == 'tagcount'
          data[:release_date] = Time.parse(child.content.strip) if child.name == 'releasedate'
          data[:listeners] = child.content.to_i if child.name == 'listeners'
          data[:mbid] = child.content if child.name == 'mbid'
          data[:url] = child.content if child.name == 'url'
          data[:artist] = Artist.new_from_xml(child) if (child.name == 'artist' || child.name == 'creator') && o[:include_artist_info]
          maybe_image_node(data, child)
          if child.name == 'toptags'
            data[:top_tags] = []
            child.children.each do |grandchild|
              next unless grandchild.name == 'tag'
              data[:top_tags] << Tag.new_from_xml(grandchild)
            end
          end  
        end
                
        # If we have not found anything in the content of this node yet then
        # this must be a simple artist node which has the name of the artist
        # as its content
        data[:name] = xml.content if data == {}
        
        # Get all information from the root's attributes
        data[:mbid] = xml['mbid'] if xml['mbid']
        data[:rank] = xml['rank'].to_i if xml['rank']
        data[:position] = xml['position'].to_i if xml['position']
        
        # If there is no name defined, than this was an empty album tag
        return nil if data[:name].empty?
        data
      end
    end
      
    # If the additional parameter :include_info is set to true, additional 
    # information is loaded
    #
    # @todo Albums should be able to be created via a MusicBrainz id too
    def initialize(artist, name, data={})    
      super()
      raise ArgumentError, "Artist or MBID is required" if artist.blank?
      
      #check for old style parameter arguments, infer MBID if only an artist is given
      if artist.class == String && name.blank? && data == {}
        raise ArgumentError, "MBID is required for an MBID query" if input.blank?
        @mbid = input
        load_album_info() # data must be fetched since all we have is an mbid, nothing else useful
      else
        raise ArgumentError, "Artist is required" if artist.blank?
        raise ArgumentError, "Album Name is required" if name.blank?
        @artist = Artist.new(artist)
        @name = name
        load_album_info() if data[:include_info] || data[:include_all_info]
        load_track_info() if data[:include_all_info]
      end
    end
    
    # Indicates if the album info was already loaded
    @album_info_loaded = false 
    
    # Load additional information about this album
    #
    # Calls "album.getinfo" REST method
    #
    # @todo Parse wiki content
    # @todo Add language code for wiki translation
     def load_album_info
      return nil if @album_info_loaded
      params = @mbid ? {'mbid' => @mbid} : {'artist' => @artist.name, 'album' => @name}
      xml = Base.request('album.getinfo', params)
      unless xml.root['status'] == 'failed'
        xml.root.children.each do |child|
          next unless child.name == 'album'
          data = self.class.data_from_xml(child)
          populate_data(data)
          @album_info_loaded = true
          break
        end # xml.children.each do |child|
      end
    end
    
    # Indicates if the album info was already loaded
    @track_info_loaded = false
    def load_track_info
       return nil if @track_info_loaded
       load_album_info() if !@album_info_loaded
       @playlist = Playlist.new_from_album(self)
       @tracks = @playlist.tracks
    end
    
    # Tag an album using a list of user supplied tags. 
    def add_tags(tags)
        # This function require authentication, but SimpleAuth is not yet 2.0
        raise NotImplementedError
    end

    # Get the tags applied by an individual user to an album on Last.fm.
    def tags()
        # This function require authentication, but SimpleAuth is not yet 2.0
        raise NotImplementedError
    end

    # Remove a user's tag from an album.
    def remove_tag()
        # This function require authentication, but SimpleAuth is not yet 2.0
        raise NotImplementedError
    end
  end
end
