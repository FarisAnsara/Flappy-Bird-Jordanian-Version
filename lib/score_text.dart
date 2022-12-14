import 'package:flame/components.dart';
import 'package:flappy_among_us/main.dart';
import 'package:flutter/material.dart';

class ScoreText extends PositionComponent {
  final TextPaint scoreText = TextPaint(
    style: const TextStyle(
      fontSize: 25,
      fontFamily: 'Cooper-Black',
    ),
  );

  @override
  Future<void> onLoad() async {
    score = 0;
  }

  @override
  void render(canvas) {
    super.render(canvas);
    if (!FlappyAmongUs().gameOver) {
      scoreText.render(
        canvas,
        'Score : $score   HI : $highScore',
        Vector2(screenWidth / 2, 100),
        anchor: Anchor.center,
      );
    }
  }

  @override
  void update(double dt) {
    super.update(dt);
    distanceTravelled += dt * 1000;
    score = distanceTravelled ~/ 100;
  }
}
