import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:my_anime_list/app/data/model/detail_voiceActor_model.dart'
    as va;

class DetailVoiceActorController extends GetxController {
  Future<va.DetailVoiceActor> getPeople(int id) async {
    //! Ambil data dari API
    Uri url = Uri.parse('https://api.jikan.moe/v4/people/$id/full');
    var res = await http.get(url);
    //! Masukkan data ke dalam variable
    Map<String, dynamic> parsed = json.decode(res.body)["data"];
    // ! cek data nya apakah null atau tidak
    var data = va.DetailVoiceActor.fromJson(parsed);
    return data;
  }
}
