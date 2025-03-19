import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static const _mz = "Mazzard";

  static final TextStyle mz17_800 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w800,
    fontSize: 17.r,
    height: 22 / 17,
    color: Colors.white,
    shadows: [
      BoxShadow(
        blurRadius: 12.r,
        offset: const Offset(0, 4),
        color: Colors.black.withOpacity(0.25),
      ),
    ],
  );

  static final TextStyle mz24_800 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w800,
    fontSize: 24.r,
    height: 22 / 24,
    color: Colors.white,
    letterSpacing: -0.43,
    shadows: [
      BoxShadow(
        blurRadius: 12.r,
        offset: const Offset(0, 4),
        color: Colors.black.withOpacity(0.25),
      ),
    ],
  );

  static final TextStyle mz17_400 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w400,
    fontSize: 17.r,
    height: 22 / 17,
    color: Colors.white,
  );

  static final TextStyle mz20_500 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w500,
    fontSize: 20.r,
    height: 34 / 20,
    letterSpacing: -0.67,
    color: Colors.white,
  );

  static final TextStyle mz20_600 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w600,
    fontSize: 20.r,
    height: 18 / 20,
    letterSpacing: -0.36,
    color: Colors.white,
  );

  static final TextStyle mz10_600 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w600,
    fontSize: 10.r,
    height: 6 / 10,
    letterSpacing: -0.03,
    color: Colors.white,
  );

  static final TextStyle mz14_600 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w600,
    fontSize: 14.r,
    height: 18 / 14,
    letterSpacing: -0.36,
    color: Colors.white,
    shadows: [
      BoxShadow(
        offset: const Offset(0, 4),
        blurRadius: 12,
        color: Colors.black.withOpacity(0.25),
      ),
    ],
  );

  static final TextStyle mz13_600 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w600,
    fontSize: 13.r,
    height: 18 / 13,
    letterSpacing: -0.08,
    color: Colors.white,
  );

  static final TextStyle mz13_500 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w500,
    fontSize: 13.r,
    height: 22 / 13,
    letterSpacing: -0.43,
    color: Colors.white,
  );

  static final TextStyle mz30_800 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w800,
    fontSize: 30.r,
    height: 1.2,
    letterSpacing: -0.32,
    color: Colors.white,
  );

  static final TextStyle mz10_700 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w700,
    fontSize: 10.r,
    height: 17 / 10,
    letterSpacing: -0.32,
    color: Colors.white,
  );

  static final TextStyle mz25_800 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w800,
    fontSize: 25.r,
    height: 17 / 25,
    letterSpacing: -0.32,
    color: Colors.white,
  );

  static final TextStyle mz20_800 = TextStyle(
    fontFamily: _mz,
    fontWeight: FontWeight.w800,
    fontSize: 20.r,
    height: 21 / 20,
    letterSpacing: -0.32,
    color: Colors.white,
    shadows: [
      BoxShadow(
        offset: const Offset(0, 4),
        blurRadius: 12,
        color: Colors.black.withOpacity(0.25),
      ),
    ],
  );
}
