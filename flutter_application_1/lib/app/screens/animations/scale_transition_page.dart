import 'package:flutter/material.dart';

class ScaleTransitionPage extends StatefulWidget {
  @override
  State<ScaleTransitionPage> createState() => _ScaleTransitionPageState();
}

class _ScaleTransitionPageState extends State<ScaleTransitionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    scale = Tween<double>(begin: 0.1, end: 1).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void animateScale() {
    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scale Transition'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: animateScale,
        child: Icon(Icons.play_arrow),
      ),
      body: Center(
        child: ScaleTransition(
          scale: scale,
          child: Icon(
            Icons.favorite,
            size: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
