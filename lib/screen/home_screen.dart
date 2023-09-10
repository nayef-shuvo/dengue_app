// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dengue_app/widget/news_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ডেংগু অ্যালার্ট',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          color: Theme.of(context).primaryColorLight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AffectedCount(title: 'মোট ', count: '৪৮১'),
                  AffectedCount(title: 'নতুন ', count: '২৯'),
                  AffectedCount(title: 'মোট ', count: '২৩', isDead: true),
                ],
              ),
              Divider(thickness: 4),
              const SizedBox(height: 10),
              const Text(
                'খবর',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.maxFinite,
                child: NewsCard(
                    title: 'প্রথম-আলো',
                    subtitle: 'ডেংগু প্রতিরোধে সক্রিয় হলো সারা দেশ'),
              ),
              SizedBox(
                width: double.maxFinite,
                child: NewsCard(
                    title: 'দৈনিক যুগান্তর',
                    subtitle: 'ডেংগু প্রতিরোধে সক্রিয় হলো সারা দেশ'),
              ),
              SizedBox(
                width: double.maxFinite,
                child: NewsCard(
                    title: 'বাংলাদেশ প্রতিদিন',
                    subtitle: 'ডেংগু প্রতিরোধে সক্রিয় হলো সারা দেশ'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'খবর',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          )),
    );
  }
}

class AffectedCount extends StatelessWidget {
  final String title;
  final String count;
  final bool isDead;
  const AffectedCount({
    Key? key,
    required this.title,
    required this.count,
    this.isDead = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      // margin: EdgeInsets.all(0.5),
      width: MediaQuery.of(context).size.width / 3 - 16,
      height: 180,
      child: Card(
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              isDead ? 'মৃত্যু' : 'আক্রান্ত',
              style: TextStyle(fontSize: 26),
            ),
            Text(
              count,
              style: TextStyle(
                  fontSize: 30, color: isDead ? Colors.red : Colors.amber),
            ),
            Text(
              'জন',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
