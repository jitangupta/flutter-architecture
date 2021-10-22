import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_constants.dart';
import 'package:flutter_architecture/models/post.dart';
import 'package:flutter_architecture/services/ad_service.dart';
import 'package:flutter_architecture/services/post_service.dart';
import 'package:flutter_architecture/widgets/custom_card.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PostService service = PostService();
  // final _textController = TextEditingController();
  var textParam = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          child: AdWidget(
              key: UniqueKey(), ad: AdMobService.createBannerAd()..load()),
        ),
        body: CustomScrollView(slivers: [
          // App bar
          const SliverAppBar(
              backgroundColor: kPrimaryColor,
              expandedHeight: 60.0,
              pinned: false,
              stretch: false,
              title: Text('Flutter Architecture App')),

          // Search bar
          SliverPersistentHeader(
            delegate: CustomSearchBarDelege(text: textParam),
            floating: true,
          ),

          // Show some info
          const SliverToBoxAdapter(
            child: CustomCard(
                title: 'Dark/Light Theme',
                body: 'Change the device dark/light mode to see the impact.'),
          ),

          // Search & fetch data
          FutureBuilder<List<Post>>(
              future: service.getPosts(15, textParam),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) =>
                          CustomCard(
                              title: snapshot.data![index].title,
                              body: snapshot.data![index].body)));
                } else {
                  return const SliverToBoxAdapter(
                      child: CircularProgressIndicator());
                }
              }),
        ]));
  }
}

class CustomSearchBarDelege extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  var text;
  CustomSearchBarDelege({this.expandedHeight = 95, required this.text});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration:
            BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
        child: TextFormField(
            onFieldSubmitted: (String text) {
              // setState(() {
              //   this.text = text;
              // });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              // labelText: 'Search',
              hintText: 'eg: mac',
            )));
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => expandedHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
