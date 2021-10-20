import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _textController = TextEditingController();
  var text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: false,
            child: CustomScrollView(slivers: [
              const SliverAppBar(
                  backgroundColor: kPrimaryColor,
                  expandedHeight: 80.0,
                  pinned: false,
                  stretch: false,
                  title: Text('Flutter Architecture App')),
              SliverToBoxAdapter(
                child: Container(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: TextFormField(
                        // controller: _textController,
                        onFieldSubmitted: (String text) {
                          setState(() {
                            this.text = text;
                          });
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                          hintText: 'eg: mac',
                        ))),
              ),
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(kDefaultPadding),
                      padding: const EdgeInsets.all(kDefaultPadding),
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Dark/Light Theme',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                                'Change the device dark/light mode to see the impact.'),
                          ])),
                  Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Text(text))
                ],
              )),
            ])));
  }
}
