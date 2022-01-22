import 'package:flutter/material.dart';

class SharedAppBar extends StatelessWidget with PreferredSizeWidget {
  const SharedAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Flutter POC App'),
      actions: [
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        // IconButton(
        //   icon: const Icon(Icons.navigate_next),
        //   tooltip: 'Go to the next page',
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute<void>(
        //       builder: (BuildContext context) {
        //         return Scaffold(
        //           appBar: AppBar(
        //             title: const Text('Next page'),
        //           ),
        //           body: const Center(
        //             child: Text(
        //               'This is the next page',
        //               style: TextStyle(fontSize: 24),
        //             ),
        //           ),
        //         );
        //       },
        //     ));
        //   },
        // ),
      ],
    );
  }
}
