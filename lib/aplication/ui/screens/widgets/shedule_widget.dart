import 'package:flutter/material.dart';
import 'package:flutter_fest/aplication/resources/resources.dart';
import 'package:flutter_fest/aplication/ui/widgets/schedule_row_widget.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double _height = 56;

  // _SliverAppBarDelegate({
  //   required this.minHeight,
  //   required this.maxHeight,
  // });

  @override
  double get minExtent => _height;
  @override
  double get maxExtent => _height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    const totalItem = 4;
    const startGradientPoint = -1.0;
    const endGradientPoint = totalItem * 2 + 1;
    return ColoredBox(
      color:Theme.of(context).scaffoldBackgroundColor,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          var count = index + 1;
          return Center(
            child: SizedBox(
              height: 36,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    elevation: MaterialStateProperty.all(0),
                    minimumSize: MaterialStateProperty.all(Size.zero),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                  ),
                  child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(startGradientPoint * count * 2 , 0.0),
                          end: Alignment(endGradientPoint.toDouble() -6 , 0.0),
                        colors: const <Color>[Color(0xFF00BD13), Color(0xFF170AF4)]
                        ),
                          borderRadius: const BorderRadius.all(Radius.circular(60.0))
                      ),
                      child: Center(
                          child:Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18),
                              child: Text('Секция $count')),)))
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class SheduleWidget extends StatelessWidget {
  const SheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const _LogoWidget(),
          SliverPersistentHeader(
              pinned: true, delegate: _SliverAppBarDelegate()),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
                ScheduleRowWidget.single(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(AppImages.sheduleBg),
            ),
            Positioned(
                top: 44,
                left: 20,
                child: Image.asset(AppImages.sheduleFfLogo)),
            Positioned(
                right: 20,
                top: 24,
                child: Image.asset(AppImages.sheduleSurfLogo))
          ],
        ),
      ),
    );
  }
}
