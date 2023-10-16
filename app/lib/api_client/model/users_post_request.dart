//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UsersPostRequest {
  /// Returns a new [UsersPostRequest] instance.
  UsersPostRequest({
    required this.email,
    required this.username,
    required this.password,
  });

  String email;

  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsersPostRequest &&
     other.email == email &&
     other.username == username &&
     other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (username.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'UsersPostRequest[email=$email, username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'username'] = this.username;
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [UsersPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsersPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsersPostRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsersPostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsersPostRequest(
        email: mapValueOfType<String>(json, r'email')!,
        username: mapValueOfType<String>(json, r'username')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<UsersPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsersPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsersPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsersPostRequest> mapFromJson(dynamic json) {
    final map = <String, UsersPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsersPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsersPostRequest-objects as value to a dart map
  static Map<String, List<UsersPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsersPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsersPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'username',
    'password',
  };
}

