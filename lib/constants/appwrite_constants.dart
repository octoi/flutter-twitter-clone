import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppwriteConstants {
  static String databaseId =
      dotenv.env['DATABASE_ID'] ?? '63ca9fd892b6a9f5e135';
  static String projectId = dotenv.env['PROJECT_ID'] ?? '63ca9d4f81ce9074804f';
  static String endPoint = dotenv.env['ENDPOINT'] ?? 'http://YOUR_IP/v1';

  static String usersCollection =
      dotenv.env['USERS_COLLECTION'] ?? '63cb8ae73960973b0635';
  static String tweetsCollection =
      dotenv.env['TWEETS_COLLECTION'] ?? '63cbd6781a8ce89dcb95';
  static String notificationsCollection =
      dotenv.env['NOTIFICATIONS_COLLECTION'] ?? '63cd5ff88b08e40a11bc';

  static String imagesBucket =
      dotenv.env['IMAGE_BUCKET'] ?? '63cbdab48cdbccb6b34e';

  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
