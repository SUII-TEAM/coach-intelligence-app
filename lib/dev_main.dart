import 'package:flutter/material.dart';
import 'core/flavors/flavors_config.dart';
import 'main.dart' as runner;

void main() {
  FlavorConfig(
    color: Colors.indigo.shade50,
    name: 'DEV',
    location: BannerLocation.topStart,
    variables: <String, dynamic>{
      // 'baseUrl':'https://true-hr-test.true-cons.net/api/v1',
    },
  );
  runner.main();
}
