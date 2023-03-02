import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

// {
// "idTeam": "134301",
// "idSoccerXML": "756",
// "idAPIfootball": "35",
// "intLoved": "2",
// "strTeam": "Bournemouth",
// "strTeamShort": "BOU",
// "strAlternate": "AFC Bournemouth, Athletic Football Club Bournemouth",
// "intFormedYear": "1890",
// "strSport": "Soccer",
// "strLeague": "English Premier League",
// "idLeague": "4328",
// "strLeague2": "FA Cup",
// "idLeague2": "4482",
// "strLeague3": "EFL Cup",
// "idLeague3": "4570",
// "strLeague4": "",
// "idLeague4": null,
// "strLeague5": "",
// "idLeague5": null,
// "strLeague6": "",
// "idLeague6": null,
// "strLeague7": "",
// "idLeague7": null,
// "strDivision": null,
// "strManager": "",
// "strStadium": "Vitality Stadium",
// "strKeywords": "Cherries",
// "strRSS": "",
// "strStadiumThumb": "https://www.thesportsdb.com/images/media/team/stadium/rxvwvw1420707921.jpg",
// "strStadiumDescription": "Dean Court, known as the Vitality Stadium for sponsorship purposes, is a football stadium in Bournemouth, England and the home ground of A.F.C. Bournemouth.\r\n\r\nIn 1910 Boscombe F.C. was given a piece of land by the town's Cooper-Dean family, after whom the ground was named. The land was the site of an old gravel pit, and the ground was not built in time for the start of the 1910–11 season. As a result, the club played at the adjacent King's Park until moving into Dean Court in December 1910. However, the club facilities were still not ready, and players initially had to change in a nearby hotel. Early developments at the ground included a 300-seat stand.\r\n\r\nIn 1923 the club were elected to Division Three South of the Football League, at which point they changed their name to Bournemouth & Boscombe Athletic. The first Football League match was played at Dean Court on 1 September 1923, with 7,000 watching a 0–0 draw with Swindon Town. Subsequent ground improvements were made following the purcase of fittings from the British Empire Exhibition at Wembley, which allowed the construction of a 3,700-seat stand. A covered terrace was added at the southern end of the ground in 1936.\r\n\r\nThe club's record League attendance was set on 14 April 1948, when 25,495 watched a 1–0 defeat to QPR. The overall record attendance was set on 2 March 1957, when 28,799 spectators watched an FA Cup match against Manchester United. Shortly afterwards, a roof was added to the western stand. The club also purchased more land behind the northern end of the ground, with the intention of enlarging the stand and building a leisure centre. However, the club ran out of money during its construction and abandoned the scheme in 1984. As a result, the half-built structure was demolished and housing was built on that part of the site. The club's lowest Football League attendance was set on 4 March 1986, when only 1,873 saw a 2–2 drawn with Lincoln City.\r\n\r\nThe ground was completely rebuilt in 2001, with the pitch rotated ninety degrees from its original position and the ground moved away from adjacent housing. Because the work was not finished in time for the start of the 2001–02 season, Bournemouth played their first eight games at the Avenue Stadium in nearby Dorchester. When Dean Court reopened with a game against Wrexham on 10 November, it gained its first sponsored name, becoming the Fitness First Stadium. Although it was rebuilt as a three sided stadium with a capacity of 9,600, seats were placed on the undeveloped south end in the autumn of 2005. On 24 February 2004 Bournemouth's James Hayter scored the Football League's fastest-ever hat-trick at Dean Court, scoring three goals in 2 minutes and 20 seconds during a 6–0 against Wrexham. The club sold the stadium in December 2005 in a sale-and-leaseback deal with London property company Structadene.\r\n\r\nIn the 2010–11 a temporary south stand was built, but was removed during the 2011–12 season after attendances fell. In July 2011 the stadium was renamed the Seward Stadium after the naming rights were sold to the Seward Motor Group. Following Seward entering administration in February 2012, the ground was subsequently renamed the Goldsands Stadium in a two-year deal. During the summer of 2013 a 2,400 seat stand was built on the undeveloped end of the ground as a result of the club's promotion to the Championship. In July 2013 it was named after former club striker Ted MacDougall.",
// "strStadiumLocation": "Bournemouth, England",
// "intStadiumCapacity": "11464",
// "strWebsite": "www.afcb.co.uk",
// "strFacebook": "www.facebook.com/afcbournemouth/",
// "strTwitter": "twitter.com/afcbournemouth",
// "strInstagram": "www.instagram.com/officialafcb",
// "strDescriptionEN": "AFC Bournemouth is a professional association football club based in Kings Park, Boscombe, a suburb of Bournemouth, Dorset. They are currently competing in the Championship, the second tier of English football, following relegation at the end of the 2019–20 Premier League. Formed in 1899 as Boscombe St. John's Institute, the club adopted their current name in 1971.\r\n\r\nNicknamed \"The Cherries\", Bournemouth have played their home games at Dean Court since 1910. Their home colours are red and black striped shirts, with black shorts and socks, inspired by that of Italian club A.C. Milan.\r\n\r\nAFC Bournemouth's honours include winning the second and third tiers of English football once, the Associate Members' Cup once and the Football League Third Division South Cup.\r\n\r\nThe club has spent the majority of their history bouncing between the third and fourth tiers of English football. Under manager Eddie Howe, they have risen through the pyramid; the 2015–16 season was their first ever in the top flight, and they remained there for five seasons, until and including the 2019–20 season, when they were relegated following an 18th place-finish.",
// "strDescriptionDE": null,
// "strDescriptionFR": null,
// "strDescriptionCN": null,
// "strDescriptionIT": "L'Athletic Football Club Bournemouth, noto semplicemente come Bournemouth, è una società calcistica inglese con sede nella città di Bournemouth (Dorset), militante in Football League Championship, la seconda divisione del campionato inglese di calcio.\r\n\r\nIl club è stato fondato nel 1899 e i suoi componenti sono detti Cherries (in italiano Ciliegie). Le maglie della squadra sono state rosse e bianche fino al 1971, anno in cui furono sostituite da completi con strisce rossonere verticali. Tra il 2004 e il 2005 era stato adottato un restyling delle divise, che vedeva una netta predominanza del rosso, ma dal 2006 la società ha deciso di ritornare alla versione precedente.[1]",
// "strDescriptionJP": null,
// "strDescriptionRU": null,
// "strDescriptionES": null,
// "strDescriptionPT": null,
// "strDescriptionSE": null,
// "strDescriptionNL": null,
// "strDescriptionHU": null,
// "strDescriptionNO": null,
// "strDescriptionIL": null,
// "strDescriptionPL": null,
// "strKitColour1": "#B50E12",
// "strKitColour2": "#000000",
// "strKitColour3": "",
// "strGender": "Male",
// "strCountry": "England",
// "strTeamBadge": "https://www.thesportsdb.com/images/media/team/badge/y08nak1534071116.png",
// "strTeamJersey": "https://www.thesportsdb.com/images/media/team/jersey/p4b4ry1658264909.png",
// "strTeamLogo": "https://www.thesportsdb.com/images/media/team/logo/yttutv1448813203.png",
// "strTeamFanart1": "https://www.thesportsdb.com/images/media/team/fanart/wvuypx1469485789.jpg",
// "strTeamFanart2": "https://www.thesportsdb.com/images/media/team/fanart/sxrxwp1469485821.jpg",
// "strTeamFanart3": "https://www.thesportsdb.com/images/media/team/fanart/uqqwvw1469485695.jpg",
// "strTeamFanart4": "https://www.thesportsdb.com/images/media/team/fanart/uwryss1469485747.jpg",
// "strTeamBanner": "https://www.thesportsdb.com/images/media/team/banner/sxypup1469486566.jpg",
// "strYoutube": "www.youtube.com/user/officiacherries",
// "strLocked": "unlocked"
// }
@JsonSerializable()
class TeamResponse {
  String? idTeam;
  String? idSoccerXML;
  String? idAPIfootball;
  String? intLoved;
  String? strTeam;
  String? strTeamShort;
  String? strAlternate;
  String? intFormedYear;
  String? strSport;
  String? strLeague;
  String? idLeague;
  String? strLeague2;
  String? idLeague2;
  String? strLeague3;
  String? idLeague3;
  String? strLeague4;
  String? idLeague4;
  String? strLeague5;
  String? idLeague5;
  String? strLeague6;
  String? idLeague6;
  String? strLeague7;
  String? idLeague7;
  String? strDivision;
  String? strManager;
  String? strStadium;
  String? strKeywords;
  String? strRSS;
  String? strStadiumThumb;
  String? strStadiumDescription;
  String? strStadiumLocation;
  String? intStadiumCapacity;
  String? strWebsite;
  String? strFacebook;
  String? strTwitter;
  String? strInstagram;
  String? strDescriptionEN;
  String? strDescriptionDE;
  String? strDescriptionFR;
  String? strDescriptionCN;
  String? strDescriptionIT;
  String? strDescriptionJP;
  String? strDescriptionRU;
  String? strDescriptionES;
  String? strDescriptionPT;
  String? strDescriptionSE;
  String? strDescriptionNL;
  String? strDescriptionHU;
  String? strDescriptionNO;
  String? strDescriptionIL;
  String? strDescriptionPL;
  String? strKitColour1;
  String? strKitColour2;
  String? strKitColour3;
  String? strGender;
  String? strCountry;
  String? strTeamBadge;
  String? strTeamJersey;
  String? strTeamLogo;
  String? strTeamFanart1;
  String? strTeamFanart2;
  String? strTeamFanart3;
  String? strTeamFanart4;
  String? strTeamBanner;
  String? strYoutube;
  String? strLocked;

  TeamResponse(
      {this.idTeam,
      this.idSoccerXML,
      this.idAPIfootball,
      this.intLoved,
      this.strTeam,
      this.strTeamShort,
      this.strAlternate,
      this.intFormedYear,
      this.strSport,
      this.strLeague,
      this.idLeague,
      this.strLeague2,
      this.idLeague2,
      this.strLeague3,
      this.idLeague3,
      this.strLeague4,
      this.idLeague4,
      this.strLeague5,
      this.idLeague5,
      this.strLeague6,
      this.idLeague6,
      this.strLeague7,
      this.idLeague7,
      this.strDivision,
      this.strManager,
      this.strStadium,
      this.strKeywords,
      this.strRSS,
      this.strStadiumThumb,
      this.strStadiumDescription,
      this.strStadiumLocation,
      this.intStadiumCapacity,
      this.strWebsite,
      this.strFacebook,
      this.strTwitter,
      this.strInstagram,
      this.strDescriptionEN,
      this.strDescriptionDE,
      this.strDescriptionFR,
      this.strDescriptionCN,
      this.strDescriptionIT,
      this.strDescriptionJP,
      this.strDescriptionRU,
      this.strDescriptionES,
      this.strDescriptionPT,
      this.strDescriptionSE,
      this.strDescriptionNL,
      this.strDescriptionHU,
      this.strDescriptionNO,
      this.strDescriptionIL,
      this.strDescriptionPL,
      this.strKitColour1,
      this.strKitColour2,
      this.strKitColour3,
      this.strGender,
      this.strCountry,
      this.strTeamBadge,
      this.strTeamJersey,
      this.strTeamLogo,
      this.strTeamFanart1,
      this.strTeamFanart2,
      this.strTeamFanart3,
      this.strTeamFanart4,
      this.strTeamBanner,
      this.strYoutube,
      this.strLocked});

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeamResponseToJson(this);
}
