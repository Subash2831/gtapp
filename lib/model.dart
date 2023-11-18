class gts {

  final String? image;


  gts(this.image);


}


List gt = gtData.map((e) => gts(e["image"])).toList();



var gtData =[

  {"image":"assets/img/HM.jpg",},
  {"image":"assets/img/HM1.jpg",},
  {"image":"assets/img/HM2.jpg",},
  {"image":"assets/img/HM3.jpg",},

];




class pay {

  final String? image;

  pay(this.image);

}


List payimage = payimageData.map((e) => pay(e["image"])).toList();

var payimageData =[

  {"image":"assets/img/offer.jpg",},
  {"image":"assets/img/pp.jpg",},
  {"image":"assets/img/cake.jpg",},


];

class donuts {

  final String? image;

  donuts(this.image);

}


List Donut = DonutData.map((e) => donuts(e["image"])).toList();

var DonutData =[

  {"image":"assets/img/pp.jpg",},



];


class bank {

  final String? image;

  bank(this.image);

}


List dis = disData.map((e) => bank(e["image"])).toList();

var disData =[

  {"image":"assets/img/idbi.jpg",},
  {"image":"assets/img/idfc.jpg",},


];
class hotelDetail {

  final String? image;
  final String? place;
  final String? distance;
  final String? rating;
  final String? hotelName;
  final String? cusine;
  hotelDetail(this.image,this.place,this.distance,
      this.rating,this.hotelName,this.cusine);

}


List Similar = SimilarData.map((e) => hotelDetail(
  e["image"],
  e["place"],
  e["distance"],
  e["rating"],
  e["hotelName"],
  e["cusine"],

)).toList();

var SimilarData =[

  {
    "image":"assets/img/ap.jpg",
    "place":"RaceCourse,Coimbatore",
    "distance":"10-30mins-4km",
    "rating":"4",
    "hotelName":"Annapoorna",
    "cusine":"Veg-Chinese-Italian"
  },
  {
    "image":"assets/img/ap.jpg",
    "place":"RaceCourse,Coimbatore",
    "distance":"10-30mins-4km",
    "rating":"4",
    "hotelName":"Annapoorna",
    "cusine":"Veg-Chinese-Italian"
  },{
    "image":"assets/img/ap.jpg",
    "place":"RaceCourse,Coimbatore",
    "distance":"10-30mins-4km",
    "rating":"4",
    "hotelName":"Annapoorna",
    "cusine":"Veg-Chinese-Italian"
  },{
    "image":"assets/img/ap.jpg",
    "place":"RaceCourse,Coimbatore",
    "distance":"10-30mins-4km",
    "rating":"4",
    "hotelName":"Annapoorna",
    "cusine":"Veg-Chinese-Italian"
  },




];



