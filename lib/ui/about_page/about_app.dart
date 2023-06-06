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
        title:  Text((isAboutApp??false)?"Dastur haqida":"Lug'at haqida"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: (isAboutApp??false)?Column(
            children:const  [
              Text(
                '''Ushbu dastur oʻz ichiga “Tarixiy harbiy terminlar lugʻati”da keltirilgan qadimgi turkiy til, eski turkiy til va eski oʻzbek adabiy tili davrida keng iste’molda boʻlgan harbiy istiloh va birikmalarni oʻz ichiga oladi.''',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '''Ilovaning funksiyalari:''',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 16),
              Text('''✓ Lug’atga kiritilgan terminlarning alifbo tartibida joylashuvi;
✓ Tezkor qidiruv;
✓ Koʻz qulayligi uchun kun-tun rejimi;
✓ Tarixiy harbiy terminlar haqida ma’lumot;
✓ Lugʻat muallifi va lugʻat haqida ma’lumot.''',textAlign: TextAlign.start,),
              SizedBox(height: 16),

              Text('''Loyiha ijrochisi : Abdurahmonova Nilufar Laziz qizi ‒ 2001-yil 4-aprelda Qashqadaryo viloyati Shahrisabz shahrida tugʻilgan. Shahrisabz shahridagi 7-umumiy o’rta ta’lim maktabida o’qigan. 2016-2019- yillar oraligʻida Shahrisabz xizmat koʻrsatish kasb- hunar kollejida tahsil olgan. 2019- yilda Alisher Navoiy nomidagi Toshkent davlat oʻzbek tili va adabiyoti universiteti Oʻzbek filologiyasi fakultetiga o’qishga qabul qilingan.''',textAlign: TextAlign.start,),
            ],
          ):SizedBox(
            width:width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text("Hamidulla Dadaboyev 1947-yil 5-sentyabrda Toshkent viloyati Qibray tumanida tug‘ilgan."),
                    SizedBox(height: 16,),
                    Text('''1966-1971-yillarda Toshkent davlat universiteti (Hozirgi O‘zbekiston Milliy universiteti) Xorijiy filologiya fakultetida tahsil olgan. 1977-1980-yillarda O‘zbekiston Fanlar akademiyasi Til va adabiyot instituti aspiraturasida o‘qigan. 2000-2012-yillarda O‘zbekiston Milliy universiteti “Til nazariyasi va amaliyoti” kafedrasi mudiri lavozimida faoliyat yuritgan. 2016-yil iyun oyidan buyon Alisher Navoiy nomidagi Toshkent davlat o‘zbek tili va adabiyoti universiteti “O‘zbek tilshunosligi” kafedrasi professori lavozimida ishlab kelmoqda.

Tilshunoslikning tarixiy leksikologiya, tarixiy terminologiya, tarixiy leksikografiya, manbashunoslik va matnshunoslik, tilshunoslik nazariyasi yo‘nalishlari bo‘yicha respublikada o‘z maktabini yaratgan yetakchi olim hisoblanadi. Tarixiy leksikologiya, tarixiy terminologiya, tarixiy leksikografiyaga doir ilmiy konsepsiyasi va ta’limoti nafaqat respublika, balki xorijda ham e’tirof etilgan. Olim O‘zbekistonda harbiy ish va harbiy san’at tarixining shakllanishi, rivojlanishi bilan bog‘liq masalalarni yoritishda o‘ziga xos metodologik asosni ishlab chiqqan. Olimning ijtimoiy-siyosiy, sotsial-iqtisodiy, harbiy terminologiya tarixiga doir izlanishlari turkiyshunoslikda terminologiyani diaxron aspektda o‘rganishda muhim qadam sifatida tan olingan. 
      Oʻzbekiston Respublikasi Mudofaa vazirining buyrugʻi asosida professor Hamidulla Dadaboyev Oʻzbekiston Respublikasi Qurolli Kuchlarining “Maʼnaviy-maʼrifiy ishlar aʼlochisi” koʻkrak nishoni bilan taqdirlangan. H.Dadboyev shu yo‘nalishda 12 ta monografiya va risola, 6 ta o‘quv qo‘llanma, 300 dan ortiq ilmiy va ilmiy-ommabop maqolalar nashr etgan. Bugun ushbu umumiy g‘oya doirasida 10 nafar fan doktori, 13 nafar fan nomzodi tayyorlagan. '''),
                    SizedBox(height: 16,),
                    Text("Muallif tomonidan “ Tarixiy harbiy terminlar lugʻati” ilk bor 2003-yilda “Universitet” nashriyotida ilk bor 2003-yilda e’lon qilingan."),
                    Text('''“Tarixiy harbiy terminlar lug’ati” ‒ o’zbek tarixiy leksikografiyasi, umuman, turkologiyadagi eng muhim izlanishlardan biridir. Ushbu lug’at tarixiy asarlarning mohiyatini ochish, tarixiy leksikologiyani o’rganish, hozir tilimizda mavjud bo’lgan harbiy sohaga tegishli so’zlar eski o’zbek adabiy tili davriga qadar qanday istiloh bilan qo’llanilganligini aniqlash imkonini beruvchi nodir ilmiy manba hisoblanadi. “Tarixiy harbiy terminlar lugʻati” qadimgi turkiy til, eski turkiy til va eski oʻzbek adabiy tili davrida ma’lum bir guruhga mansub kishilar tomonidan  keng qoʻllanilgan va hozirga qadar muomalada bo’lgan, shuningdek,  bugungi kunda iste’moldan chiqqan yoki arxaiklashib, o’rnini boshqa so’zlarga bo’shatib bergan istiloh ‒ terminlar asosida tuzilgan. Lug’atning yana bir ahamiyatli jihati shundaki, turli xil qo’lyozma va nashrlarni o’rganish natijasida ikki mingga yaqin istilohning bir tizimga solinib, yaxlit asar shaklida o’quvchiga taqdim etilishi ‒  muallifning taxminan ellik yillik mehnati natijasidir.'''),


                  ],
                ),
                const Center(child: Text("Dastur UMD GROUP tomonidan ishlab chiqildi",textAlign: TextAlign.center,))


              ],
            ),
          ),
        ),
      ),
    );
  }
}
