import 'package:flutter/material.dart';
import 'dart:async';
import '../widgets/scroll_content.dart';

class AutoScrollPage extends StatefulWidget {
  const AutoScrollPage({super.key});

  @override
  State<AutoScrollPage> createState() => _AutoScrollPageState();
}

class _AutoScrollPageState extends State<AutoScrollPage> {
  final ScrollController _scrollController = ScrollController();
  Timer? _scrollTimer;
  bool _isAutoScrolling = true;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _scrollTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    const scrollDuration = Duration(seconds: 3); // 3초마다 스크롤
    _scrollTimer = Timer.periodic(scrollDuration, (timer) {
      if (!_isAutoScrolling) return;

      final currentPosition = _scrollController.offset;
      final maxScroll = _scrollController.position.maxScrollExtent;

      // 스크롤이 끝에 도달하면 맨 위로 이동
      if (currentPosition >= maxScroll) {
        _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        // 일정 거리만큼 아래로 스크롤
        _scrollController.animateTo(
          currentPosition + 100, // 100픽셀씩 스크롤
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자동 스크롤'),
        actions: [
          IconButton(
            icon: Icon(_isAutoScrolling ? Icons.pause : Icons.play_arrow),
            onPressed: () {
              setState(() {
                _isAutoScrolling = !_isAutoScrolling;
              });
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTapDown: (_) => _isAutoScrolling = false,
        onTapUp: (_) => _isAutoScrolling = true,
        child: ScrollContent(controller: _scrollController),
      ),
    );
  }
}
