import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum SMTransitionType {
  slideRight,
  slideUp,
}

class SMTransition extends CustomTransitionPage {
  final SMTransitionType type;
  final Curve? curve;
  SMTransition({
    required super.child,
    super.transitionDuration = const Duration(milliseconds: 350),
    this.type = SMTransitionType.slideUp,
    this.curve,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            switch (type) {
              case SMTransitionType.slideRight:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(-1, 0),
                  ).animate(
                    CurvedAnimation(
                      curve: curve ?? Curves.ease,
                      parent: secondaryAnimation,
                    ),
                  ),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        curve: curve ?? Curves.ease,
                        parent: animation,
                      ),
                    ),
                    child: child,
                  ),
                );
              case SMTransitionType.slideUp:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(0, -0.1),
                  ).animate(
                    CurvedAnimation(
                      curve: curve ?? Curves.ease,
                      parent: secondaryAnimation,
                    ),
                  ),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        curve: curve ?? Curves.ease,
                        parent: animation,
                      ),
                    ),
                    child: child,
                  ),
                );
            }
          },
        );
}
