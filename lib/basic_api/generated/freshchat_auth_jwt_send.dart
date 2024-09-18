// ignore_for_file: always_put_required_named_parameters_first

import '../request.dart';

/// Freshworks Auth JWT request class.
class FreshworksAuthJwtRequest extends Request {
  /// Initializes the Freshworks Auth JWT request class.
  const FreshworksAuthJwtRequest({
    required this.serviceToken,
    required this.referrer,
    required this.extraFields,
    this.service = 'freshworks_auth_jwt',
    super.msgType = 'freshworks_auth_jwt',
    super.passthrough,
    super.reqId,
  }); // Set service to the value of msgType

  /// Creates an instance from JSON.
  factory FreshworksAuthJwtRequest.fromJson(Map<String, dynamic> json) =>
      FreshworksAuthJwtRequest(
        serviceToken: json['service_token'] as int,
        referrer: json['referrer'] as String,
        extraFields: ExtraFields.fromJson(json['extra_fields']),
        passthrough: json['passthrough'] as Map<String, dynamic>?,
        reqId: json['req_id'] as int?,
      );

  /// The service for the request, same as msgType.
  final String service;

  /// Service token for the request.
  final int serviceToken;

  /// Referrer for the request.
  final String referrer;

  /// Extra fields for the request.
  final ExtraFields extraFields;

  /// Converts this instance to JSON.
  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'service_token': serviceToken,
        'referrer': referrer,
        'extra_fields': extraFields.toJson(),
        'service': service, // Add service field to JSON
        'passthrough': passthrough,
        'req_id': reqId,
      };

  /// Creates a copy of the instance with given parameters.
  @override
  FreshworksAuthJwtRequest copyWith({
    int? serviceToken,
    String? referrer,
    ExtraFields? extraFields,
    String? service,
    Map<String, dynamic>? passthrough,
    int? reqId,
  }) =>
      FreshworksAuthJwtRequest(
        serviceToken: serviceToken ?? this.serviceToken,
        referrer: referrer ?? this.referrer,
        extraFields: extraFields ?? this.extraFields,
        service: service ?? this.service, // Include service in copy
        passthrough: passthrough ?? this.passthrough,
        reqId: reqId ?? this.reqId,
      );

  /// Override equatable class.
  @override
  List<Object?> get props => <Object?>[
        serviceToken,
        referrer,
        extraFields,
        service, // Include service in props for equality
        passthrough,
        reqId,
      ];
}

/// Extra fields for the Freshworks Auth JWT request.
class ExtraFields {
  /// Initializes ExtraFields.
  const ExtraFields({
    required this.freshchatUuid,
  });

  /// Creates an instance from JSON.
  factory ExtraFields.fromJson(Map<String, dynamic> json) => ExtraFields(
        freshchatUuid: json['freshchat_uuid'] as String,
      );

  /// The Freshchat UUID.
  final String freshchatUuid;

  /// Converts this instance to JSON.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'freshchat_uuid': freshchatUuid,
      };
}
