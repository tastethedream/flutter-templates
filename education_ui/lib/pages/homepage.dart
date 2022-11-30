import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/course_data.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final CourseData courseData = CourseData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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'),
          ),
        ),
        title: const Text(
          'Hello Learner',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        bottom: const PreferredSize(
          preferredSize: Size(0.0, 30.0),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'You have 4 saved courses',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
        ),
        elevation: 0,
      ),

      // remove shadow from bottom af appBar

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(children: [
              Expanded(
                //flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search Courses...',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                      suffixIcon: Container(
                          padding: const EdgeInsets.all(15),
                          child: const Icon(Icons.search))),
                ),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Courses',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 285,
            child: HorizontalListView(items: courseData.items),
          )
        ],
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  final List<DataItem> items;
  final itemWidth = 12.0;

  const HorizontalListView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context)
          .copyWith(dragDevices: {PointerDeviceKind.mouse}),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ListViewItem(items[index]),
          separatorBuilder: (context, _) => SizedBox(
                width: itemWidth,
              ),
          itemCount: items.length),
    );
  }
}

class ListViewItem extends StatelessWidget {
  final DataItem listItem;
  const ListViewItem(this.listItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: 215,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        spreadRadius: -10.0,
                        blurRadius: 20.0,
                        offset: Offset(-1.0, -1.0))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: Image.network(listItem.imageUrl),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(listItem.category, style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(listItem.title, style: const TextStyle(
                          fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                      ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(listItem.mentor, style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
