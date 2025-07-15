import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:provider/provider.dart';
import 'package:texas_holdem/data/models/models.dart';
import 'package:texas_holdem/data/sources/sources.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';
import 'package:texas_holdem/presentation/widgets/widgets.dart';

class MoneyShopDialog extends StatefulWidget {
  const MoneyShopDialog({super.key, this.appBar});

  final Widget? appBar;

  @override
  State<MoneyShopDialog> createState() => _MoneyShopDialogState();
}

class _MoneyShopDialogState extends State<MoneyShopDialog> {
  int _quantity = 0;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  final iapConnection = InAppPurchase.instance;
  late List<PurchClassTotalCas> products;

  Future<void> _onPurchaseUpdate(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
      await _handlePurchase(purchaseDetails);
    }
  }

  Future<void> _handlePurchase(PurchaseDetails purchaseDetails) async {
    if (purchaseDetails.pendingCompletePurchase) {
      await iapConnection.completePurchase(purchaseDetails);
      buy();
      setState(() {});
    }
  }

  void _updateStreamOnDone() {
    _subscription.cancel();
  }

  Future<void> loadPurchases() async {
    const Set<String> coins = {
      'com.example.texasHoldem.ios_first_purchase',
      'com.example.texasHoldem.ios_second_purchase',
      'com.example.texasHoldem.ios_third_purchase',
    };
    final response = await iapConnection.queryProductDetails(coins);
    for (var element in response.notFoundIDs) {
      debugPrint('Purchase $element not found');
    }
    products =
        response.productDetails.map((e) => PurchClassTotalCas(e)).toList();
  }

  Future<void> buyLuckyAppsPurch(PurchClassTotalCas product) async {
    try {
      final iapConnectionFortune = InAppPurchase.instance;
      final newIAPpurchaseParam =
          PurchaseParam(productDetails: product.productDetails);
      await iapConnectionFortune.buyConsumable(
          purchaseParam: newIAPpurchaseParam);
    } catch (e) {
      debugPrint("ERROR: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    final purchaseUpdated = iapConnection.purchaseStream;
    _subscription = purchaseUpdated.listen(
      _onPurchaseUpdate,
      onDone: _updateStreamOnDone,
    );
    loadPurchases();
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          children: [
            SizedBox(height: 9.h),
            widget.appBar ?? const SecondaryAppBar(canTapPlus: false),
            SizedBox(height: 123.h),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 28.5.w),
                child: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Image.asset(
                    'assets/png/cross.png',
                    width: 18.w,
                    height: 18.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 19.h),
            Container(
              width: 333.w,
              height: 285.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/png/frames/frame5.png'),
                  fit: BoxFit.fill,
                ),
              ),
              padding: EdgeInsets.only(
                top: 36.h,
                bottom: 53.h,
                left: 24.w,
                right: 24.w,
              ),
              child: Column(
                children: [
                  Text("Coins Shop", style: AppTextStyles.mz30_800),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      marketCoins.length,
                      (index) {
                        final coin = marketCoins[index];
                        return Column(
                          children: [
                            SizedBox(
                              width: 85.w,
                              height: 97.h,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Container(
                                    width: 85.w,
                                    height: 85.h,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/png/big_chip.png'),
                                      ),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 17,
                                          color: AppTheme.secondaryGreen,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/png/frames/frame6.png',
                                          width: 79.w,
                                          height: 21.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 2.h),
                                          child: Text(
                                            coin.text,
                                            style: AppTextStyles.mz10_700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 12.h),
                            GestureDetector(
                              onTap: () {
                                _quantity = coin.quantity;
                                buyLuckyAppsPurch(products[index]);
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/png/rects/rect1.png',
                                    width: 73.w,
                                    height: 30.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      '${coin.price}\$',
                                      style: AppTextStyles.mz17_800.copyWith(
                                        shadows: [],
                                        letterSpacing: -0.23,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void buy() {
    Provider.of<LocalDataProvider>(context, listen: false).addMoney(
      _quantity,
    );
  }
}
