import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TypeWriterWidget extends HookWidget {
  /// 打字机效果
  ///
  /// 当[isShowAll]为true，所有内容一起出现
  const TypeWriterWidget(
    this.text, {
    super.key,
    this.isBegin = true,
    this.isShowAll = false,
    this.onDone,
    this.style,
    this.textAlign,
    this.durationPerChar,
  });

  final String text;

  /// 是否开始显示
  final bool isBegin;

  final bool isShowAll;

  final VoidCallback? onDone;

  final TextStyle? style;

  final TextAlign? textAlign;

  final Duration? durationPerChar;

  @override
  Widget build(BuildContext context) {
    final style = this.style ?? DefaultTextStyle.of(context).style;
    final writingIndex = useState(0);
    final controller = useAnimationController(
        duration: durationPerChar ?? const Duration(milliseconds: 120));
    useEffect(() {
      void onStatusChange(AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          writingIndex.value = writingIndex.value + 1;
          if (writingIndex.value < text.length - 1) {
            controller.forward(from: 0);
          } else {
            SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
              onDone?.call();
            });
          }
        }
      }

      controller.addStatusListener(onStatusChange);
      return () {
        controller.removeStatusListener(onStatusChange);
      };
    }, [controller]);
    useMemoized(() {
      if (isBegin) {
        controller.forward();
      }
    }, [isBegin]);
    useMemoized(() {
      if (isShowAll) {
        writingIndex.value = text.length - 1;
        controller.value = 1.0;
      }
    }, [isShowAll]);
    final tween = CurveTween(curve: Curves.decelerate);
    return AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          if (writingIndex.value == text.length - 1) {
            return Text(text, style: style);
          }
          return Text.rich(
            textAlign: textAlign,
            TextSpan(
              children: [
                TextSpan(
                  text: text.substring(0, writingIndex.value),
                  style: style,
                ),
                if (writingIndex.value + 1 <= text.length)
                  TextSpan(
                    text: text.substring(
                        writingIndex.value, writingIndex.value + 1),
                    style: style.copyWith(
                      color: style.color!
                          .withOpacity(tween.transform(controller.value)),
                      shadows: style.shadows
                          ?.map((it) => Shadow(
                                color: it.color.withOpacity(
                                  it.color.opacity *
                                      tween.transform(controller.value),
                                ),
                                offset: it.offset,
                                blurRadius: it.blurRadius,
                              ))
                          .toList(),
                    ),
                  ),
                if (writingIndex.value + 1 < text.length)
                  TextSpan(
                    text: text.substring(writingIndex.value + 1, text.length),
                    style: style.copyWith(
                      color: style.color!.withOpacity(0),
                      shadows: style.shadows
                          ?.map((it) => Shadow(
                                color: Colors.transparent,
                                offset: it.offset,
                                blurRadius: it.blurRadius,
                              ))
                          .toList(),
                    ),
                  ),
              ],
            ),
          );
        });
  }
}
