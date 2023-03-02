// import 'package:flutter/material.dart';
// import 'package:my_techanic_core/api/auth/response/login.dart';
//
// class Team {
//   String? idTeam;
//   String? idSoccerXML;
//   String? idAPIfootball;
//   String? intLoved;
//   String? strTeam;
//   String? strTeamShort;
//   String? strAlternate;
//   String? intFormedYear;
//   String? strSport;
//   String? strLeague;
//   String? idLeague;
//   String? strLeague2;
//   String? idLeague2;
//   String? strLeague3;
//   String? idLeague3;
//   String? strLeague4;
//   String? idLeague4;
//   String? strLeague5;
//   String? idLeague5;
//   String? strLeague6;
//   String? idLeague6;
//   String? strLeague7;
//   String? idLeague7;
//   String? strDivision;
//   String? strManager;
//   String? strStadium;
//   String? strKeywords;
//   String? strRSS;
//   String? strStadiumThumb;
//   String? strStadiumDescription;
//   String? strStadiumLocation;
//   String? intStadiumCapacity;
//   String? strWebsite;
//   String? strFacebook;
//   String? strTwitter;
//   String? strInstagram;
//   String? strDescriptionEN;
//   String? strDescriptionDE;
//   String? strDescriptionFR;
//   String? strDescriptionCN;
//   String? strDescriptionIT;
//   String? strDescriptionJP;
//   String? strDescriptionRU;
//   String? strDescriptionES;
//   String? strDescriptionPT;
//   String? strDescriptionSE;
//   String? strDescriptionNL;
//   String? strDescriptionHU;
//   String? strDescriptionNO;
//   String? strDescriptionIL;
//   String? strDescriptionPL;
//   String? strKitColour1;
//   String? strKitColour2;
//   String? strKitColour3;
//   String? strGender;
//   String? strCountry;
//   String? strTeamBadge;
//   String? strTeamJersey;
//   String? strTeamLogo;
//   String? strTeamFanart1;
//   String? strTeamFanart2;
//   String? strTeamFanart3;
//   String? strTeamFanart4;
//   String? strTeamBanner;
//   String? strYoutube;
//   String? strLocked;
//
//   Team(
//       {this.idTeam,
//         this.idSoccerXML,
//         this.idAPIfootball,
//         this.intLoved,
//         this.strTeam,
//         this.strTeamShort,
//         this.strAlternate,
//         this.intFormedYear,
//         this.strSport,
//         this.strLeague,
//         this.idLeague,
//         this.strLeague2,
//         this.idLeague2,
//         this.strLeague3,
//         this.idLeague3,
//         this.strLeague4,
//         this.idLeague4,
//         this.strLeague5,
//         this.idLeague5,
//         this.strLeague6,
//         this.idLeague6,
//         this.strLeague7,
//         this.idLeague7,
//         this.strDivision,
//         this.strManager,
//         this.strStadium,
//         this.strKeywords,
//         this.strRSS,
//         this.strStadiumThumb,
//         this.strStadiumDescription,
//         this.strStadiumLocation,
//         this.intStadiumCapacity,
//         this.strWebsite,
//         this.strFacebook,
//         this.strTwitter,
//         this.strInstagram,
//         this.strDescriptionEN,
//         this.strDescriptionDE,
//         this.strDescriptionFR,
//         this.strDescriptionCN,
//         this.strDescriptionIT,
//         this.strDescriptionJP,
//         this.strDescriptionRU,
//         this.strDescriptionES,
//         this.strDescriptionPT,
//         this.strDescriptionSE,
//         this.strDescriptionNL,
//         this.strDescriptionHU,
//         this.strDescriptionNO,
//         this.strDescriptionIL,
//         this.strDescriptionPL,
//         this.strKitColour1,
//         this.strKitColour2,
//         this.strKitColour3,
//         this.strGender,
//         this.strCountry,
//         this.strTeamBadge,
//         this.strTeamJersey,
//         this.strTeamLogo,
//         this.strTeamFanart1,
//         this.strTeamFanart2,
//         this.strTeamFanart3,
//         this.strTeamFanart4,
//         this.strTeamBanner,
//         this.strYoutube,
//         this.strLocked});
//
//   factory TeamResponse.fromJson(Map<String, dynamic> json) =>
//       _$TeamResponseFromJson(json);
//
//   Map<String, dynamic> toJson() => _$TeamResponseToJson(this);
// }
//
// @immutable
// class Team {
//   final int id;
//   final String phone;
//   final String email;
//   final String name;
//   final bool registered;
//   final bool completeRegister;
//   final String? sessionToken;
//
//   const Team({
//     required this.id,
//     required this.phone,
//     required this.email,
//     required this.name,
//     required this.registered,
//     required this.completeRegister,
//     this.sessionToken,
//   });
//
//   factory LoginData.fromResponse(
//     LoginResponse? response,
//   ) =>
//       LoginData(
//         id: response?.id ?? 0,
//         phone: response?.phone ?? '',
//         email: response?.email ?? '',
//         name: response?.name ?? '',
//         registered: response?.registered ?? false,
//         completeRegister: response?.completeRegister ?? false,
//         sessionToken: response?.sessionToken ?? '',
//       );
// }
