-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Jan 2018 um 07:13
-- Server Version: 5.5.27
-- PHP-Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `socnet`
--
DROP DATABASE IF EXISTS `socnet`;
CREATE DATABASE `socnet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `socnet`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chatnachricht`
--

CREATE TABLE IF NOT EXISTS `chatnachricht` (
  `C_ID` int(11) NOT NULL,
  `CHATRAUM` int(11) NOT NULL,
  PRIMARY KEY (`C_ID`,`CHATRAUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `chatnachricht`
--

INSERT INTO `chatnachricht` (`C_ID`, `CHATRAUM`) VALUES
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chatraum`
--

CREATE TABLE IF NOT EXISTS `chatraum` (
  `CR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(80) NOT NULL,
  `Gueltig` tinyint(1) NOT NULL,
  PRIMARY KEY (`CR_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `chatraum`
--

INSERT INTO `chatraum` (`CR_ID`, `Name`, `Gueltig`) VALUES
(0, 'Technik-Freaks', 1),
(1, 'Hanfburg', 1),
(2, 'Nachbarschaftskrieg', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kommentar`
--

CREATE TABLE IF NOT EXISTS `kommentar` (
  `K_ID` int(11) NOT NULL,
  `GefaelltMir` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `kommentar`
--

INSERT INTO `kommentar` (`K_ID`, `GefaelltMir`) VALUES
(25, 1),
(26, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `medien`
--

CREATE TABLE IF NOT EXISTS `medien` (
  `M_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Dateipfad` varchar(80) NOT NULL,
  `Dateiname` varchar(80) NOT NULL,
  `Bild` longblob NOT NULL,
  PRIMARY KEY (`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `nachricht`
--

CREATE TABLE IF NOT EXISTS `nachricht` (
  `N_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Inhalt` longtext NOT NULL,
  PRIMARY KEY (`N_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Daten für Tabelle `nachricht`
--

INSERT INTO `nachricht` (`N_ID`, `Inhalt`) VALUES
(0, 'Ich habe seit einigen Tage ein risen Problem beim Radio Empfang. Ich bekomme Sender unterhalb 100 MHz rein und oberhalb 106,0 w?rde ich sagen. Also Antenne D?sseldorf bekomme ich nicht mehr rein, bigFM findet der Suchlauf nicht mal, 1live l?uft allerdings wieder super. Als Radio habe ich ein Denon CEOL N8, also kein billiger Kram. Unter dem Dach (oberhalb 3. OG; ganz normale Dachziegel;Dach aus Holzbalken) sitzt eine UKW Ring Dipol Antenne mit 50cm Durchmesser wie man sie ?berall f?r 15-20? kaufen kann. Diese geht auf meinen Sat Multischalter und versorgt damit das ganze Haus. Und damit per Antennendose auch mein Radio.  Aufgebaut wurde das ganze vor ca. 2 Jahren und hat bis vor ein paar Tagen (max. 2 Wochen) super funktioniert.  Was kann das sein? Wo soll ich anfangen zu suchen?'),
(1, 'Moin,  als Erstes w?rde ich mal einen einfachen Draht von ca. 1m L?nge als Antenne benutzen. Wenn der Empfang damit deutlich besser wird, liegts def. an der Antenne und nicht am Tuner. Den WDR musst Du in D?dorf schon mit einer B?roklammer kriegen... Dann mal schauen ob nicht irgendein Witzbold den Dipol vom Multiswitch getrennt hat o.?. Wenn da nix auff?lliges ist, mal die Kabelage/Stecker auf Br?che pr?fen und dabei den Multiswitch mal mit einer Oma rausbr?cken. Also den Dipol direkt an das Kabel h?ngen welches zu Deiner Dose geht. Damit kannst Du die Kette Dipol->Tuner pr?fen. '),
(2, 'Also die 1m lange "B?roklammer" (1,5mm Cu-Draht) hat leider KEINE wirkliche Verbesserung gebracht. Also weder 1live, noch mein "Haus Sender".  Sieht eher nicht gut aus, oder? Ich habe gelesen da? DIESE Denon Serie Probleme mit dem Netzteil haben kann, kann sich sowas auf den Tuner auswirken? Alles andere (Internet-Radio, USB, CD usw.) geht ohne Probleme.'),
(3, 'Moin,  dann wirds weniger an der Antenne liegen, der WDR 1-5 sollte wenn dann gleich gut bzw. schlecht reinkommen. Die kommen alle ?ber Langenberg und sollten bei Dir selbst mit der Behelfsantenne klar reinkommen.  Es kann nat?rlich sein, dass der Denon durch einen internen Netzteildefekt sein eigenes St?rsignal erzeugt und sich somit den Tuner zum?llt. W?re mit einem externen Tuner zu testen.  Falls das der Fall ist, ist nat?rlich guter rat teuer..... Von den Abmessungen her k?nnte etwas aus den Midiserien div. Herstaller passen, ist nur eine Frage der Optik.  Alternativ ist mir gerade noch eingefallen, ob nicht jemand in der Nachbarschaft so einen tollen UKW-Sender betreibt um MP3geraffel in sein Radio einzuspeisen. Die Teile streuen teilweise ungemein und haben Reichweiten von 15-20m. Das w?rde erkl?ren warum das Problem nicht das komplette Frequenzband betrift bzw. nicht gleichm?ssig.  Das wird aber recht schwer sein zu ergr?nden.'),
(4, 'So, es liegt also definitiv am Ger?t.  Habe eben eine andere Analge bekommen und angeschlossen, Radio funktioniert ?ber den kompletten Frequenz Bereich 1a!  Habe eben Denon angeschrieben, auf den m?glichen Serien Fehler angesprochen, mal sehen was die jetzt draus machen.'),
(5, 'w?rde mich mal interessieren wie Denon reagiert, gib mal R?ckmeldung.'),
(6, 'jo, mache ich.'),
(7, 'Hallo, ich m?chte gerne meinen ersten Grow starten.  Allerdings bin ich noch sehr unerfahren, deswegen wollte ich um Rat fragen.  Ich m?chte vorerst 3-4 Pflanzen anbauen, geht wahrscheinlich in Richtung "Bubble Gum".  Ich m?chte mir einen fertigen Schrank zulegen und diesen ausbauen.  Welche Fl?che sollte der Schrank haben? Wieviel Watt sollten die Lampen haben?  Welche AKF auf die Wattzahl der Lampe? Ist es m?glich den Ausgangs des AKF auch einfach im Zimmer h?ngen zu haben, ohne das dieser permanent Luft von Au?en bekommt? '),
(8, 'Die meisten deiner Fragen h?ngen nicht davon ab, wie viele Pflanzen du anbauen m?chtest, sondern wie viel in Gramm du ernten m?chtest bzw. musst, um deinen (Eigen)bedarf zu decken. Wie viel Platz ist vorhanden und wo soll der Schrank sp?ter stehen?   Benutz hier mal die interne Suchfunktion und f?ttere sie mit: Pax   Fensterverkofferung mit direkter Abluft bzw. frischer Zuluft ist ab einem bestimmten Pflanzen zu Raumgr??e - Verh?ltnis zwingend erforderlich.  Fenster auf Kipp ist imo schon bei relativen kleinen Anlagen oftmals erforderlich, damit sich der Raum nicht ?berheizt vor allem aber die RLF nicht zu stark ansteigt.'),
(9, 'Hallo, danke f?r deine Antwort. Mir ist erstmal nicht so wichtig, was genau dabei raus kommt.  Platz ist ausreichend vorhanden, sp?ter soll der Schrank in meinem Zimmer stehen ...  Vielleicht reichen auch 2-3 Pflanzen. '),
(10, 'Wir brauchen schon einen Anhaltspunkt, wenn du eine Empfehlung f?r dein Equipment willst.  Die Anzahl der Pflanzen ist jetzt nicht so entscheidend, google mal nach Scrog (=Anbautechnik), dann weisst du warum.  Was ist denn dein Budget? bzw was f?r laufende Kosten/Monat sind f?r dich akzeptabel?'),
(11, 'Man k?nnte dir jetzt zwischen 150 und 1000 Watt Setups wirklich alles empfehlen, weil du einfach zu unspezifisch bist.  Wenn du wenig Geld ausgeben willst und kein Bedarf zu decken ist, es einfach nur so ein Spielkram-Projekt werden soll, dann orientiere dich an allen Grow Reports hier auf der Burg in den entsprechenden Unterforen bis 150 Watt.  Danach w?re die n?chste Klasse 250-400 Watt und wenn?s etwas mehr werden soll 600-1000 Watt und in Abh?ngigkeit deines Budgets kann man da an jedem Setup unabh?ngig von der Gr??e noch sehr viel mehr an Technik rein stecken, wenn man Bock drauf hat.  Entscheide dich erst mal selbst, wie viel du ernten willst / wof?r du ?berhaupt einen Schrank ben?tigst und was du an Geld zur Verf?gung hast, damit du dir ein paar Beispiele angucken kannst. Oder bzw. guck dir erst ein paar Reports an und entscheide dich dann.  Es gibt hier ausreichend gute Reports mit sch?n bebilderten Anleitungen, die man f?r sich fast 1:1 umsetzen kann.  Da du selbst angibst ?berhaupt keine Ahnung von den Pflanzen zu haben, kommst du ohnehin nicht wirklich drum herum, dir solche Reports durchzulesen, um in die Materie einzutauchen.   Die Fragen er?brigen sich dann auch von allein, wenn du dir mal einen groben ?berblick verschaffst ...'),
(12, 'Ich habe an ein Setup von 250-400 Watt gedacht. Mein Budget bis 300 Euro. Ich denke 15-20 Euro zus?tzliche Stromkosten sind akzeptabel.  200-300 Gramm w?ren nicht schlecht, gerne nat?rlich mehr.  PS: Ich bin bereits dabei mich in die Materie ein wenig einzulesen.'),
(13, 'Dein Budget ist wirklich am untersten Limit f?r dein gew?nschtes Setup. Vergiss bei allem Geiz nicht, dass h?here Anschaffungskosten die laufenden Kosten senken k?nnen (zB Anschaffung einer separaten Lampe f?r den Wuchs = Stromersparnis) bzw Lebensqualit?t verbessern k?nnen (L?fterlautst?rke!)  Wenn man das Setup auf das mindeste beschr?nkt, k?nnte es zB so aussehen:  1 x 250W HPS f?r Bl?te (und zwangsl?ufig Vegetationsphase) 1x konv. VSG 1x Reflektor 80?   L?fter + AKF+Umluft 150?   Substrat + D?nger + Samen + Kleinteile  100? ________________________________________ 330?  Damit hast du immer noch keinen Schrank oder Zelt und nur die einfachst denkbare Ausstattung.  Sp?testens wenn du die Lautst?rke des L?fters h?rst, wirst du das erste Mal ?berlegen, ob du nicht lieber ein bischen mehr Geld investiert h?ttest.   Deine Stromkosten w?rden im Schnitt bei 35?-40?/Monat liegen...'),
(14, 'Ich empfehle Dir die PL-L Starlightarmatur 4x55w 865er! (125.-) Ideal f?r Anf?nger und Schr?nke, weil weniger Aufwand und Hitze. Plug ''n Play! Dann reicht auch ein kleines L?ftungsset f?r unter 100.- Du brauchst dann nur noch 830er Lampen f?r die Bl?te und einen Schwenk-Ventilator (Es gibt da einen f?r unter 30.- aber ich empfehle den Honeywell HT-354E f?r ca. 50.- der ist sein Geld echt wert!) Wenn Du mit 400 Watt arbeiten willst brauchst Du auch ne wesentlich bessere L?ftung - dann wird es teuer! Und von 250 Watt MH in der Vegi halte ich ehrlich gesagt nicht viel, weil Spargel-Alarm! Unter den PLL''s werden die Plants deutlich buschiger!'),
(15, 'es ist jetzt schon mehrfach passiert dass mein Nachbar mit seiner Drohne ?ber meinen Garten geflogen ist. einmal bin ich sehr erschrocken weil das Ding recht laut summt. ein andermal hatte ich G?ste - Kaffee und Kuchen ...- und wir f?hlten uns bel?stig, weil das Ding auch eine Kamera unten dran h?ngen hat.  Kann ich das Ding irgendwie abschie?en ? Oder soll ich mit dem nachbarn sprechen. problem: ich wei? nicht genau wer es ist, denn derjenige der die drohne steuert ist nicht zu sehen. gibt dazu Erfahrungen ?'),
(16, 'Kurz gesagt, dieser Nachbar macht sich strafbar. Er darf nicht einfach mit so einem Ding mal fr?hlich ?ber ein fremdes Grundst?ck fliegen. Leider darf man, auch wenn es einem in den Fingern kribbelt, die Drohne auch nicht abschie?en. Was du machen kannst ist, sehr genau zu beobachten, wo das Ding hin fliegt. Irgendwann muss es ja mal wieder zum Besitzer. Oder auch in der Nachbarschaft herumfragen, ob jemand wei?, wer der Typ ist. Klar kann es passieren, dass du dann auch direkt mit dem ?belt?ter sprichst, der das dann h?chst warscheinlich nicht zugeben wird. Aber da kann man ja in der Unterhaltung allgemein einflie?en lassen, dass man die Drohne fotografiert und damit zur Polizei geht. "Die" finden dann schon raus, wem das Ding geh?rt und dann hagelt es eine Strafanzeige...'),
(17, 'du kannst das Ding ?ber dir mit einem Stock "vom Himmel holen", denn niemand hat dich oder dein Grundst?ck zu fotografieren!!!!'),
(18, 'Hallo, beobachte mal wohin die Drohne fliegt, und dann sprich mit diesem neugierigen Nachbarn. Es ist gesetzlich verboten Drohen ?ber fremde Gr?ndst?cke fliegen zu lassen, zumal mit einer Kamera. Ich w?rde mal in der Nachbarschaft herumfrage, ob denen auch was aufgefallen ist. Anzeige bei der Polizei gegen Unbekannt bringt wahrscheinlich nichts. Wenn Du also nicht herausfinden kannst wer der ?belt?ter ist, hol die Drohne runter wenn Du kannst (Stock, Wasserschlauch)'),
(19, 'Die Drohne kommt aus Richtung eines Wohnblocks, dorthin verschwindet sie auch immer. Aber sie fliegt um das Geb?ude herum, so dass ich nicht wei? wo sie landet. Kann eine Drohne auf einem Balkon oder einer Dachterrasse landen ?  Die von Boston genannte Seite hab ich zuerst gefunden, von dort aus bin ich ins Forum gekommen. Trotzdem dank f?r die Info.  Ich habe jetzt mal zwei St?cke mit einer Schnur pr?pariert, das ist fixer als einen Wasserhahn aufmachen. Danke nachmal f?r eure tipps !'),
(20, 'Frage: Kann eine Drohne auf einem Balkon oder einer Dachterrasse landen ?   Antwort: Ja !'),
(21, 'nur so als Anregung f?rs Forum, macht doch mehr infos zu Kameradrohnen, ?berwachungskameras, dashcams etc. Das Thema ist hoch aktuell und steht in direktem Zusammenhang mit Nachbarschaftsproblemen, zerkratzten Autos, Abfall auf dem Rasen ...'),
(22, 'Drohnen sind ein tolles Sportger?t. Aber es sollte nur da verwendet werden wo es erlaubt ist. In einem Wohngebiet zu fliegen oder den Nachbarn damit aus zu spionieren ist neurotischer Quatsch !'),
(23, 'Wenn der Besitzer nicht zu sehen ist und die Drohne sich im Illegalen Bereich sich bewegt, dann einfach abschie?en. Ich w?rde mir ne Softair Waffe kaufen oder ein Angelnetz und es ?ber die Drohne werfen. Dann das Ding so lange als Geisel behalten bis sich der Besitzer meldet und Sie ihn mit einer Anzeige drohen.  Ein gro?er Ventilator brings die Dinger auch ganz sch?n ins Schwitzen wenn es sich um kleine Spielzeug-Drohnen handelt.  Ich besitze selbst eine Profi-Drohne (speziell f?r Landschaft-Fotos), w?rde aber nie auf die Idee kommen damit ?ber die Nachbarn zu fliegen ohne eine Mindesth?he von mindestens 50m einzuhalten.'),
(24, 'die Dinger summen recht laut, man ist also gewarnt wenn die Drohne zu nahe kommt. Ein Angelnetz wirft man "nach unten" , das ist f?r Drohnen nicht geeignet. Alles was isch einigerma?end genau werfen l?sst ist wohl brauchbar. Ein Wasserschlauch mit einer D?se dran spritzt ganz sch?n weit, das k?nnte auch wirksam sein.'),
(25, 'Ach so muss ich das reparieren. Einfach einen Acrylschlauch nehmen und die Einzelteile draufstecken.'),
(26, 'Hey, wo kann man denn diese lustigen Figuren kreieren?'),
(27, 'Liebe Jana,   ich wei?, Du bist ?lter. Dennoch finde ich Dich sehr liebenswert. Ich m?chte mich sehr gern mit Dir treffen. Ich seh Dich ja sonst nur am Arbeitsplatz. Bitte schreib mir, wann Du mal Zeit f?r einen Kaffee hast.   Dein J?rg. ');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  `Vorname` varchar(40) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Passwort` char(255) NOT NULL,
  `EMail` varchar(80) NULL,
  `GebDatum` date NULL,
  `Geschlecht` tinyint(1) NULL,
  `Status` tinyint(1) NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`P_ID`, `Name`, `Vorname`, `Username`, `Passwort`, `EMail`, `GebDatum`, `Geschlecht`, `Status`) VALUES
(0, 'Alisch', 'Sven', 'svenali', 'geheim', 'sven.alisch@mail.de', '1978-03-09', 0, 1),
(1, 'Alisch', 'Stefan', 'stefan', '123456', 'stefan.alisch@t-online.de', '1983-02-10', 0, 1),
(2, 'Kiechle', 'Ignaz', 'ignazius', 'iggypop', 'iggy666@popkonto.de', '1946-10-10', 0, 0),
(3, 'Funk', 'Barbara', 'babsi', 'bibbi876', 'babsi@gmx.net', '1985-07-16', 1, 0),
(4, 'Bird', 'Biggy', 'biggylein', 'birdy@93', 'biggy@wegwerfmail.de', '2001-06-21', 1, 0),
(5, 'M?ller', 'Mia', 'miame', 'onchao', 'mieandme@hotmail.com', '2002-10-30', 1, 0),
(6, 'Stenzel', 'Yuko', 'yuko', 'ymiaonchaz', 'yuko2001@hotmail.com', '2003-02-01', 1, 1),
(7, 'Roganski', 'Max', 'maximilian', 'maximaxi', 'maximaxi@berlin.de', '1956-09-17', 0, 1),
(8, 'Sager', 'Stefan', 'Sheancell', 'eeM0ei2P', 'StephanSaenger@einrot.com', '1934-09-03', 0, 0),
(9, 'Abt', 'Jana', 'Tergelet', 'OhKaing9iP', 'JanaAbt@einrot.com', '1963-04-12', 1, 0),
(10, 'Braun', 'Florian', 'Whinge', 'Oolai6bah6qu', 'FlorianBraun@cuvox.de', '2008-05-03', 0, 0),
(11, 'Vogt', 'Stephan', 'Coloody', 'Vai4eivoo', 'StephanVogt@einrot.com', '1990-05-22', 0, 0),
(12, 'Mahler', 'Katja', 'Hathand', 'yee5Xook0', 'KatjaMahler@einrot.com', '2001-01-01', 1, 0),
(13, 'Wirth', 'Maria', 'Fass1998', 'ai4quo0Iewi', 'MariaWirth@cuvox.de', '1998-02-17', 1, 0),
(14, 'Metzger', 'Mathias', 'Tholdis', 'jach9AiNooc', 'MathiasMetzger@cuvox.de', '2004-04-27', 0, 1),
(15, 'Baer', 'Jan', 'Wertiout', 'Haed8OhTh', 'JanBaer@einrot.com', '1992-02-04', 0, 0),
(16, 'Weisz', 'Stefanie', 'Suraw2003', 'haequ1Jee', 'StefanieWeisz@einrot.com', '2003-11-05', 1, 0),
(17, 'Scholz', 'Uwe', 'Sest2001', 'iefaNgei0i', 'UweScholz@cuvox.de', '2001-09-09', 0, 0),
(18, 'Fruehauf', 'Thorsten', 'Jokened', 'xohw6jiPh2', 'ThorstenFruehauf@cuvox.de', '1989-08-05', 0, 0),
(19, 'Kuster', 'Karolin', 'Frowas1992', 'Quoh5Coh9k', 'KarolinKuster@cuvox.de', '1992-02-15', 1, 0),
(20, 'Holzman', 'Gabriele', 'Saidee05', 'Quaikio5oish', 'GabrieleHolzman@cuvox.de', '1999-12-30', 1, 0),
(21, 'Becker', 'Kevin', 'Giffer', 'Us2eo3fae', 'KevinBecker@cuvox.de', '2007-08-03', 0, 0),
(22, 'Wolf', 'Petra', 'Stod2004', 'Joh1Airae', 'PetraWolf@cuvox.de', '2004-04-25', 1, 0),
(23, 'Weissmuller', 'Stefan', 'Prining', 'yeaC9exi5', 'StefanWeissmuller@cuvox.de', '2007-07-10', 0, 0),
(24, 'Beich', 'Sven', 'Denjudd1992', 'ietos8Eid3ae', 'SvenBeich@einrot.com', '1991-02-11', 0, 0),
(25, 'Koehler', 'Maik', 'Doic1994', 'ieshoh0Jae', 'MaikKoehler@einrot.com', '1994-04-09', 0, 0),
(26, 'Leah', 'Reinhard', 'Heread', 'saefaiTh9iu', 'LeahReinhard@cuvox.de', '2003-11-09', 0, 0),
(27, 'Maur', 'Anja', 'Werly1998', 'cae7MaiD6', 'AnjaMaur@cuvox.de', '1998-04-30', 1, 0),
(28, 'Gaertner', 'Lena', 'Havy2007', 'Lei8Ja0Rah', 'LenaGaertner@cuvox.de', '2005-09-20', 1, 0),
(29, 'Gerste', 'Andreas', 'Wassed', 'QuaiD2so', 'AndreasGerste@einrot.com', '1994-07-19', 0, 0),
(30, 'Beich', 'Anna', 'Falmyst', 'ein6iBochoph', 'AnnaBeich@cuvox.de', '1993-03-14', 1, 0),
(31, 'Kruger', 'Leah', 'Hatints', 'xeir4wuoC', 'LeahKruger@einrot.com', '1996-02-14', 1, 0),
(32, 'Foerster', 'Luca', 'Formuser', 'keiF4eigahvi', 'LucaFoerster@einrot.com', '2004-06-29', 0, 0),
(33, 'Meister', 'Silke', 'Nack1996', 'OoNgei4n', 'SilkeMeister@cuvox.de', '1996-05-05', 1, 0),
(34, 'Baader', 'Christine', 'Anythe', 'da6Saiw2pei', 'ChristineBaader@cuvox.de', '2004-10-30', 1, 0),
(36, 'Neumann', 'Jonas', 'Comprignate', 'ea0iQuaec', 'JonasNeumann@armyspy.com', '1971-04-10', 0, 0),
(37, 'Schmitz', 'Markus', 'Godderd94', 'rad1sheiy0E', 'MarkusSchmitz@teleworm.us', '1994-06-06', 0, 0),
(38, 'Mauer', 'Sabine', 'Hormser', 'wib8soo7Hii', 'SabineMauer@jourrapide.com', '1996-10-02', 1, 1),
(39, 'Lowe', 'Sven', 'Riet1978', 'paphujeN3Ai', 'SvenLowe@fleckens.hu', '1978-09-04', 0, 0),
(40, 'Papst', 'Tanja', 'Yethe1978', 'ahlosei4Y', 'TanjaPapst@einrot.com', '1978-05-06', 1, 0),
(41, 'Berg', 'Christine', 'Raws1963', 'La3keidaeth', 'ChristineBerg@dayrep.com', '1963-09-02', 1, 0),
(42, 'Bachmeier', 'Janina', 'Wassert', 'jah5couN', 'JaninaBachmeier@cuvox.de', '2000-05-01', 1, 0),
(43, 'Wannemaker', 'Michael', 'Harrinat', 'pohh2aeP0U', 'MichaelWannemaker@jourrapide.com', '2000-11-09', 0, 0),
(44, 'Eisenberg', 'Mike', 'Forrounce', 'laeWai7o', 'MikeEisenberg@rhyta.com', '2001-12-06', 0, 1),
(45, 'Fuerst', 'Patrick', 'Wasom2003', 'ohr5Gu8pie8', 'PatrickFuerst@jourrapide.com', '2003-07-03', 0, 1),
(46, 'Baier', 'Erik', 'Waind1989', 'eeng9pu9Sh', 'ErikBaier@teleworm.us', '1989-09-11', 0, 0),
(47, 'Fried', 'Brigitte', 'Givall', 'oi0thaiXo', 'BrigitteFried@rhyta.com', '2003-10-03', 1, 0),
(48, 'Lehrer', 'J?rg', 'Geore1974', 'wiezuY5y', 'JorgLehrer@armyspy.com', '1974-08-09', 0, 0),
(49, 'Herman', 'J?rg', 'Minsou', 'Oor5mohyiew', 'JorgHerman@superrito.com', '1997-09-04', 0, 0),
(50, 'Krause', 'Lena', 'Thavidifulne', 'ieH2oochah', 'LenaKrause@armyspy.com', '1969-04-02', 1, 0),
(51, 'Kuster', 'Florian', 'Ambeek1984', 'APah9Ahc5', 'FlorianKuster@gustr.com', '1984-08-04', 0, 0),
(52, 'Freytag', 'Monika', 'Proner', 'muJ8ooT2d', 'MonikaFreytag@rhyta.com', '1977-04-12', 1, 1),
(53, 'Krause', 'Jessica', 'Crin1977', 'eekai1Boogah', 'JessicaKrause@fleckens.hu', '1977-04-07', 1, 1),
(54, 'Fuhrmann', 'Melanie', 'Trook1963', 'hieJ3ceich2p', 'MelanieFuhrmann@gustr.com', '1963-11-11', 1, 1),
(55, 'Schroder', 'Stefan', 'Hereinitoor1995', 'Iquue8wee', 'StefanSchroder@teleworm.us', '1995-04-03', 0, 1),
(56, 'Freytag', 'Max', 'Bers1999', 'aiT7Eihe3Oh', 'MaxFreytag@einrot.com', '1999-04-07', 0, 1),
(57, 'Richter', 'Simone', 'Yousencented', 'Coob4eog7', 'SimoneRichter@superrito.com', '1997-02-08', 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person_benutzt_medien`
--

CREATE TABLE IF NOT EXISTS `person_benutzt_medien` (
  `P_ID` int(11) NOT NULL,
  `M_ID` int(11) NOT NULL,
  `Zeit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`P_ID`,`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person_benutzt_medien`
--

INSERT INTO `person_benutzt_medien` (`P_ID`, `M_ID`, `Zeit`) VALUES
(19, 2, '2014-07-24 22:00:00'),
(20, 1, '2015-04-18 22:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person_chattet_in_chatraum`
--

CREATE TABLE IF NOT EXISTS `person_chattet_in_chatraum` (
  `P_ID` int(11) NOT NULL,
  `CR_ID` int(11) NOT NULL,
  PRIMARY KEY (`P_ID`,`CR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person_chattet_in_chatraum`
--

INSERT INTO `person_chattet_in_chatraum` (`P_ID`, `CR_ID`) VALUES
(2, 0),
(3, 0),
(4, 0),
(8, 2),
(26, 1),
(34, 1),
(38, 1),
(39, 2),
(40, 2),
(41, 2),
(50, 2),
(57, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person_erhaelt_nachricht`
--

CREATE TABLE IF NOT EXISTS `person_erhaelt_nachricht` (
  `P_ID` int(11) NOT NULL,
  `N_ID` int(11) NOT NULL,
  `Zeit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Gelesen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person_erhaelt_nachricht`
--

INSERT INTO `person_erhaelt_nachricht` (`P_ID`, `N_ID`, `Zeit`, `Gelesen`) VALUES
(9, 27, '2018-01-22 06:08:21', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person_hat_medien_angesehen`
--

CREATE TABLE IF NOT EXISTS `person_hat_medien_angesehen` (
  `P_ID` int(11) NOT NULL,
  `M_ID` int(11) NOT NULL,
  `Zeit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`P_ID`,`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person_kommentiert_medium`
--

CREATE TABLE IF NOT EXISTS `person_kommentiert_medium` (
  `P_ID` int(11) NOT NULL,
  `M_ID` int(11) NOT NULL,
  `N_ID` int(11) NOT NULL,
  PRIMARY KEY (`P_ID`,`M_ID`,`N_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person_kommentiert_medium`
--

INSERT INTO `person_kommentiert_medium` (`P_ID`, `M_ID`, `N_ID`) VALUES
(39, 1, 25),
(47, 2, 26);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person_verschickt_nachricht`
--

CREATE TABLE IF NOT EXISTS `person_verschickt_nachricht` (
  `P_ID` int(11) NOT NULL,
  `N_ID` int(11) NOT NULL,
  `Zeit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`P_ID`,`N_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person_verschickt_nachricht`
--

INSERT INTO `person_verschickt_nachricht` (`P_ID`, `N_ID`, `Zeit`) VALUES
(2, 0, '2017-01-01 15:00:00'),
(2, 2, '2017-01-01 15:02:00'),
(2, 4, '2017-01-01 15:04:00'),
(2, 6, '2017-01-01 15:11:00'),
(3, 1, '2017-01-01 15:01:00'),
(3, 3, '2017-01-01 15:03:00'),
(4, 5, '2017-01-01 15:10:00'),
(8, 15, '2016-07-07 11:00:00'),
(8, 19, '2016-07-07 11:18:00'),
(26, 7, '2016-02-19 00:00:00'),
(26, 9, '2016-02-19 00:10:00'),
(26, 12, '2016-02-19 00:20:00'),
(34, 8, '2016-02-19 00:05:00'),
(34, 11, '2016-02-19 00:18:00'),
(34, 14, '2016-02-19 00:29:00'),
(34, 24, '2016-07-07 11:34:00'),
(38, 10, '2016-02-19 00:13:00'),
(39, 17, '2016-07-07 11:10:00'),
(39, 24, '2016-07-07 11:35:00'),
(40, 18, '2016-07-07 11:13:00'),
(41, 16, '2016-07-07 11:08:00'),
(41, 22, '2016-07-07 11:27:00'),
(41, 25, '2016-04-02 22:00:00'),
(48, 9, '2009-02-02 23:00:00'),
(48, 27, '2009-02-02 23:00:00'),
(50, 20, '2016-07-07 11:20:00'),
(50, 21, '2016-07-07 11:22:00'),
(50, 23, '2016-07-07 11:30:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
