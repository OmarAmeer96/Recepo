import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingAnimation extends StatefulWidget {
  const LoadingAnimation({super.key});

  @override
  LoadingAnimationState createState() => LoadingAnimationState();
}

class LoadingAnimationState extends State<LoadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);

    _rotationAnimation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _positionAnimation = Tween(begin: 10.0, end: 20.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _rotationAnimation.value * 2 * 3.141592653589793,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.translate(
                offset: Offset(_positionAnimation.value, 0),
                child: SvgPicture.asset(
                  'assets/svgs/loadingRightPart.svg',
                  width: 40,
                  height: 40,
                ),
              ),
              Transform.translate(
                offset: Offset(-_positionAnimation.value, 0),
                child: SvgPicture.asset(
                  'assets/svgs/loadingLeftPart.svg',
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
