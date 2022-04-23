import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wedo/config/routes/router.gr.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/views/pages/point/widgets/point_section.dart';
import '../../widgets/components/components.dart';

class PointPage extends StatefulWidget {
  const PointPage({Key? key}) : super(key: key);

  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        appBarType: AppBarType.offWhite,
        leading: GoBackButton(
          appBarType: AppBarType.offWhite,
          onTap: () => Navigator.pop(context),
        ),
        title: const TextTitle(
          appBarType: AppBarType.offWhite,
          title: 'Fun Point',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          // style:
          //     TextStyles.pangram.boldTitle.copyWith(color: AppColors.charcoal),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 200, 220, 255)),
            margin: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.stars,
                      color: AppColors.atWareOrange,
                      size: 24,
                    ),
                    Text(
                      " Your FunPoint",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "1234",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.sync,
                        color: Colors.black,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          PointSection(
            icon: Icons.article,
            title: "Point History",
            onPressed: () => context.router.push(const PointHistoryRoute()),
          ),
          const Divider(),
          PointSection(
            icon: Icons.store,
            title: "Go to store",
            onPressed: () {},
          ),
          const Divider(),
          PointSection(
            icon: Icons.star_outlined,
            title: "Get more point",
            onPressed: () {},
          ),
          const Divider(),
        ],
      ),
    );
  }
}
