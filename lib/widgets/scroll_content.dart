import 'package:flutter/material.dart';

class ScrollContent extends StatelessWidget {
  final ScrollController controller;

  const ScrollContent({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      itemCount: 50, // 테스트를 위한 50개의 아이템
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text('아이템 ${index + 1}'),
            subtitle: Text('자동 스크롤 테스트를 위한 컨텐츠 ${index + 1}'),
          ),
        );
      },
    );
  }
}
