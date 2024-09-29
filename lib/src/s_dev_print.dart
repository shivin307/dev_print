import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';

devPrint(dynamic message, {String? tag}) {
  if (kDebugMode) {
    log(_formatMessage(message, tag));
  }
}

String _formatMessage(dynamic message, String? tag) {
  final String formattedMessage = _formatDynamicMessage(message);
  final String formattedTag =
      (tag != null && tag.isNotEmpty) ? '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t------- $tag -------\n' : '';

  return '$formattedTag(START)⤵⤵⤵\n\n$formattedMessage\n\n(END)⤴⤴⤴';
}

String _formatDynamicMessage(dynamic message) {
  if (message == null) {
    return 'null message';
  } else if (message is String) {
    return message;
  } else if (message is bool) {
    return message ? 'true' : 'false';
  } else if (message is Map || message is List) {
    try {
      return const JsonEncoder.withIndent('  ').convert(message);
    } catch (e) {
      return 'Error formatting JSON: ${e.toString()}';
    }
  } else {
    return message.toString();
  }
}
