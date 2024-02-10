import 'package:get/get.dart';

class PresensiController extends GetxController {
  RxList<HistoryItem> historyList = <HistoryItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchHistoryData();
  }

  void fetchHistoryData() {
    historyList.assignAll([
    ]);
  }

  Future<void> refreshData() async {
    // Tambahkan logika pembaruan data di sini
    // Contoh: Memanggil API atau memperbarui data dari penyimpanan lokal

    // Simulasi penundaan untuk memberikan efek refresh
    await Future.delayed(const Duration(seconds: 2));

    // Memperbarui data
    // Contoh: controller.updateData();

    // Setelah selesai, panggil setState untuk merender ulang widget
    update();
  }
}

class HistoryItem {
  String title;
  String jam;
  String date;

  HistoryItem({required this.title, required this.date, required this.jam});
}
