import 'package:flutter/services.dart' as the_bundle;
import 'package:ecommerce_app/models/sneakers_model.dart';

class Helper {
  Future<List<Sneakers>> getMaleSneakers() async{
    final data = await the_bundle.rootBundle.loadString("assets/json/men_shoes.json");

    final maleList = sneakersFromJson(data);

    return maleList;
  }
}