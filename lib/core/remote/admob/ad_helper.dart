import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// Below test unit ids' from google wgich means test unit ids'.

AdHelper adHelper = AdHelper();

class AdHelper {
  static String get banner1 {
    if (Platform.isAndroid) {
      return "ca-app-pub-7691613791089480/2780704918";
    } else if (Platform.isIOS) {
      return "ca-app-pub-7691613791089480/4995804715";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get banner2 {
    if (Platform.isAndroid) {
      return "ca-app-pub-7691613791089480/5215296563";
    } else if (Platform.isIOS) {
      return "ca-app-pub-7691613791089480/6719949924";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  Widget? checkForAd(isLoaded, BannerAd ad) {
    if (isLoaded == true) {
      return SizedBox(
        height: ad.size.height.toDouble(),
        width: ad.size.width.toDouble(),
        child: AdWidget(ad: ad),
      );
    } else {
      return null;
    }
  }
}

// String get banner1 {
//   if (Platform.isAndroid) {
//     return "ca-app-pub-3940256099942544/6300978111";
//   } else if (Platform.isIOS) {
//     return "ca-app-pub-3940256099942544/2934735716";
//   } else {
//     throw UnsupportedError("Unsupported platform");
//   }
  // Future<void> _createBottomBannerAd(func) async {
  //   _bottom = BannerAd(
  //     size: AdSize.banner,
  //     adUnitId: AdHelper.bottomBannerId,
  //     request: AdRequest(),
  //     listener: BannerAdListener(
  //       onAdLoaded: (_) => func(),
  //       onAdFailedToLoad: (ad, error) async => await ad.dispose(),
  //     ),
  //   );
  //   await _bottom.load();
  // }
  // static String get interstitialAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-3940256099942544/8691691433";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-3940256099942544/5135589807";
  //   } else {
  //     throw new UnsupportedError("Unsupported platform");
  //   }
  // }
// }