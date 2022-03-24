import 'package:blog_web_app/constrained_centre.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = Provider.of<String>(context,listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 612,
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedCentre(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                    //'https://ibb.co/7Nr9DLH',
                    'https://i.ibb.co/G3ChDNX/MY-PHOTOT-ORIGINAL-Copy-3.jpg'
                  ),
                ),
              ),
              SizedBox(height: 18),
              ConstrainedCentre(
                child: SelectableText(
                  '${title} Flutter Dev',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              SizedBox(height: 40),
              SelectableText(
                'Hello, I’m a Tarun. I’m a Flutter developer and an avid human. Occasionally, I nap.',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(height: 40),
              SelectableText(
                'Blog',
                style: Theme.of(context).textTheme.headline2,
              ),
              BlogListTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        InkWell(
          child: Text(
            'What is provider',
            style: TextStyle(color: Colors.blueAccent.shade700),
          ),
          onTap: () {},
        ),
        SizedBox(height: 10),
        SelectableText(
          'January 2, 2020',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}