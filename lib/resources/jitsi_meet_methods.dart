import 'package:jitsi_meet/feature_flag/feature_flag.dart';
import 'package:jitsi_meet/jitsi_meet.dart';

import 'auth_methods.dart';
import 'firestore_methods.dart';

class JitsiMeetMethods {
  AuthMethods authMethods = AuthMethods();
  final FirestoreMethods firestoreMethods = FirestoreMethods();

  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      FeatureFlag featureFlag = FeatureFlag();
      featureFlag.welcomePageEnabled = false;
      featureFlag.resolution = FeatureFlagVideoResolution
          .MD_RESOLUTION; // Limit video resolution to 360p
      String? name;
      if (username.isEmpty) {
        name = AuthMethods.user?.email;
      } else {
        name = username;
      }
      var options = JitsiMeetingOptions(room: roomName)
        ..userDisplayName = name
        ..userEmail = AuthMethods.user?.email
        ..userAvatarURL = AuthMethods.user?.photoURL
        ..audioMuted = isAudioMuted
        ..videoMuted = isVideoMuted;

      firestoreMethods.addToMeetingHistory(roomName);
      await JitsiMeet.joinMeeting(options);
    } catch (error) {
      print("error: $error");
    }
  }
}
