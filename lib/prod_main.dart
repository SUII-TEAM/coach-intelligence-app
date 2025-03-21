import 'package:flutter/material.dart';
import 'core/flavors/flavors_config.dart';
import 'main.dart' as runner;

void main() {
  FlavorConfig(
    color: const Color(0xFFF4F2EE),
    name: 'PROD',
    variables: <String, dynamic>{
      // 'baseUrl': 'https://true-hr-demo.true-cons.net/api/v1',
      // 'baseUrl': 'https://true-hr.true-cons.net/api/v1',
    },
  );
  runner.main();
}
