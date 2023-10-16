//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthSendEmailConfirmationPost200Response {
  /// Returns a new [AuthSendEmailConfirmationPost200Response] instance.
  AuthSendEmailConfirmationPost200Response({
    this.email,
    this.sent,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  AuthSendEmailConfirmationPost200ResponseSentEnum? sent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthSendEmailConfirmationPost200Response &&
     other.email == email &&
     other.sent == sent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (sent == null ? 0 : sent!.hashCode);

  @override
  String toString() => 'AuthSendEmailConfirmationPost200Response[email=$email, sent=$sent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.sent != null) {
      json[r'sent'] = this.sent;
    } else {
      json[r'sent'] = null;
    }
    return json;
  }

  /// Returns a new [AuthSendEmailConfirmationPost200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthSendEmailConfirmationPost200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthSendEmailConfirmationPost200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthSendEmailConfirmationPost200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthSendEmailConfirmationPost200Response(
        email: mapValueOfType<String>(json, r'email'),
        sent: AuthSendEmailConfirmationPost200ResponseSentEnum.fromJson(json[r'sent']),
      );
    }
    return null;
  }

  static List<AuthSendEmailConfirmationPost200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthSendEmailConfirmationPost200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthSendEmailConfirmationPost200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthSendEmailConfirmationPost200Response> mapFromJson(dynamic json) {
    final map = <String, AuthSendEmailConfirmationPost200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthSendEmailConfirmationPost200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthSendEmailConfirmationPost200Response-objects as value to a dart map
  static Map<String, List<AuthSendEmailConfirmationPost200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthSendEmailConfirmationPost200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthSendEmailConfirmationPost200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AuthSendEmailConfirmationPost200ResponseSentEnum {
  /// Instantiate a new enum with the provided [value].
  const AuthSendEmailConfirmationPost200ResponseSentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const true_ = AuthSendEmailConfirmationPost200ResponseSentEnum._(r'true');

  /// List of all possible values in this [enum][AuthSendEmailConfirmationPost200ResponseSentEnum].
  static const values = <AuthSendEmailConfirmationPost200ResponseSentEnum>[
    true_,
  ];

  static AuthSendEmailConfirmationPost200ResponseSentEnum? fromJson(dynamic value) => AuthSendEmailConfirmationPost200ResponseSentEnumTypeTransformer().decode(value);

  static List<AuthSendEmailConfirmationPost200ResponseSentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthSendEmailConfirmationPost200ResponseSentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthSendEmailConfirmationPost200ResponseSentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AuthSendEmailConfirmationPost200ResponseSentEnum] to String,
/// and [decode] dynamic data back to [AuthSendEmailConfirmationPost200ResponseSentEnum].
class AuthSendEmailConfirmationPost200ResponseSentEnumTypeTransformer {
  factory AuthSendEmailConfirmationPost200ResponseSentEnumTypeTransformer() => _instance ??= const AuthSendEmailConfirmationPost200ResponseSentEnumTypeTransformer._();

  const AuthSendEmailConfirmationPost200ResponseSentEnumTypeTransformer._();

  String encode(AuthSendEmailConfirmationPost200ResponseSentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuthSendEmailConfirmationPost200ResponseSentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuthSendEmailConfirmationPost200ResponseSentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'true': return AuthSendEmailConfirmationPost200ResponseSentEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AuthSendEmailConfirmationPost200ResponseSentEnumTypeTransformer] instance.
  static AuthSendEmailConfirmationPost200ResponseSentEnumTypeTransformer? _instance;
}


