import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleRowSessionWidget extends StatelessWidget {
  const ScheduleRowSessionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF101115),
        shape: BoxShape.rectangle
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: const [
              _SpeakerWidget(),
              _FavoriteButtonWidget()
            ],
          ),
          const _DescriptionWidget()
        ],
      ),
    );
  }
}

class _SpeakerWidget extends StatelessWidget {
  const _SpeakerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const avaSize = 24;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(avaSize/2),
          child: Image.network('https://i.pinimg.com/originals/5e/fe/46/5efe46a674da7d77cc8a02c858b77d0b.jpg',
          width: avaSize.toDouble(),
          height: avaSize.toDouble(),
            fit: BoxFit.fill,
          ),
        ),
      const SizedBox(
        width: 8,
      ),
      const Text('Василий Офигенносуперкрутецкий',
      style: TextStyle(
        color: Colors.grey))
      ],
    );
  }
}

class _FavoriteButtonWidget extends StatelessWidget {
  const _FavoriteButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


