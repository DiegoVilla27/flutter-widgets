import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/pageview/data/data.dart';
import 'package:flutter_widgets/presentation/screens/pageview/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents a screen with a page view.
/// 
/// This widget is responsible for creating the state object
/// `_PageViewScreenState` which manages the page view's behavior
/// and appearance.
class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _controller = PageController();
  bool _isLastItem = false;

  @override
  void initState() {
    super.initState();
    _initPageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _initPageController() {
    _controller.addListener(() {
      double page = _controller.page ?? 0;
      if (!_isLastItem && page >= (slides.length - 1.5)) {
        setState(() => _isLastItem = true);
      }
    });
  }

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Page View"),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              children:
                  slides.map((slide) {
                    return ItemPageView(
                      title: slide.title,
                      caption: slide.caption,
                      url: slide.url,
                    );
                  }).toList(),
            ),
            const JumpBtn(),
            if (_isLastItem) const InitBtn(),
          ],
        ),
      ),
    );
  }
}
