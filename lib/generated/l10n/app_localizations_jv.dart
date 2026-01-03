// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'Sugeng rawuh ing YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Lacak wektu sampeyan, ngatur tugas, lan nganalisis produktivitas sampeyan kanthi gampang.';

  @override
  String get continueButton => 'Lanjutake';

  @override
  String get activeTask => 'Tugas Aktif';

  @override
  String get listOfTasks => 'Daftar Tugas';

  @override
  String get statistics => 'Statistik';

  @override
  String get listOfCriteria => 'Daftar Kriteria';

  @override
  String get settings => 'Setelan';

  @override
  String get addTask => 'Tambah Tugas';

  @override
  String get generalMotto => 'Motto Umum';

  @override
  String get noTasks => 'Durung ana tugas';

  @override
  String get createFirstTask => 'Gawe tugas pisanan sampeyan kanggo miwiti';

  @override
  String get addCriterion => 'Tambah Kriteria';

  @override
  String get noCriteria => 'Durung ana kriteria';

  @override
  String get createFirstCriterion => 'Gawe kriteria pisanan sampeyan kanggo miwiti';

  @override
  String get discrete => 'Diskrit';

  @override
  String get continuous => 'Kontinyu';

  @override
  String get selections => 'pilihan';

  @override
  String get values => 'nilai';

  @override
  String get step => 'langkah';

  @override
  String get criterionName => 'Jeneng Kriteria';

  @override
  String get criterionType => 'Jinis Kriteria';

  @override
  String get addValue => 'Tambah Nilai';

  @override
  String get selectionLimit => 'Watesan Pilihan';

  @override
  String get minValue => 'Nilai Minimal';

  @override
  String get maxValue => 'Nilai Maksimal';

  @override
  String get stepValue => 'Nilai Langkah';

  @override
  String get value => 'Nilai';

  @override
  String get updateCriterion => 'Nganyari Kriteria';

  @override
  String get discard => 'Batal';

  @override
  String get nameRequired => 'Jeneng dibutuhake';

  @override
  String get atLeastOneValue => 'Paling ora siji nilai dibutuhake';

  @override
  String get selectionLimitRequired => 'Watesan pilihan kudu luwih gedhe saka 0';

  @override
  String get minMustBeLessThanMax => 'Nilai minimal kudu luwih cilik saka nilai maksimal';

  @override
  String get stepMustBeGreaterThanZero => 'Nilai langkah kudu luwih gedhe saka 0';

  @override
  String get deleteCriterion => 'Busak Kriteria';

  @override
  String get deleteCriterionWarning => 'Apa sampeyan yakin pengin mbusak kriteria iki? Tindakan iki ora bisa dibatalake.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Kriteria iki digunakake ing $count tugas. Asosiasi bakal dibusak saka tugas kasebut.';
  }

  @override
  String get history => 'Riwayat';

  @override
  String get charts => 'Grafik';

  @override
  String get noSessions => 'Durung ana sesi';

  @override
  String get noSessionsDescription => 'Miwiti nglacak wektu kanggo ndeleng sesi sampeyan ing kene';

  @override
  String get noSessionsForPeriod => 'Ora ditemokake sesi kanggo periode wektu sing dipilih';

  @override
  String get noActiveTask => 'Ora ana tugas aktif';

  @override
  String get startTaskFromList => 'Miwiti tugas saka dhaptar kanggo miwiti nglacak';

  @override
  String get startTime => 'Wektu Miwiti';

  @override
  String get endTime => 'Wektu Mungkasi';

  @override
  String get stop => 'Mungkasi';

  @override
  String get endTimeAfterStart => 'Wektu mungkasi kudu sawise wektu miwiti';

  @override
  String get discardSession => 'Batal Sesi';

  @override
  String get discardSessionMessage => 'Apa sampeyan yakin pengin mbatalake sesi iki? Tindakan iki ora bisa dibatalake.';

  @override
  String get cancel => 'Batal';

  @override
  String get swipeToStop => 'Geser kanggo mungkasi';

  @override
  String get filterByTask => 'Saring miturut Tugas';

  @override
  String get allTasks => 'Kabeh Tugas';

  @override
  String get filterByCriterion => 'Saring miturut Kriteria';

  @override
  String get allCriteria => 'Kabeh Kriteria';

  @override
  String get timeSpentPerTask => 'Wektu sing Digunakake saben Tugas';

  @override
  String get taskFrequencyOverTime => 'Frekuensi Tugas liwat Wektu';

  @override
  String get averageCriterionRatings => 'Rating Kriteria Rata-rata';

  @override
  String get activityChart => 'Grafik Aktivitas';

  @override
  String get day => 'Dina';

  @override
  String get week => 'Minggu';

  @override
  String get month => 'Wulan';

  @override
  String get year => 'Taun';

  @override
  String get all => 'Kabeh';
}
