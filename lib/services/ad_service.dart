import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  static String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/2934735716';

  static BannerAd createBannerAd() {
    BannerAd ad = BannerAd(
      size: AdSize.banner,
      adUnitId: bannerAdUnitId,
      request: const AdRequest(),
      listener: BannerAdListener(
          onAdClosed: (Ad ad) => print('ad closed'),
          onAdFailedToLoad: (Ad ad, LoadAdError error) {
            ad.dispose();
          },
          onAdLoaded: (Ad ad) => print('ad loaded'),
          onAdOpened: (Ad ad) => print('ad opned')),
    );

    return ad;
  }
}
