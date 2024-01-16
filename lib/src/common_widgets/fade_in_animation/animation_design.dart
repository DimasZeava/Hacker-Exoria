import "package:app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart";
import "package:app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class FadeInAnimation extends StatelessWidget {
  FadeInAnimation({
    Key? key,
    required this.animatePosition,
    required this.durationInMS,
    required this.child,
  }) : super(key: key);

  final controller = Get.put(FadeInAnimationController());
  final int durationInMS;
  final AnimatePosition? animatePosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMS),
        top: controller.animate.value
            ? animatePosition!.topAfter
            : animatePosition!.topBefore,
        left: controller.animate.value
            ? animatePosition!.leftAfter
            : animatePosition!.leftBefore,
        bottom: controller.animate.value
            ? animatePosition!.bottomAfter
            : animatePosition!.bottomBefore,
        right: controller.animate.value
            ? animatePosition!.rightAfter
            : animatePosition!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMS),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
        )));
  }
}
