// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker\'a Hoş Geldiniz';

  @override
  String get welcomeDescription => 'Zamanınızı takip edin, görevleri yönetin ve verimliliğinizi kolayca analiz edin.';

  @override
  String get continueButton => 'Devam Et';

  @override
  String get activeTask => 'Aktif Görev';

  @override
  String get listOfTasks => 'Görev Listesi';

  @override
  String get statistics => 'İstatistikler';

  @override
  String get listOfCriteria => 'Kriter Listesi';

  @override
  String get settings => 'Ayarlar';

  @override
  String get addTask => 'Görev Ekle';

  @override
  String get generalMotto => 'Genel Slogan';

  @override
  String get noTasks => 'Henüz görev yok';

  @override
  String get createFirstTask => 'Başlamak için ilk görevinizi oluşturun';

  @override
  String get addCriterion => 'Kriter Ekle';

  @override
  String get noCriteria => 'Henüz kriter yok';

  @override
  String get createFirstCriterion => 'Başlamak için ilk kriterinizi oluşturun';

  @override
  String get discrete => 'Ayrık';

  @override
  String get continuous => 'Sürekli';

  @override
  String get selections => 'seçimler';

  @override
  String get values => 'değerler';

  @override
  String get step => 'adım';

  @override
  String get criterionName => 'Kriter Adı';

  @override
  String get criterionType => 'Kriter Türü';

  @override
  String get addValue => 'Değer Ekle';

  @override
  String get selectionLimit => 'Seçim Limiti';

  @override
  String get minValue => 'Min Değer';

  @override
  String get maxValue => 'Max Değer';

  @override
  String get stepValue => 'Adım Değeri';

  @override
  String get value => 'Değer';

  @override
  String get updateCriterion => 'Kriteri Güncelle';

  @override
  String get discard => 'İptal Et';

  @override
  String get nameRequired => 'Ad gereklidir';

  @override
  String get atLeastOneValue => 'En az bir değer gereklidir';

  @override
  String get selectionLimitRequired => 'Seçim limiti 0\'dan büyük olmalıdır';

  @override
  String get minMustBeLessThanMax => 'Min değer max değerden küçük olmalıdır';

  @override
  String get stepMustBeGreaterThanZero => 'Adım değeri 0\'dan büyük olmalıdır';

  @override
  String get deleteCriterion => 'Kriteri Sil';

  @override
  String get deleteCriterionWarning => 'Bu kriteri silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Bu kriter $count görevde kullanılıyor. İlişki bu görevlerden kaldırılacak.';
  }

  @override
  String get history => 'Geçmiş';

  @override
  String get charts => 'Grafikler';

  @override
  String get noSessions => 'Henüz oturum yok';

  @override
  String get noSessionsDescription => 'Oturumlarınızı burada görmek için zaman takibine başlayın';

  @override
  String get noSessionsForPeriod => 'Seçilen zaman dilimi için oturum bulunamadı';

  @override
  String get noActiveTask => 'Aktif görev yok';

  @override
  String get startTaskFromList => 'Takibe başlamak için listeden bir görev başlatın';

  @override
  String get startTime => 'Başlangıç Zamanı';

  @override
  String get endTime => 'Bitiş Zamanı';

  @override
  String get stop => 'Durdur';

  @override
  String get endTimeAfterStart => 'Bitiş zamanı başlangıç zamanından sonra olmalıdır';

  @override
  String get discardSession => 'Oturumu İptal Et';

  @override
  String get discardSessionMessage => 'Bu oturumu iptal etmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String get cancel => 'İptal';

  @override
  String get swipeToStop => 'Durdurmak için kaydırın';

  @override
  String get filterByTask => 'Göreve Göre Filtrele';

  @override
  String get allTasks => 'Tüm Görevler';

  @override
  String get filterByCriterion => 'Kriterlere Göre Filtrele';

  @override
  String get allCriteria => 'Tüm Kriterler';

  @override
  String get timeSpentPerTask => 'Görev Başına Harcanan Zaman';

  @override
  String get taskFrequencyOverTime => 'Zaman İçinde Görev Sıklığı';

  @override
  String get averageCriterionRatings => 'Ortalama Kriter Değerlendirmeleri';

  @override
  String get activityChart => 'Aktivite Grafiği';

  @override
  String get day => 'Gün';

  @override
  String get week => 'Hafta';

  @override
  String get month => 'Ay';

  @override
  String get year => 'Yıl';

  @override
  String get all => 'Tümü';
}
