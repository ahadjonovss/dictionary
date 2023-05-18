import 'package:dictionary/utils/tools/file_importer.dart';

class AboutAppPage extends StatelessWidget {
  bool? isAboutApp;
   AboutAppPage({this.isAboutApp=false,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).hintColor,
        title: const Text("Lug'at haqida"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: (isAboutApp??false)?SizedBox(
            height: height(context)*0.89,
            width:width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Ushbu dastur o‘z ichiga O‘zbek tili og‘zaki nutqida faol qo‘llaniluvchi rus tilidan o‘tgan so‘zlarning muqobilini qamrab olgan."),
                    SizedBox(height: 16,),
                    Text("Ilova funksiyalar :",style: TextStyle(fontWeight: FontWeight.w500),),
                    Text('''- O‘zbek tili og‘zaki nutqida faol qo‘llaniluvchi rus tilidan o‘tgan so‘zlarning muqobilinining alifbo tartibida joylashuvi
-Tezkor qidiruv
- Ko’z qulayligi uchun kun-tun rejemi
- O‘zbek tili og‘zaki nutqida faol qo‘llaniluvchi rus tilidan o‘tgan so‘zlarning muqobilini haqida ma’lumot'''),
                    SizedBox(height: 30,),
                    Text('''Loyiha rahbari: Tolliboyev Jamshid Jamol oʻgʻli - 2001 yil 25-yanvar kuni Samarqand viloyati Ishtixon tumanida tugʻilgan. Oʻrta ta'limni Toshkent shahridagi Respublika ixtisoslashtirilgan musiqa va sanʼat maktabida olgan. Respublika fan olimpiadasi sovrindori.
2017-yilda "Oʻzbek tilidan tezkor tahlil usullari" kitobi chop etilgan (hammualliflikda).
2019-yildan buyon Alisher Navoiy nomidagi Toshkent davlat o'zbek tili va adabiyoti universiteti Oʻzbek filologiyasi fakulteti talabasi.''')
                  ],
                ),
                Center(child: Text("Dastur UMD GROUP tomonidan ishlab chiqildi",textAlign: TextAlign.center,))


              ],
            ),
          ):Column(
            children:const  [
              Text(
                '''O‘zbek tili og‘zaki nutqida faol qo‘llaniluvchi rus tilidan o‘tgan so‘zlarning muqobili''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              Text('''Globallashuv natijasida jamiki sohada tub burilish va o‘zgarishlar bo‘lmoqda. Bu esa asrlar davomida insonlar ongida shakllanib ulgurgan an’analarning mohiyatan boshqacharoq tus olishiga yoxud sohalarda nisbatan yangi bo‘lgan tushunchalarni qabul qilishga chorlamoqda. Xususan, XXI asr texnologiyalar va ulkan kashfiyotlar asri hisoblanib, boshqa davrlarga nisbatan xalqlar bir qadar tinch-osoyishta hayot kechirishyapti. Bu o‘z navbatida ularning o‘rtasida savdo-sotiq, iqtisodiy-siyosiy, madaniy-ma’rifiy oldi-berdilarining rivojlanishiga turtki bo‘lmoqda. Millatlararo do‘stlik aloqalarining o‘rnatilishi nafaqat narsa-buyumlarning oldi-sotdisi, balki so‘zlarning ham ma’lum bir hududdan boshqa bir hududga “ko‘chib o‘tish”iga sabab bo‘lyapti. Qolaversa, narsa-buyum bilan birgalikda uning nomi ham albatta, insonlarning lug‘at boyligiga joylashadi. Shu sababli ham O‘zbekiston mustaqillikka erishgach, Atamashunoslik qo‘mitasining oldida jiddiy muammolar paydo bo‘la boshladi. Ma’lumki, rus istibdodi ta’sirida tilimizda ko‘plab ruscha so‘zlar(yoki rus tili vositasida boshqa tillardan o‘zlashgan so‘zlar)ning xalq ongiga so‘rilib ketilishi natijasida asl turkiy yoxud turkiylashib ketgan so‘zlar unutila boshlandi. Ko‘plab adabiyotshunos va tilshunos olimlarning til millatning millatligini ko‘rsatib turuvchi eng muhim manbasi ekanligi, so‘z ta’sirida o‘sha xalq madaniyati va tarixiga oid xususiyatlarning ham o‘tishi ta’kidlanganligiga qaramasdan bu sohada hali ham jiddiy kamchilik va xatoliklar uchrab kelyapti. Shu ma’noda aytish mumkinki, tilni parazit so‘zlardan tozalash, o‘z lug‘atimizdagi muqobilidan foydalanish yoki tilning ichki imkoniyatlaridan foydalangan holda muqobilini topish hozirda tilshunoslik sohasida yechimini kutayotgan vazifalardan biridir.
Ushbu lug‘at 1000 dan ziyod rus tilidan o‘zlashgan so‘zning muqobilini o‘z ichiga oladi. Lug‘atni tuzishda og‘zaki nutqda eng faol ishlatiluvchi so‘zlarni qamrab olish yo‘lidan borilgan. Unda, asosan, o‘zbek tilida ayni muqobili bo‘lgan atamalar, birikmalar, yuklama, bog‘lovchi va leksemalar jamlangan. Qo‘llanma keng omma uchun tuzilgan bo‘lib, O‘zbek tilining izohli lug‘ati va wikipediya ma’lumotlaridan foydalanilgan. Lug‘atda ayrim so‘z va atamalar beriladiki, ularning aslida ham o‘zbek tilida ayni tarjimasi bor, ammo iste’molda doimiy ruscha shakli ishlatilishi natijasida tarjimasi unutilgan yoki esdan chiqqan. Ikkinchi tomondan esa ba’zi so‘zlarning aynan tarjimasi yo‘q bo‘lib, tilning ichki imkoniyatlaridan foydalangan holda shu so‘zga mos bo‘lgan boshqa bir so‘zning yasalishiga turtki bo‘ladi. Uchinchi tomondan, rus tilidan yoki vositasida o‘zlashgan atamalar bo‘lib, ularning o‘zbek tilida mos muqobili bor va terminologik lug‘atlarda ham o‘zbekchasi keltirilgan. Terminologik lug‘atdan ham og‘zaki nutqda eng ko‘p foydalaniladiganlarini saralab olishga harakat qilingan. Lug‘at alifbo tartibida tuzilgan bo‘lib, ma’lum bir mavzuiy guruhga bo‘linmaydi yoki ayni bir mavzuni qamrab olmaydi. Unda so‘zlarning izohi emas, muqobili yoki tarjimasi beriladi. Ba’zi o‘rinlardagina keraklilik nuqtayi nazaridan qo‘shimcha ma’lumotlar beriladi. Bu lug‘atning foydalilik darajasini yanada oshiradi degan umiddamiz.
Ushbu qo‘llanma shu bilangina to‘xtab qolishi kerak bo‘lgan ish emas. Chunki yildan yilga o‘zgarishlar kechayotgan zamon tilga ham o‘z ta’sirini o‘tkazmasdan qolmaydi. Bu esa mazkur lug‘atning to‘ldirilib va takomillashtirilib borilishiga ehtiyojni oshiradi deb o‘ylaymiz.''',textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
