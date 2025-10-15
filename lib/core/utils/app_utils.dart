part of 'utils.dart';

sealed class AppUtils {
  AppUtils._();

  /// Box
  static const Gap kGap = Gap(0);
  static const Gap kGap2 = Gap(2);
  static const Gap kGap4 = Gap(4);
  static const Gap kGap6 = Gap(6);
  static const Gap kGap8 = Gap(8);
  static const Gap kGap10 = Gap(10);
  static const Gap kGap12 = Gap(12);
  static const Gap kGap14 = Gap(14);
  static const Gap kGap16 = Gap(16);
  static const Gap kGap18 = Gap(18);
  static const Gap kGap20 = Gap(20);
  static const Gap kGap22 = Gap(22);
  static const Gap kGap24 = Gap(24);
  static const Gap kGap26 = Gap(26);
  static const Gap kGap28 = Gap(28);
  static const Gap kGap30 = Gap(30);
  static const Gap kGap32 = Gap(32);
  static const Gap kGap34 = Gap(34);
  static const Gap kGap36 = Gap(36);
  static const Gap kGap38 = Gap(38);
  static const Gap kGap40 = Gap(40);
  static const Gap kGap42 = Gap(42);
  static const Gap kGap44 = Gap(44);
  static const Gap kGap46 = Gap(46);
  static const Gap kGap48 = Gap(48);
  static const Gap kGap50 = Gap(50);
  static const Gap kGap52 = Gap(52);
  static const Gap kGap54 = Gap(54);
  static const Gap kGap56 = Gap(56);
  static const Gap kGap58 = Gap(58);
  static const Gap kGap60 = Gap(60);

  /// Paddding
  static const EdgeInsets kPaddingAll = EdgeInsets.all(0);
  static const EdgeInsets kPaddingAll2 = EdgeInsets.all(2);
  static const EdgeInsets kPaddingAll3 = EdgeInsets.all(3);
  static const EdgeInsets kPaddingAll4 = EdgeInsets.all(4);
  static const EdgeInsets kPaddingAll6 = EdgeInsets.all(6);
  static const EdgeInsets kPaddingAll8 = EdgeInsets.all(8);
  static const EdgeInsets kPaddingAll10 = EdgeInsets.all(10);
  static const EdgeInsets kPaddingAll12 = EdgeInsets.all(12);
  static const EdgeInsets kPaddingAll14 = EdgeInsets.all(14);
  static const EdgeInsets kPaddingAll16 = EdgeInsets.all(16);
  static const EdgeInsets kPaddingAll18 = EdgeInsets.all(18);
  static const EdgeInsets kPaddingAll20 = EdgeInsets.all(20);
  static const EdgeInsets kPaddingAll22 = EdgeInsets.all(22);
  static const EdgeInsets kPaddingAll24 = EdgeInsets.all(24);
  static const EdgeInsets kPaddingAll26 = EdgeInsets.all(26);
  static const EdgeInsets kPaddingAll28 = EdgeInsets.all(28);
  static const EdgeInsets kPaddingAll30 = EdgeInsets.all(30);
  static const EdgeInsets kPaddingAll32 = EdgeInsets.all(32);
  static const EdgeInsets kPaddingAll34 = EdgeInsets.all(34);
  static const EdgeInsets kPaddingAll36 = EdgeInsets.all(36);
  static const EdgeInsets kPaddingHor16Ver18 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 18,
  );
  static const EdgeInsets kPaddingHor7Ver2 = EdgeInsets.symmetric(
    horizontal: 7,
    vertical: 2,
  );
  static const EdgeInsets kPaddingHor2 = EdgeInsets.symmetric(horizontal: 2);
  static const EdgeInsets kPaddingHor4 = EdgeInsets.symmetric(horizontal: 4);
  static const EdgeInsets kPaddingHor6 = EdgeInsets.symmetric(horizontal: 6.0);
  static const EdgeInsets kPaddingHor8 = EdgeInsets.symmetric(horizontal: 8);
  static const EdgeInsets kPaddingHor10 = EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets kPaddingHor12 = EdgeInsets.symmetric(horizontal: 12);
  static const EdgeInsets kPaddingHor14 = EdgeInsets.symmetric(horizontal: 14);

  static const EdgeInsets kPaddingHor16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets kPaddingHor18 = EdgeInsets.symmetric(horizontal: 18);
  static const EdgeInsets kPaddingHor20 = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets kPaddingHor22 = EdgeInsets.symmetric(horizontal: 22);
  static const EdgeInsets kPaddingHor24 = EdgeInsets.symmetric(horizontal: 24);
  static const EdgeInsets kPaddingHor26 = EdgeInsets.symmetric(horizontal: 26);
  static const EdgeInsets kPaddingHor28 = EdgeInsets.symmetric(horizontal: 28);
  static const EdgeInsets kPaddingHor30 = EdgeInsets.symmetric(horizontal: 30);
  static const EdgeInsets kPaddingHor32 = EdgeInsets.symmetric(horizontal: 32);
  static const EdgeInsets kPaddingHor34 = EdgeInsets.symmetric(horizontal: 34);

  static const EdgeInsets kPaddingHor36 = EdgeInsets.symmetric(horizontal: 36);
  static const EdgeInsets kPaddingHor38 = EdgeInsets.symmetric(horizontal: 38);
  static const EdgeInsets kPaddingHor40 = EdgeInsets.symmetric(horizontal: 40);
  static const EdgeInsets kPaddingHor44 = EdgeInsets.symmetric(horizontal: 44);
  static const EdgeInsets kPaddingHor46 = EdgeInsets.symmetric(horizontal: 46);
  static const EdgeInsets kPaddingHor48 = EdgeInsets.symmetric(horizontal: 48);
  static const EdgeInsets kPaddingHor50 = EdgeInsets.symmetric(horizontal: 50);
  static const EdgeInsets kPaddingHor52 = EdgeInsets.symmetric(horizontal: 52);
  static const EdgeInsets kPaddingVer8 = EdgeInsets.symmetric(vertical: 8);
  static const EdgeInsets kPaddingHor8Ver2 = EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 2,
  );
  static const EdgeInsets kPaddingHor12Ver8 = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 8,
  );
  static const EdgeInsets kPaddingVer12Hor6 = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 6,
  );
  static const EdgeInsets kPaddingHor15Ver12 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  );
  static const EdgeInsets kPaddingTop16Hor20 = EdgeInsets.symmetric(
    vertical: 16,
    horizontal: 20,
  );
  static const EdgeInsets kPaddingHor16er12 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  );
  static const EdgeInsets kPaddingTop6Bot12 = EdgeInsets.only(
    top: 6.0,
    bottom: 12.0,
  );
  static const EdgeInsets kPaddingTop16Bottom12 = EdgeInsets.only(
    top: 16.0,
    bottom: 12.0,
  );

  /// Radius
  static const Radius kRadius = Radius.zero;
  static const Radius kRadius8 = Radius.circular(8);
  static const Radius kRadius12 = Radius.circular(12);
  static const Radius kRadius14 = Radius.circular(14);
  static const Radius kRadius16 = Radius.circular(16);
  static const Radius kRadius22 = Radius.circular(22);
  static const Radius kRadius24 = Radius.circular(24);
  static const Radius kRadius25 = Radius.circular(25);
  static const BorderRadius kBorderRadius = BorderRadius.zero;
  static const BorderRadius kBorderRadius2 = BorderRadius.all(
    Radius.circular(2),
  );
  static const BorderRadius kBorderRadius4 = BorderRadius.all(
    Radius.circular(4),
  );
  static const BorderRadius kBorderRadius6 = BorderRadius.all(
    Radius.circular(6),
  );
  static const BorderRadius kBorderRadius8 = BorderRadius.all(
    Radius.circular(8),
  );
  static const BorderRadius kBorderRadius9 = BorderRadius.all(
    Radius.circular(9),
  );
  static const BorderRadius kBorderRadius10 = BorderRadius.all(
    Radius.circular(10),
  );
  static const BorderRadius kBorderRadius12 = BorderRadius.all(
    Radius.circular(12),
  );
  static const BorderRadius kBorderRadius14 = BorderRadius.all(
    Radius.circular(14),
  );
  static const BorderRadius kBorderRadius16 = BorderRadius.all(
    Radius.circular(16),
  );
  static const BorderRadius kBorderRadius18 = BorderRadius.all(
    Radius.circular(18),
  );
  static const BorderRadius kBorderRadius20 = BorderRadius.all(
    Radius.circular(20),
  );
  static const BorderRadius kBorderRadius22 = BorderRadius.all(
    Radius.circular(22),
  );
  static const BorderRadius kBorderRadius24 = BorderRadius.all(
    Radius.circular(24),
  );
  static const BorderRadius kBorderRadius26 = BorderRadius.all(
    Radius.circular(26),
  );
  static const BorderRadius kBorderRadius28 = BorderRadius.all(
    Radius.circular(28),
  );
  static const BorderRadius kBorderRadius30 = BorderRadius.all(
    Radius.circular(30),
  );
  static const BorderRadius kBorderRadius32 = BorderRadius.all(
    Radius.circular(32),
  );
  static const BorderRadius kBorderRadius34 = BorderRadius.all(
    Radius.circular(34),
  );
  static const BorderRadius kBorderRadius36 = BorderRadius.all(
    Radius.circular(36),
  );
  static const BorderRadius kBorderRadius38 = BorderRadius.all(
    Radius.circular(38),
  );
  static const BorderRadius kBorderRadius40 = BorderRadius.all(
    Radius.circular(40),
  );
  static const BorderRadius kborbeTopRight28botRight28 = BorderRadius.only(
    topRight: Radius.circular(28.0),
    bottomRight: Radius.circular(28.0),
  );
  static const BorderRadius kBorderRadiusTop12 = BorderRadius.only(
    topLeft: Radius.circular(12),
    topRight: Radius.circular(12),
  );
  static const BorderRadius kBorderRadiusBot12 = BorderRadius.only(
    bottomLeft: Radius.circular(12),
    bottomRight: Radius.circular(12),
  );
}
