import 'dart:developer';

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinkProvider {
  Future<String> createLink(String id) async {
    log(id);
    final String url = "https://com.example.campuspolls?id=$id";

    final DynamicLinkParameters parameters = DynamicLinkParameters(
        link: Uri.parse(url),
        uriPrefix: "https://campuspolls.page.link",
        iosParameters: const IOSParameters(
            bundleId: "com.example.campuspolls", minimumVersion: "0"),
        androidParameters: const AndroidParameters(
            packageName: "com.example.campuspolls", minimumVersion: 0));

    final FirebaseDynamicLinks link = FirebaseDynamicLinks.instance;

    final pollLink = await link.buildShortLink(parameters);

    return pollLink.shortUrl.toString();
  }

  Future<String> initDynamicLink() async {
    final instancLink = await FirebaseDynamicLinks.instance.getInitialLink();

    String? link = '';

    if (instancLink != null) {
      final Uri pollLink = instancLink.link;

      final param = pollLink.queryParameters;

      link = param["id"];
    }

    return link!;
  }
}
