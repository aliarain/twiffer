import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appWriteClientProvider = Provider((ref) {
  Client client = Client();
});
