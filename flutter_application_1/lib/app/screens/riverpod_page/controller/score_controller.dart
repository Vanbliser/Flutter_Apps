import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final scoreProvier = ChangeNotifierProvider((_) => ScoreController());

class ScoreController extends ChangeNotifier {
  Score scoreA = Score
}
