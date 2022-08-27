import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// import 'package:my_anime_list/app/data/model/anime_model.dart';
import 'package:my_anime_list/app/data/model/anime_models.dart';
import 'dart:convert';

import 'package:my_anime_list/app/data/model/anime_search.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends GetxController {
  late TextEditingController searchController;
  Map<String, dynamic> page = {};
  RefreshController refreshControllerA =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerB =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerC =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerD =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerE =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerF =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerG =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerH =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerI =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerJ =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerK =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerL =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerM =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerN =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerO =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerP =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerQ =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerR =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerS =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerT =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerU =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerV =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerW =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerX =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerY =
      RefreshController(initialRefresh: true);
  RefreshController refreshControllerZ =
      RefreshController(initialRefresh: true);

  int currentPage = 1;
  List<AnimeSearch> resultAnime = [];
  Rx<int> selectIndex = 0.obs;
  List<dynamic> animeIndexA = [].obs;
  List<dynamic> animeIndexB = [].obs;
  List<dynamic> animeIndexC = [].obs;
  List<dynamic> animeIndexD = [].obs;
  List<dynamic> animeIndexE = [].obs;
  List<dynamic> animeIndexF = [].obs;
  List<dynamic> animeIndexG = [].obs;
  List<dynamic> animeIndexH = [].obs;
  List<dynamic> animeIndexI = [].obs;
  List<dynamic> animeIndexJ = [].obs;
  List<dynamic> animeIndexK = [].obs;
  List<dynamic> animeIndexL = [].obs;
  List<dynamic> animeIndexM = [].obs;
  List<dynamic> animeIndexN = [].obs;
  List<dynamic> animeIndexO = [].obs;
  List<dynamic> animeIndexP = [].obs;
  List<dynamic> animeIndexQ = [].obs;
  List<dynamic> animeIndexR = [].obs;
  List<dynamic> animeIndexS = [].obs;
  List<dynamic> animeIndexT = [].obs;
  List<dynamic> animeIndexU = [].obs;
  List<dynamic> animeIndexV = [].obs;
  List<dynamic> animeIndexW = [].obs;
  List<dynamic> animeIndexX = [].obs;
  List<dynamic> animeIndexY = [].obs;
  List<dynamic> animeIndexZ = [].obs;

  void chagePage(int index) {
    selectIndex.value = index;
    update();
  }

  Future<List<AnimeSearch>> searchAnime(String keyword) async {
    Uri link = Uri.parse('https://api.jikan.moe/v4/anime?q=$keyword');
    var hasil = await http.get(link);
    //! Masukkan data ke dalam variable
    List? data = (json.decode(hasil.body) as Map<String, dynamic>)["data"];
    // update();
    //! cek data nya apakah null atau tidak
    if (data == null || data.isEmpty) {
      return resultAnime = [];
    } else {
      update();
      resultAnime = data.map((e) => AnimeSearch?.fromJson(e)).toList();
      return resultAnime;
    }
  }

  Future<Map<String, dynamic>?> indexAnime(String letter, int hal) async {
    Uri url = Uri.parse(
        'https://api.jikan.moe/v4/anime?letter=$letter&page=$hal&order_by=title&sort=asc');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      var tempAnimeList = data["data"].map((e) => Animes.fromJson(e)).toList();
      if (letter == "A") {
        animeIndexA.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "B") {
        animeIndexB.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "C") {
        animeIndexC.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "D") {
        animeIndexD.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "E") {
        animeIndexE.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "F") {
        animeIndexF.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "G") {
        animeIndexG.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "H") {
        animeIndexH.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "I") {
        animeIndexI.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "J") {
        animeIndexJ.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "K") {
        animeIndexK.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "L") {
        animeIndexL.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "M") {
        animeIndexM.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "N") {
        animeIndexN.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "O") {
        animeIndexO.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "P") {
        animeIndexP.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "Q") {
        animeIndexQ.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "R") {
        animeIndexR.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "S") {
        animeIndexS.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "T") {
        animeIndexT.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "U") {
        animeIndexU.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "V") {
        animeIndexV.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "W") {
        animeIndexW.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "X") {
        animeIndexX.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "Y") {
        animeIndexY.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      } else if (letter == "Z") {
        animeIndexZ.addAll(tempAnimeList);
        update();
        page = data["pagination"];
        return data;
      }
    }
    return null;
  }

  void loadData(String h) async {
    if (h == "A") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerA.loadComplete();
      } else {
        return refreshControllerA.loadNoData();
      }
    } else if (h == "B") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerB.loadComplete();
      } else {
        return refreshControllerB.loadNoData();
      }
    } else if (h == "C") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerC.loadComplete();
      } else {
        return refreshControllerC.loadNoData();
      }
    } else if (h == "D") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerD.loadComplete();
      } else {
        return refreshControllerD.loadNoData();
      }
    } else if (h == "E") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerE.loadComplete();
      } else {
        return refreshControllerE.loadNoData();
      }
    } else if (h == "F") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerF.loadComplete();
      } else {
        return refreshControllerF.loadNoData();
      }
    } else if (h == "G") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerG.loadComplete();
      } else {
        return refreshControllerG.loadNoData();
      }
    } else if (h == "H") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerH.loadComplete();
      } else {
        return refreshControllerH.loadNoData();
      }
    } else if (h == "I") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerI.loadComplete();
      } else {
        return refreshControllerI.loadNoData();
      }
    } else if (h == "J") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerJ.loadComplete();
      } else {
        return refreshControllerJ.loadNoData();
      }
    } else if (h == "K") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerK.loadComplete();
      } else {
        return refreshControllerK.loadNoData();
      }
    } else if (h == "L") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerK.loadComplete();
      } else {
        return refreshControllerK.loadNoData();
      }
    } else if (h == "L") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerK.loadComplete();
      } else {
        return refreshControllerK.loadNoData();
      }
    } else if (h == "M") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerM.loadComplete();
      } else {
        return refreshControllerM.loadNoData();
      }
    } else if (h == "N") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerN.loadComplete();
      } else {
        return refreshControllerN.loadNoData();
      }
    } else if (h == "O") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerO.loadComplete();
      } else {
        return refreshControllerO.loadNoData();
      }
    } else if (h == "P") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerP.loadComplete();
      } else {
        return refreshControllerP.loadNoData();
      }
    } else if (h == "Q") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerQ.loadComplete();
      } else {
        return refreshControllerQ.loadNoData();
      }
    } else if (h == "R") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerR.loadComplete();
      } else {
        return refreshControllerR.loadNoData();
      }
    } else if (h == "S") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerS.loadComplete();
      } else {
        return refreshControllerS.loadNoData();
      }
    } else if (h == "T") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerT.loadComplete();
      } else {
        return refreshControllerT.loadNoData();
      }
    } else if (h == "U") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerU.loadComplete();
      } else {
        return refreshControllerU.loadNoData();
      }
    } else if (h == "V") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerV.loadComplete();
      } else {
        return refreshControllerV.loadNoData();
      }
    } else if (h == "W") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerW.loadComplete();
      } else {
        return refreshControllerW.loadNoData();
      }
    } else if (h == "X") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerX.loadComplete();
      } else {
        return refreshControllerX.loadNoData();
      }
    } else if (h == "Y") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerY.loadComplete();
      } else {
        return refreshControllerY.loadNoData();
      }
    } else if (h == "Z") {
      if (page["has_next_page"] == true) {
        currentPage = currentPage + 1;
        update();
        await indexAnime(h, currentPage);
        return refreshControllerZ.loadComplete();
      } else {
        return refreshControllerZ.loadNoData();
      }
    }
  }

  void refreshData(String h) async {
    if (h == "A") {
      if (refreshControllerA.initialRefresh == true) {
        animeIndexA.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerA.refreshCompleted();
      } else {
        return refreshControllerA.refreshFailed();
      }
    } else if (h == "B") {
      if (refreshControllerB.initialRefresh == true) {
        animeIndexB.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerB.refreshCompleted();
      } else {
        return refreshControllerB.refreshFailed();
      }
    } else if (h == "C") {
      if (refreshControllerC.initialRefresh == true) {
        animeIndexC.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerC.refreshCompleted();
      } else {
        return refreshControllerC.refreshFailed();
      }
    } else if (h == "D") {
      if (refreshControllerD.initialRefresh == true) {
        animeIndexD.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerD.refreshCompleted();
      } else {
        return refreshControllerD.refreshFailed();
      }
    } else if (h == "E") {
      if (refreshControllerE.initialRefresh == true) {
        animeIndexE.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerE.refreshCompleted();
      } else {
        return refreshControllerE.refreshFailed();
      }
    } else if (h == "F") {
      if (refreshControllerF.initialRefresh == true) {
        animeIndexF.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerF.refreshCompleted();
      } else {
        return refreshControllerF.refreshFailed();
      }
    } else if (h == "G") {
      if (refreshControllerG.initialRefresh == true) {
        animeIndexG.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerG.refreshCompleted();
      } else {
        return refreshControllerG.refreshFailed();
      }
    } else if (h == "H") {
      if (refreshControllerH.initialRefresh == true) {
        animeIndexH.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerH.refreshCompleted();
      } else {
        return refreshControllerH.refreshFailed();
      }
    } else if (h == "I") {
      if (refreshControllerI.initialRefresh == true) {
        animeIndexI.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerI.refreshCompleted();
      } else {
        return refreshControllerI.refreshFailed();
      }
    } else if (h == "J") {
      if (refreshControllerJ.initialRefresh == true) {
        animeIndexJ.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerJ.refreshCompleted();
      } else {
        return refreshControllerJ.refreshFailed();
      }
    } else if (h == "K") {
      if (refreshControllerK.initialRefresh == true) {
        animeIndexK.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerK.refreshCompleted();
      } else {
        return refreshControllerK.refreshFailed();
      }
    } else if (h == "L") {
      if (refreshControllerL.initialRefresh == true) {
        animeIndexL.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerL.refreshCompleted();
      } else {
        return refreshControllerL.refreshFailed();
      }
    } else if (h == "M") {
      if (refreshControllerM.initialRefresh == true) {
        animeIndexM.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerM.refreshCompleted();
      } else {
        return refreshControllerM.refreshFailed();
      }
    } else if (h == "N") {
      if (refreshControllerN.initialRefresh == true) {
        animeIndexN.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerN.refreshCompleted();
      } else {
        return refreshControllerN.refreshFailed();
      }
    } else if (h == "O") {
      if (refreshControllerO.initialRefresh == true) {
        animeIndexO.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerO.refreshCompleted();
      } else {
        return refreshControllerO.refreshFailed();
      }
    } else if (h == "P") {
      if (refreshControllerP.initialRefresh == true) {
        animeIndexP.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerP.refreshCompleted();
      } else {
        return refreshControllerP.refreshFailed();
      }
    } else if (h == "Q") {
      if (refreshControllerQ.initialRefresh == true) {
        animeIndexQ.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerQ.refreshCompleted();
      } else {
        return refreshControllerQ.refreshFailed();
      }
    } else if (h == "R") {
      if (refreshControllerR.initialRefresh == true) {
        animeIndexR.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerR.refreshCompleted();
      } else {
        return refreshControllerR.refreshFailed();
      }
    } else if (h == "S") {
      if (refreshControllerS.initialRefresh == true) {
        animeIndexS.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerS.refreshCompleted();
      } else {
        return refreshControllerS.refreshFailed();
      }
    } else if (h == "T") {
      if (refreshControllerT.initialRefresh == true) {
        animeIndexT.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerT.refreshCompleted();
      } else {
        return refreshControllerT.refreshFailed();
      }
    } else if (h == "U") {
      if (refreshControllerU.initialRefresh == true) {
        animeIndexU.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerU.refreshCompleted();
      } else {
        return refreshControllerU.refreshFailed();
      }
    } else if (h == "V") {
      if (refreshControllerV.initialRefresh == true) {
        animeIndexV.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerV.refreshCompleted();
      } else {
        return refreshControllerV.refreshFailed();
      }
    } else if (h == "W") {
      if (refreshControllerW.initialRefresh == true) {
        animeIndexW.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerW.refreshCompleted();
      } else {
        return refreshControllerW.refreshFailed();
      }
    } else if (h == "X") {
      if (refreshControllerX.initialRefresh == true) {
        animeIndexX.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerX.refreshCompleted();
      } else {
        return refreshControllerX.refreshFailed();
      }
    } else if (h == "Y") {
      if (refreshControllerY.initialRefresh == true) {
        animeIndexY.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerY.refreshCompleted();
      } else {
        return refreshControllerY.refreshFailed();
      }
    } else if (h == "Z") {
      if (refreshControllerZ.initialRefresh == true) {
        animeIndexZ.clear();
        currentPage = 1;
        await indexAnime(h, currentPage);
        return refreshControllerZ.refreshCompleted();
      } else {
        return refreshControllerZ.refreshFailed();
      }
    }
  }

  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // animeIndexA.clear();
    super.onClose();
  }

  @override
  void dispose() {
    // anime.clear();
    // refreshControllerA.dispose();
    // refreshControllerB.dispose();
    // resultAnime.clear();
    // animeIndexA.clear();
    searchController.clear();
    searchController.dispose();
    super.dispose();
  }
}
