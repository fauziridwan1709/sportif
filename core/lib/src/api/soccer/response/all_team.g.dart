// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTeamResponse _$AllTeamResponseFromJson(Map<String, dynamic> json) =>
    AllTeamResponse(
      teams: (json['teams'] as List<dynamic>?)
          ?.map((e) => TeamResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllTeamResponseToJson(AllTeamResponse instance) =>
    <String, dynamic>{
      'teams': instance.teams,
    };
