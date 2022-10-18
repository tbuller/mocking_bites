require "music_library"
require "track"

RSpec.describe "MusicLibrary methods" do
  it "adds a track" do
    playlist = MusicLibrary.new
    result = playlist.add(FakeTrack.new("Tiktok", "Kesha"))
    expect(result).to eq "Tiktok"
  end
  it "searches a track" do
    playlist = MusicLibrary.new
    playlist.add(FakeTrack.new("we r who we r", "Kesha"))
    playlist.add(FakeTrack.new("lets dance", "unknown"))
    playlist.add(FakeTrack.new("christmas song", "michael buble"))
    result = playlist.search("michael buble")
    expect(result).to eq "christmas song"
  end
  it "returns all track objects" do
    playlist = MusicLibrary.new
    playlist.add(FakeTrack.new("we r who we r", "Kesha"))
    playlist.add(FakeTrack.new("lets dance", "unknown"))
    playlist.add(FakeTrack.new("christmas song", "michael buble"))
    result = playlist.all
    expect(result).to eq "Kesha: we r who we r, unknown: lets dance, michael buble: christmas song"
  end
end    

RSpec.describe "Track methods" do
  it "searches for a keyword" do
    song = FakeTrack.new("lets dance", "unknown")
    result = song.matches?("unknown")
    expect(result).to eq true
  end
end    