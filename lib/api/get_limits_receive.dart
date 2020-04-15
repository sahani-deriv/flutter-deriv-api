/// generated automatically from flutter_deriv_api|lib/api/get_limits_receive.json
import 'package:json_annotation/json_annotation.dart';

import 'response.dart';

part 'get_limits_receive.g.dart';

/// JSON conversion for 'get_limits_receive'
@JsonSerializable(nullable: false, fieldRename: FieldRename.snake)
class GetLimitsResponse extends Response {
  /// Initialize GetLimitsResponse
  const GetLimitsResponse({
    this.getLimits,
    Map<String, dynamic> echoReq,
    Map<String, dynamic> error,
    String msgType,
    int reqId,
  }) : super(
          echoReq: echoReq,
          error: error,
          msgType: msgType,
          reqId: reqId,
        );

  /// Creates instance from JSON
  factory GetLimitsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetLimitsResponseFromJson(json);

  // Properties
  /// Trading limits of real account user
  final Map<String, dynamic> getLimits;

  /// Converts to JSON
  @override
  Map<String, dynamic> toJson() => _$GetLimitsResponseToJson(this);

  /// Creates copy of instance with given parameters
  @override
  GetLimitsResponse copyWith({
    Map<String, dynamic> getLimits,
    Map<String, dynamic> echoReq,
    Map<String, dynamic> error,
    String msgType,
    int reqId,
  }) =>
      GetLimitsResponse(
        getLimits: getLimits ?? this.getLimits,
        echoReq: echoReq ?? this.echoReq,
        error: error ?? this.error,
        msgType: msgType ?? this.msgType,
        reqId: reqId ?? this.reqId,
      );

  /// Override equatable class
  @override
  List<Object> get props => null;
}