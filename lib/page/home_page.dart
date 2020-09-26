import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:transformer_pageview_example/main.dart';
import 'package:transformer_pageview_example/texts.dart';
import 'package:transformer_pageview_example/transformers/my_transformer.dart';
import 'package:transformer_pageview_example/transformers/transformers.dart';
import 'package:transformer_pageview_example/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(
          MyApp.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: TransformerPageView(
        scrollDirection: Axis.vertical,
        curve: Curves.easeInBack,
        transformer: MyTransformer(), // transformers[5],
        itemCount: Texts.urlImages.length,
        itemBuilder: (context, index) {
          final urlImage = Texts.urlImages[index];
          final title = Texts.titles[index];
          final subtitle = Texts.subtitles[index];

          return CardWidget(
            urlImage: urlImage,
            title: title,
            subtitle: subtitle,
          );
        },
      ),
    );
  }
}
