import 'package:flutter/material.dart';
import 'package:movie_test/ui/common_widgets/movie_card_poster_widget/movie_card_info_widget/star_and_rating_widget/start_and_rating_widget.dart';
import 'package:movie_test/ui/common_widgets/text_widget/small_text_widget.dart';

class MovieCardInfoWidget extends StatefulWidget {
  final Map<String, dynamic> data;

  const MovieCardInfoWidget({Key? key, required this.data}) : super(key: key);

  @override
  State<MovieCardInfoWidget> createState() => _MovieCardInfoWidgetState();
}

class _MovieCardInfoWidgetState extends State<MovieCardInfoWidget> {
  late double heigth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        StarAndRatingWidget(data: widget.data), //25
        const SizedBox(height: 12),
        SmallTextWidget(data: widget.data['title']),
        const SizedBox(height: 12),
        LayoutBuilder(builder: (context, constraints) {
          heigth = constraints.maxHeight;
          return const SizedBox();
        })
      ],
    );
  }
}
