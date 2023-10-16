//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FamilyRequestData {
  /// Returns a new [FamilyRequestData] instance.
  FamilyRequestData({
    this.name,
    this.kids = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<AppUserRequestDataFamiliesInner> kids;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FamilyRequestData &&
     other.name == name &&
     other.kids == kids;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (kids.hashCode);

  @override
  String toString() => 'FamilyRequestData[name=$name, kids=$kids]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'kids'] = this.kids;
    return json;
  }

  /// Returns a new [FamilyRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FamilyRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FamilyRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FamilyRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FamilyRequestData(
        name: mapValueOfType<String>(json, r'name'),
        kids: AppUserRequestDataFamiliesInner.listFromJson(json[r'kids']),
      );
    }
    return null;
  }

  static List<FamilyRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FamilyRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FamilyRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FamilyRequestData> mapFromJson(dynamic json) {
    final map = <String, FamilyRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FamilyRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FamilyRequestData-objects as value to a dart map
  static Map<String, List<FamilyRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FamilyRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FamilyRequestData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

