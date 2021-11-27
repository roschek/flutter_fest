import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fest/aplication/resources/resources.dart';

class ScheduleRowSessionWidget extends StatelessWidget {
  const ScheduleRowSessionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFF101115),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: const EdgeInsets.only(left: 16, top: 4, right: 4, bottom: 16),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(child: _SpeakerWidget()),
              _FavoriteButtonWidget()
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: _DescriptionWidget(),
          )
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
          borderRadius: BorderRadius.circular(avaSize / 2),
          child: Image.network(
            'https://i.pinimg.com/originals/5e/fe/46/5efe46a674da7d77cc8a02c858b77d0b.jpg',
            width: avaSize.toDouble(),
            height: avaSize.toDouble(),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Expanded(
          child: Text('Василий Офигенносуперкрутецкий',
              style: TextStyle(color: Colors.grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}

class _FavoriteButtonWidget extends StatelessWidget {
  const _FavoriteButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
        onPressed: () {}, icon: Image.asset(AppImages.tabBarBookmark));
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Название лекции Название лекции Название лекции',
        style: TextStyle(
            color: Colors.white.withOpacity(.88),
        fontSize: 18,
        height: 1.22),
        maxLines: 2,
        overflow: TextOverflow.ellipsis);
  }
}
