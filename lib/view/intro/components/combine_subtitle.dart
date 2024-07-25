import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30, end: 40, text: 'Android '),
            largeMobile: AnimatedSubtitleText(
                start: 30, end: 25, text: 'Android '),
            mobile: AnimatedSubtitleText(
                start: 25, end: 20, text: 'Android '),
            tablet: AnimatedSubtitleText(
                start: 40, end: 30, text: 'Android '),
          ),
          (kIsWeb && Responsive.isLargeMobile(context)
              ? const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30,
                end: 40,
                text: 'Application ',
                gradient: true),
            largeMobile: AnimatedSubtitleText(
                start: 30,
                end: 25,
                text: 'Application ',
                gradient: true),
            mobile: AnimatedSubtitleText(
                start: 25,
                end: 20,
                text: 'Application ',
                gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40,
                end: 30,
                text: 'Application ',
                gradient: true),
          )
              : ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(colors: [
                Colors.pink,
                Colors.blue,
              ]).createShader(bounds);
            },
            child: const Responsive(
              desktop: AnimatedSubtitleText(
                  start: 30,
                  end: 40,
                  text: 'Application ',
                  gradient: false),
              largeMobile: AnimatedSubtitleText(
                  start: 30,
                  end: 25,
                  text: 'Application ',
                  gradient: false),
              mobile: AnimatedSubtitleText(
                  start: 25,
                  end: 20,
                  text: 'Application ',
                  gradient: true),
              tablet: AnimatedSubtitleText(
                  start: 40,
                  end: 30,
                  text: 'Application ',
                  gradient: false),
            ),
          ))
        ],
      ),
    );
  }
}
