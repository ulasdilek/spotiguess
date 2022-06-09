import 'package:spotify_sdk/spotify_sdk.dart';

class SpotifyUtil {
  var accessToken;
  bool? spotifySet;

  final String clientId = "3fa8de54af224322835fa9e510d7dde5";
  final String redirectURL = "https://github.com/ulasdilek/spotiguess";

  SpotifyUtil(){
    _setupSpotify();
  }

  void _setupSpotify() async {
    await SpotifySdk.connectToSpotifyRemote(
        clientId: clientId,
        redirectUrl: redirectURL);
    accessToken = await SpotifySdk.getAccessToken( clientId: clientId, redirectUrl: redirectURL, scope: "app-remote-control,user-modify-playback-state,playlist-read-private");
    spotifySet = true;
  }

  void play() {
    SpotifySdk.play(spotifyUri: "https://open.spotify.com/track/79MMMdYL00iwKVHBSAUkLY?si=a1cf0f7c560f4e0a");
  }
  
}