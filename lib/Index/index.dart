import 'package:flutter_app/model/page.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List pages;

  @override
  void initState() {
    pages = getPages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageList'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          return makeList(pages[index]);
        },
      )
    );
  }

  makeList(page) {
    return ListTile(
      title: Text(page.title),
      onTap: () => {
        Navigator.pushNamed(context, page.path)
      }
    );
  }
}

List getPages() {
  return [
    Page(
      path: '/box-decoration/border',
      title: 'BoxDecoration border',
    ),
    Page(
      path: '/box-decoration/border-radius',
      title: 'BoxDecoration border radius',
    )
  ];
}
