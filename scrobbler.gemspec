# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{scrobbler}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Nunemaker", "Jonathan Rudenberg", "Uwe L. Korn", "Harry Brundage"]
  s.date = %q{2010-01-21}
  s.description = %q{A ruby library for accessing the last.fm v2 webservices}
  s.email = %q{harry@skylightlabs.ca}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     ".loadpath",
     ".project",
     ".settings/com.aptana.rdt.prefs",
     ".settings/org.radrails.rails.core.prefs",
     ".settings/org.rubypeople.rdt.core.prefs",
     "History.txt",
     "MIT-LICENSE",
     "Manifest",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "examples/album.rb",
     "examples/artist.rb",
     "examples/playlist.rb",
     "examples/scrobble.rb",
     "examples/tag.rb",
     "examples/track.rb",
     "examples/user.rb",
     "lib/scrobbler.rb",
     "lib/scrobbler/album.rb",
     "lib/scrobbler/artist.rb",
     "lib/scrobbler/auth.rb",
     "lib/scrobbler/base.rb",
     "lib/scrobbler/event.rb",
     "lib/scrobbler/geo.rb",
     "lib/scrobbler/helper/image.rb",
     "lib/scrobbler/helper/streamable.rb",
     "lib/scrobbler/library.rb",
     "lib/scrobbler/playing.rb",
     "lib/scrobbler/playlist.rb",
     "lib/scrobbler/radio.rb",
     "lib/scrobbler/rest.rb",
     "lib/scrobbler/scrobble.rb",
     "lib/scrobbler/session.rb",
     "lib/scrobbler/shout.rb",
     "lib/scrobbler/simpleauth.rb",
     "lib/scrobbler/tag.rb",
     "lib/scrobbler/track.rb",
     "lib/scrobbler/user.rb",
     "lib/scrobbler/venue.rb",
     "scrobbler.gemspec",
     "setup.rb",
     "tasks/jeweler.rake",
     "tasks/rdoc.rake",
     "tasks/tests.rake",
     "tasks/yardoc.rake",
     "test/fixtures/xml/album/info.xml",
     "test/fixtures/xml/artist/fans.xml",
     "test/fixtures/xml/artist/info.xml",
     "test/fixtures/xml/artist/similar.xml",
     "test/fixtures/xml/artist/topalbums.xml",
     "test/fixtures/xml/artist/toptags.xml",
     "test/fixtures/xml/artist/toptracks.xml",
     "test/fixtures/xml/auth/session.xml",
     "test/fixtures/xml/auth/token.xml",
     "test/fixtures/xml/event/attend.xml",
     "test/fixtures/xml/event/attendees.xml",
     "test/fixtures/xml/event/event.xml",
     "test/fixtures/xml/event/shouts.xml",
     "test/fixtures/xml/geo/events-distance-p1.xml",
     "test/fixtures/xml/geo/events-lat-long.xml",
     "test/fixtures/xml/geo/events-p1.xml",
     "test/fixtures/xml/geo/events-p2.xml",
     "test/fixtures/xml/geo/events-p3.xml",
     "test/fixtures/xml/geo/top_artists-p1.xml",
     "test/fixtures/xml/geo/top_tracks-p1.xml",
     "test/fixtures/xml/library/albums-f30.xml",
     "test/fixtures/xml/library/albums-p1.xml",
     "test/fixtures/xml/library/albums-p2.xml",
     "test/fixtures/xml/library/albums-p3.xml",
     "test/fixtures/xml/library/albums-p4.xml",
     "test/fixtures/xml/library/albums-p5.xml",
     "test/fixtures/xml/library/albums-p6.xml",
     "test/fixtures/xml/library/albums-p7.xml",
     "test/fixtures/xml/library/albums-p8.xml",
     "test/fixtures/xml/library/artists-f30.xml",
     "test/fixtures/xml/library/artists-p1.xml",
     "test/fixtures/xml/library/artists-p2.xml",
     "test/fixtures/xml/library/artists-p3.xml",
     "test/fixtures/xml/library/artists-p4.xml",
     "test/fixtures/xml/library/artists-p5.xml",
     "test/fixtures/xml/library/artists-p6.xml",
     "test/fixtures/xml/library/artists-p7.xml",
     "test/fixtures/xml/library/tracks-f30.xml",
     "test/fixtures/xml/library/tracks-p1.xml",
     "test/fixtures/xml/library/tracks-p10.xml",
     "test/fixtures/xml/library/tracks-p11.xml",
     "test/fixtures/xml/library/tracks-p12.xml",
     "test/fixtures/xml/library/tracks-p13.xml",
     "test/fixtures/xml/library/tracks-p14.xml",
     "test/fixtures/xml/library/tracks-p15.xml",
     "test/fixtures/xml/library/tracks-p16.xml",
     "test/fixtures/xml/library/tracks-p17.xml",
     "test/fixtures/xml/library/tracks-p18.xml",
     "test/fixtures/xml/library/tracks-p19.xml",
     "test/fixtures/xml/library/tracks-p2.xml",
     "test/fixtures/xml/library/tracks-p20.xml",
     "test/fixtures/xml/library/tracks-p21.xml",
     "test/fixtures/xml/library/tracks-p22.xml",
     "test/fixtures/xml/library/tracks-p23.xml",
     "test/fixtures/xml/library/tracks-p24.xml",
     "test/fixtures/xml/library/tracks-p25.xml",
     "test/fixtures/xml/library/tracks-p26.xml",
     "test/fixtures/xml/library/tracks-p27.xml",
     "test/fixtures/xml/library/tracks-p28.xml",
     "test/fixtures/xml/library/tracks-p29.xml",
     "test/fixtures/xml/library/tracks-p3.xml",
     "test/fixtures/xml/library/tracks-p30.xml",
     "test/fixtures/xml/library/tracks-p31.xml",
     "test/fixtures/xml/library/tracks-p32.xml",
     "test/fixtures/xml/library/tracks-p33.xml",
     "test/fixtures/xml/library/tracks-p34.xml",
     "test/fixtures/xml/library/tracks-p4.xml",
     "test/fixtures/xml/library/tracks-p5.xml",
     "test/fixtures/xml/library/tracks-p6.xml",
     "test/fixtures/xml/library/tracks-p7.xml",
     "test/fixtures/xml/library/tracks-p8.xml",
     "test/fixtures/xml/library/tracks-p9.xml",
     "test/fixtures/xml/tag/similar.xml",
     "test/fixtures/xml/tag/topalbums.xml",
     "test/fixtures/xml/tag/topartists.xml",
     "test/fixtures/xml/tag/toptags.xml",
     "test/fixtures/xml/tag/toptracks.xml",
     "test/fixtures/xml/track/fans.xml",
     "test/fixtures/xml/track/info.xml",
     "test/fixtures/xml/track/toptags.xml",
     "test/fixtures/xml/user/events.xml",
     "test/fixtures/xml/user/friends.xml",
     "test/fixtures/xml/user/lovedtracks.xml",
     "test/fixtures/xml/user/neighbours.xml",
     "test/fixtures/xml/user/playlists.xml",
     "test/fixtures/xml/user/profile.xml",
     "test/fixtures/xml/user/recentbannedtracks.xml",
     "test/fixtures/xml/user/recentlovedtracks.xml",
     "test/fixtures/xml/user/recenttracks.xml",
     "test/fixtures/xml/user/systemrecs.xml",
     "test/fixtures/xml/user/topalbums.xml",
     "test/fixtures/xml/user/topartists.xml",
     "test/fixtures/xml/user/toptags.xml",
     "test/fixtures/xml/user/toptracks.xml",
     "test/fixtures/xml/user/weeklyalbumchart.xml",
     "test/fixtures/xml/user/weeklyartistchart.xml",
     "test/fixtures/xml/user/weeklytrackchart.xml",
     "test/fixtures/xml/venue/events.xml",
     "test/fixtures/xml/venue/venue.xml",
     "test/mocks/rest.rb",
     "test/spec_helper.rb",
     "test/test_helper.rb",
     "test/unit/album_spec.rb",
     "test/unit/artist_spec.rb",
     "test/unit/auth_spec.rb",
     "test/unit/event_spec.rb",
     "test/unit/geo_spec.rb",
     "test/unit/library_spec.rb",
     "test/unit/playing_test.rb",
     "test/unit/playlist_spec.rb",
     "test/unit/radio_spec.rb",
     "test/unit/scrobble_spec.rb",
     "test/unit/scrobble_test.rb",
     "test/unit/simpleauth_test.rb",
     "test/unit/tag_spec.rb",
     "test/unit/track_spec.rb",
     "test/unit/user_spec.rb",
     "test/unit/venue_spec.rb"
  ]
  s.homepage = %q{http://github.com/hornairs/scrobbler}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A ruby library for accessing the last.fm v2 webservices}
  s.test_files = [
    "test/mocks/rest.rb",
     "test/spec_helper.rb",
     "test/test_helper.rb",
     "test/unit/album_spec.rb",
     "test/unit/artist_spec.rb",
     "test/unit/auth_spec.rb",
     "test/unit/event_spec.rb",
     "test/unit/geo_spec.rb",
     "test/unit/library_spec.rb",
     "test/unit/playing_test.rb",
     "test/unit/playlist_spec.rb",
     "test/unit/radio_spec.rb",
     "test/unit/scrobble_spec.rb",
     "test/unit/scrobble_test.rb",
     "test/unit/simpleauth_test.rb",
     "test/unit/tag_spec.rb",
     "test/unit/track_spec.rb",
     "test/unit/user_spec.rb",
     "test/unit/venue_spec.rb",
     "examples/album.rb",
     "examples/artist.rb",
     "examples/playlist.rb",
     "examples/scrobble.rb",
     "examples/tag.rb",
     "examples/track.rb",
     "examples/user.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 1.4.2"])
      s.add_runtime_dependency(%q<libxml-ruby>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 1.4.2"])
      s.add_dependency(%q<libxml-ruby>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 1.4.2"])
    s.add_dependency(%q<libxml-ruby>, [">= 0"])
  end
end

