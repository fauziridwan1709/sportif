import 'package:core/src/api/soccer/response/team.dart';
import 'package:json_annotation/json_annotation.dart';

part 'all_team.g.dart';

//{
//             "idTeam": "133601",
//             "idSoccerXML": "5",
//             "idAPIfootball": "66",
//             "intLoved": null,
//             "strTeam": "Aston Villa",
//             "strTeamShort": "AVL",
//             "strAlternate": "Aston Villa FC",
//             "intFormedYear": "1874",
//             "strSport": "Soccer",
//             "strLeague": "English Premier League",
//             "idLeague": "4328",
//             "strLeague2": "FA Cup",
//             "idLeague2": "4482",
//             "strLeague3": "EFL Cup",
//             "idLeague3": "4570",
//             "strLeague4": "",
//             "idLeague4": null,
//             "strLeague5": "",
//             "idLeague5": null,
//             "strLeague6": "",
//             "idLeague6": null,
//             "strLeague7": "",
//             "idLeague7": null,
//             "strDivision": null,
//             "strManager": "",
//             "strStadium": "Villa Park",
//             "strKeywords": "Villa, The Villa, The Villans and The Lions",
//             "strRSS": "http://www.football365.com/aston-villa/rss",
//             "strStadiumThumb": "https://www.thesportsdb.com/images/media/team/stadium/uwyqtq1420238705.jpg",
//             "strStadiumDescription": "Villa Park is a football stadium in Aston, Birmingham, England, with a seating capacity of 42,682. It has been the home of Premier League side Aston Villa since 1897. The ground is less than a mile from both Witton and Aston railway stations and has hosted sixteen England internationals at senior level, the first in 1899 and the most recent in 2005. Villa Park has hosted 55 FA Cup semi-finals, more than any other stadium.\r\n\r\nIn 1897, Aston Villa moved into the Aston Lower Grounds, a sports ground in a Victorian amusement park in the former grounds of Aston Hall, a Jacobean stately home. The stadium has gone through various stages of renovation and development, resulting in the current stand configuration of the Holte End, Trinity Road Stand, North Stand and Doug Ellis Stand. The club has preliminary plans to redevelop the North Stand, starting from the summer of 2023. This would increase the capacity of Villa Park from 42,682 to around 55,000. Such plans also include the construction of an accompanying hotel, museum, and 'megastore'.\r\n\r\nBefore 1914, a cycling track ran around the perimeter of the pitch where regular cycling meetings were hosted as well as athletic events. Aside from football-related uses, the stadium has seen various concerts staged along with other sporting events including boxing matches and international rugby league and rugby union matches. In 1999, the last final of the UEFA Cup Winners' Cup took place at Villa Park. Villa Park also hosted the 2012 FA Community Shield, as Wembley Stadium was in use for the final of the Olympic football tournament.",
//             "strStadiumLocation": "Aston, Birmingham",
//             "intStadiumCapacity": "42785",
//             "strWebsite": "www.avfc.co.uk",
//             "strFacebook": "www.facebook.com/avfcofficial",
//             "strTwitter": "twitter.com/avfcofficial",
//             "strInstagram": "instagram.com/avfcofficial",
//             "strDescriptionEN": "Aston Villa Football Club is a professional football club based in Aston, Birmingham, England. The club competes in the Premier League, the top tier of the English football league system. Founded in 1874, they have played at their home ground, Villa Park, since 1897. Aston Villa are one of the oldest and most successful clubs in England, being a founding member of the Football League in 1888 and of the Premier League in 1992. \r\n\r\nThey are one of the five English clubs to have won the European Cup, in 1981–82. They have also won the Football League First Division seven times, the FA Cup seven times, the League Cup five times, and the European (UEFA) Super Cup once. The club are currently ranked 5th in the all-time English top flight table, since its creation in 1888.\r\n\r\nVilla have a fierce local rivalry with Birmingham City and the Second City derby between the teams has been played since 1879. The club's traditional kit colours are claret shirts with sky blue sleeves, white shorts and sky blue socks. Their traditional club badge is of a rampant lion. The club is currently owned by the NSWE group, a company owned by the Egyptian billionaire Nassef Sawiris and the American billionaire Wes Edens.",
//             "strDescriptionDE": null,
//             "strDescriptionFR": null,
//             "strDescriptionCN": null,
//             "strDescriptionIT": "L'Aston Villa Football Club, noto semplicemente come Aston Villa,[1] è una società calcistica inglese con sede nel quartiere di Aston della città di Birmingham. Milita in Premier League, la massima serie del campionato inglese di calcio.\r\n\r\nFondato nel 1874, gioca nell'attuale stadio, il Villa Park, dal 1897. Fu tra i membri fondatori della Football League nel 1888 e della Premier League nel 1992.[2] Nel luglio 2018 l'egiziano Nassef Sawiris ha sostituito Tony Xia nel ruolo di presidente, in seguito all'acquisizione di una quota di controllo del 55% da parte di NSWE, una società posseduta e controllata congiuntamente dal gruppo di Sawiris NNS e dal miliardario americano Wes Edens[3]. Nell'agosto 2019, le azioni rimanenti di Tony Xia sono state acquistate dalla NSWE, che ha assunto quindi il pieno controllo del club.[4]\r\n\r\nL'Aston Villa è uno dei più antichi e vincenti club d'Inghilterra. È inoltre una delle cinque squadre inglesi ad essersi aggiudicato la Coppa dei Campioni/Champions League.[5] È l’ottavo club inglese per successi calcistici (dopo Manchester United, Liverpool, Arsenal, Chelsea, Manchester City, Tottenham e Everton), avendo ottenuto 23 trofei principali,[6] anche se la maggior parte di questi arrivarono prima della Seconda guerra mondiale. È la seconda squadra per numero di stagioni in First Division/Premier League, dietro all'Everton e davanti al Liverpool.\r\n\r\nLa squadra ha una antichissima rivalità con il Birmingham City, altro club della città, e con le altre squadre della contea delle West Midlands (West Bromwich Albion, Wolverhampton, Coventry City e Walsall). Il primo derby di Birmingham, giocato nel 1879, ha visto la vittoria finale dell'Aston Villa per 1-0.[7]\r\n\r\nI colori tradizionali del club sono il bordeaux ed il celeste (in inglese claret & blue). Diversi sono stati gli stemmi utilizzati, tutti caratterizzati dalla presenza di un leone rampante. Lo storico simbolo circolare della squadra che vinse la Coppa dei Campioni 1981-1982 fu sostituito qualche anno più tardi da uno scudo a righe bordeaux e celesti con il leone al centro. Nel 2007 lo stemma venne ulteriormente modificato inserendo il leone d'oro rampante su uno sfondo celeste; nella parte inferiore il motto Prepared. Nel 2016 è stato tolto il motto Prepared ed il leone è stato aumentato nelle dimensioni.[8]",
//             "strDescriptionJP": null,
//             "strDescriptionRU": null,
//             "strDescriptionES": null,
//             "strDescriptionPT": null,
//             "strDescriptionSE": null,
//             "strDescriptionNL": null,
//             "strDescriptionHU": null,
//             "strDescriptionNO": null,
//             "strDescriptionIL": null,
//             "strDescriptionPL": null,
//             "strKitColour1": "#95BFE5",
//             "strKitColour2": "#670E36",
//             "strKitColour3": "",
//             "strGender": "Male",
//             "strCountry": "England",
//             "strTeamBadge": "https://www.thesportsdb.com/images/media/team/badge/gp6hm41660559699.png",
//             "strTeamJersey": "https://www.thesportsdb.com/images/media/team/jersey/56h02j1657747822.png",
//             "strTeamLogo": "https://www.thesportsdb.com/images/media/team/logo/wtsxus1424375522.png",
//             "strTeamFanart1": "https://www.thesportsdb.com/images/media/team/fanart/trxryx1421747670.jpg",
//             "strTeamFanart2": "https://www.thesportsdb.com/images/media/team/fanart/ywquwr1421747828.jpg",
//             "strTeamFanart3": "https://www.thesportsdb.com/images/media/team/fanart/cal7fg1485707947.jpg",
//             "strTeamFanart4": "https://www.thesportsdb.com/images/media/team/fanart/qvpvwq1421747716.jpg",
//             "strTeamBanner": "https://www.thesportsdb.com/images/media/team/banner/vrttsr1421749709.jpg",
//             "strYoutube": "www.youtube.com/user/avfcofficial",
//             "strLocked": "unlocked"
//         }

@JsonSerializable()
class AllTeamResponse {
  List<TeamResponse>? teams;

  AllTeamResponse({
    this.teams,
  });

  factory AllTeamResponse.fromJson(Map<String, dynamic> json) =>
      _$AllTeamResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllTeamResponseToJson(this);
}
