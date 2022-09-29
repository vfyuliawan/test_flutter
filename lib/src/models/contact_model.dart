part of 'models.dart';

class ContactModel {
  //final nilai yang pasti karena kita yang masukin
  // final List<dynamic> contact = [
  //   {
  //     "name": "Vicky Fadilla Yuliawan",
  //     "phoneNumber": 0812980918273,
  //     "picture":"https://placeimg.com/640/480/people"
  //   },
  //   ];

  final String name;
  final String phoneNumber;
  final String imgurl;

  ContactModel(this.name, this.phoneNumber, this.imgurl);
}

List<ContactModel> contact = [
  ContactModel('Dara', '0812980918273',
      'https://cdn0-production-images-kly.akamaized.net/FIrmcex4YCLSxwioF_OZ6n4d3kU=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3514655/original/060876200_1626671747-214351767_837721163516632_5068725263459880678_n.jpg'),
  ContactModel('Ralinsah', '0812980918273',
      'https://pict.sindonews.net/dyn/850/pena/news/2022/05/18/187/772369/profil-raline-shah-debut-karier-di-ajang-kecantikan-hingga-jadi-aktris-terbaik-veg.jpg'),
  ContactModel('Pevita', '0812980918273',
      'https://img.okezone.com/content/2022/03/07/33/2557815/biodata-dan-agama-pevita-pearce-artis-cantik-berkelas-yang-dikira-pindah-hindu-vUjsYUR2IQ.jpg'),
  ContactModel('Wulanguritno', '0812980918273',
      'https://asset-a.grid.id/crop/0x0:0x0/945x630/photo/2022/02/14/20201122042404jpg-20220214022803.jpg'),
  ContactModel('Arieltatum', '0812980918273',
      'https://asset.kompas.com/crops/pmZ9rsHhzhSs-ZtAcPJZSXNbMsg=/0x49:1000x715/750x500/data/photo/2017/10/18/1154214606.jpg'),
  ContactModel('Luna Maya', '0812980918273',
      'https://cdns.klimg.com/resized/660x/g/b/u/bukan_hoax_ini_10_aktris_korea_paling_cantik_di_dunia_nyata/p/aktris_tercantik_di_korea-20150705-007-rita.jpg'),
  ContactModel('Chelsie', '0812980918273',
      'https://img.inews.co.id/media/620/files/inews_new/2021/11/15/chelsea_islan_ig.jpg'),
  ContactModel('Jeni', '0812980918273',
      'https://www.kibrispdr.org/data/158/foto-artis-tercantik-di-dunia-12.jpg'),
];

//contact model variable
class ContactModelOpsional {
  final String? name;
  final String? phoneNumber;
  final String? imgurl;

  ContactModelOpsional({this.name, this.phoneNumber, this.imgurl});
}

List<ContactModelOpsional> contactOpsional = [
  ContactModelOpsional(
      name: 'Laras',
      phoneNumber: '0918723097824',
      imgurl:
          'https://cdn0-production-images-kly.akamaized.net/FIrmcex4YCLSxwioF_OZ6n4d3kU=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3514655/original/060876200_1626671747-214351767_837721163516632_5068725263459880678_n.jpg'),
  ContactModelOpsional(
      name: 'Cheria',
      phoneNumber: '0918723097824',
      imgurl:
          'https://pict.sindonews.net/dyn/850/pena/news/2022/05/18/187/772369/profil-raline-shah-debut-karier-di-ajang-kecantikan-hingga-jadi-aktris-terbaik-veg.jpg'),
  ContactModelOpsional(
      name: 'Putri',
      phoneNumber: '0918723097824',
      imgurl:
          'https://img.okezone.com/content/2022/03/07/33/2557815/biodata-dan-agama-pevita-pearce-artis-cantik-berkelas-yang-dikira-pindah-hindu-vUjsYUR2IQ.jpg'),
  ContactModelOpsional(
      name: 'Ralin',
      phoneNumber: '0918723097824',
      imgurl:
          'https://asset-a.grid.id/crop/0x0:0x0/945x630/photo/2022/02/14/20201122042404jpg-20220214022803.jpg'),
  ContactModelOpsional(
      name: 'Arieltatum',
      phoneNumber: '0918723097824',
      imgurl:
          'https://asset.kompas.com/crops/pmZ9rsHhzhSs-ZtAcPJZSXNbMsg=/0x49:1000x715/750x500/data/photo/2017/10/18/1154214606.jpg'),
  ContactModelOpsional(
      name: 'Yuki',
      phoneNumber: '0918723097824',
      imgurl:
          'https://img.inews.co.id/media/620/files/inews_new/2021/11/15/chelsea_islan_ig.jpg'),
  ContactModelOpsional(
      name: 'Luna',
      phoneNumber: '0918723097824',
      imgurl:
          'https://cdns.klimg.com/resized/660x/g/b/u/bukan_hoax_ini_10_aktris_korea_paling_cantik_di_dunia_nyata/p/aktris_tercantik_di_korea-20150705-007-rita.jpg'),
  ContactModelOpsional(
      name: 'Rara',
      phoneNumber: '0918723097824',
      imgurl:
          'https://2.bp.blogspot.com/-ZouV-gmq3d0/W4-z3XyLUyI/AAAAAAAAAak/p8AVT3jlAGA0gTjhzRBGEBk2kPvqIfZ4QCLcBGAs/s1600/dff13f7c6e2ec5e99cdf674a1cc77e91.jpg'),
  ContactModelOpsional(
      name: 'Jion',
      phoneNumber: '0918723097824',
      imgurl:
          'https://assets.pikiran-rakyat.com/crop/110x15:903x597/x/photo/2022/06/05/256698971.jpg'),
];

// class ProductsModels {
//   final String productname;
//   final String productDesc;
//   final String imageUrl;
//   final double price;

//   ProductsModels(this.productname, this.productDesc, this.imageUrl, this.price);
// }

// List<ProductsModels> productModels = [
//   ProductsModels(
//       "iphone 14 pro max",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  centuries",
//       "https://dummyjson.com/image/i/products/1/1.jpg",
//       301),
//   ProductsModels(
//       "Acer",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  centuries",
//       "https://dummyjson.com/image/i/products/2/1.jpg",
//       87),
//   ProductsModels(
//       "Samsung A+",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  centuries",
//       "https://dummyjson.com/image/i/products/5/1.jpg",
//       401),
//   ProductsModels(
//       "HP Laptop",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  centuries",
//       "https://dummyjson.com/image/i/products/4/2.jpg",
//       202),
//   ProductsModels(
//       "Oppo F21",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,e centuries",
//       "https://dummyjson.com/image/i/products/4/1.jpg",
//       110),
//   ProductsModels(
//       "Samsung Note",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  centuries",
//       "https://dummyjson.com/image/i/products/8/2.jpg",
//       401),
//   ProductsModels(
//       "Samsung Galaxy",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  centuries",
//       "https://dummyjson.com/image/i/products/6/2.jpg",
//       490),
//   ProductsModels(
//       "lenovo",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,e centuries",
//       "https://dummyjson.com/image/i/products/10/2.jpg",
//       40),
//   ProductsModels(
//       "iPhone 12",
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  centuries",
//       "https://dummyjson.com/image/i/products/5/2.jpg",
//       40),
// ];
