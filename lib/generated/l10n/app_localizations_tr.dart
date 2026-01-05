// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

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
  String get noTasks => 'Görev yok';

  @override
  String get createFirstTask => 'Başlamak için ilk görevinizi oluşturun';

  @override
  String get addCriterion => 'Kriter Ekle';

  @override
  String get noCriteria => 'Kriter yok';

  @override
  String get createFirstCriterion => 'Başlamak için ilk kriterinizi oluşturun';

  @override
  String get discrete => 'Ayrık';

  @override
  String get continuous => 'Sürekli';

  @override
  String get selections => 'seçimler';

  @override
  String get values => 'Değerler';

  @override
  String get step => 'Adım';

  @override
  String get criterionName => 'Kriter Adı';

  @override
  String get criterionType => 'Kriter Türü';

  @override
  String get addValue => 'Değer Ekle';

  @override
  String get selectionLimit => 'Seçim limiti';

  @override
  String get minValue => 'Minimum Değer';

  @override
  String get maxValue => 'Maksimum Değer';

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
  String get selectionLimitRequired => 'Seçim limiti gereklidir';

  @override
  String get minMustBeLessThanMax => 'Minimum değer maksimum değerden küçük olmalıdır';

  @override
  String get stepMustBeGreaterThanZero => 'Adım değeri 0\'dan büyük olmalıdır';

  @override
  String get deleteCriterion => 'Kriter Sil';

  @override
  String deleteCriterionWarning(Object name) {
    return 'Bu kriteri silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'Bu kriter $count görevde kullanılıyor. İlişki bu görevlerden kaldırılacak.';
  }

  @override
  String get history => 'Geçmiş';

  @override
  String get charts => 'Grafikler';

  @override
  String get noSessions => 'Oturum yok';

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
  String get taskFrequencyOverTime => 'Zaman içinde görev sıklığı';

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

  @override
  String get listening => 'Dinleme';

  @override
  String get taskName => 'Görev Adı';

  @override
  String get mottoOptional => 'Motto (İsteğe Bağlı)';

  @override
  String get criteria => 'Kriterler';

  @override
  String get noCriteriaAvailable => 'Kriterler mevcut değil';

  @override
  String get updateTask => 'Görevi Güncelle';

  @override
  String get nameTooLong => 'Ad 32 karakterden fazla olamaz';

  @override
  String get mottoTooLong => 'Motto 128 karakterden fazla olamaz';

  @override
  String get editTask => 'Görevi Düzenle';

  @override
  String get enable => 'Etkinleştir';

  @override
  String get disable => 'Devre Dışı Bırak';

  @override
  String get enableTask => 'Görevi Etkinleştir';

  @override
  String get disableTask => 'Görevi Devre Dışı Bırak';

  @override
  String get enableTaskMessage => 'Bu görevi etkinleştirmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String get disableTaskMessage => 'Bu görevi devre dışı bırakmak istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String taskEnabled(Object name) {
    return 'Görevi etkinleştirdi';
  }

  @override
  String taskDisabled(Object name) {
    return 'Görevi devre dışı bıraktı';
  }

  @override
  String get deleteTask => 'Görev Sil';

  @override
  String get deleteTaskMessage => 'Bu görevi silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String taskDeleted(Object name) {
    return 'Görevi silindi';
  }

  @override
  String get anotherTaskActive => 'Başka bir görev aktif.';

  @override
  String errorActivatingTask(String error) {
    return 'Görevi etkinleştirmek için hata oluştu: $error';
  }

  @override
  String get delete => 'Sil';

  @override
  String error(String error) {
    return 'Hata: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Oturumu durdurma hatası: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Oturumu iptal etmek için hata oluştu: $error';
  }

  @override
  String get noActiveTaskMessage => 'Aktif görev yok';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'Bilinmeyen Görev';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Görevleri yükleme hatası: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Kriterleri yükleme hatası: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Oturumları yükleme hatası: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Tüm oturumları yükleme hatası: $error';
  }

  @override
  String get unknown => 'Bilinmeyen';

  @override
  String get exportData => 'Verileri dışa aktar';

  @override
  String get exportAllAppDataToFile => 'Tüm uygulama verilerini dosyaya dışa aktar';

  @override
  String get importData => 'Verileri içe aktar';

  @override
  String get importDataFromFile => 'Dosyadan verileri içe aktar';

  @override
  String get chooseHowToExportData => 'Verileri nasıl dışa aktaracağınızı seçin';

  @override
  String get saveToDevice => 'Cihaza kaydet';

  @override
  String get share => 'Paylaş';

  @override
  String get saveExportFile => 'Dışa aktarma dosyasını kaydet';

  @override
  String dataSavedTo(String path) {
    return 'Veriler başarıyla kaydedildi';
  }

  @override
  String get dataExportedSuccessfully => 'Veriler başarıyla dışa aktarıldı';

  @override
  String errorExportingData(String error) {
    return 'Verileri dışa aktarma hatası: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Veriler başarıyla içe aktarıldı';

  @override
  String errorImportingData(String error) {
    return 'Verileri içe aktarma hatası: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Tüm veriler kalıcı olarak silinecek.';

  @override
  String get import => 'İçe Aktar';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil seç';

  @override
  String get english => 'İngilizce';

  @override
  String get spanish => 'İspanyolca';

  @override
  String get chinese => 'Çince';

  @override
  String get hindi => 'Hindu';

  @override
  String get arabic => 'Arapça';

  @override
  String get portuguese => 'Portekizce';

  @override
  String get bengali => 'Bengalca';

  @override
  String get japanese => 'Japonca';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'Almanca';

  @override
  String get javanese => 'Java';

  @override
  String get korean => 'Korece';

  @override
  String get french => 'Fransızca';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Marathi';

  @override
  String get turkish => 'Türkçe';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Vietnamca';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ukraynaca';

  @override
  String get italian => 'İtalyanca';

  @override
  String get russian => 'Rusça';

  @override
  String get darkMode => 'Koyu Mod';

  @override
  String get light => 'Açık';

  @override
  String get dark => 'Koyu';

  @override
  String get automatic => 'Otomatik';

  @override
  String get followSystemSetting => 'Sistem ayarlarına göre';

  @override
  String get dataManagement => 'Veri Yönetimi';

  @override
  String get version => 'Versiyon';

  @override
  String errorSavingTask(String error) {
    return 'Görevi kaydetme hatası: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Kriteri silmek için hata oluştu: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Kriter \"$name\" silindi';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit değer',
      one: '1 değer',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values değer',
      one: '1 değer',
    );
    return 'Ayrık Kriter: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Sürekli Kriter';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Bu kriteri silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';
  }

  @override
  String valueX(int index) {
    return 'Değer $index';
  }

  @override
  String get minValueRequired => 'Minimum değer gereklidir';

  @override
  String get maxValueRequired => 'Maksimum değer gereklidir';

  @override
  String get stepValueRequired => 'Adım değeri gereklidir';

  @override
  String get minValueMustBeANumber => 'Minimum değer bir sayı olmalıdır';

  @override
  String get maxValueMustBeANumber => 'Maksimum değer bir sayı olmalıdır';

  @override
  String get stepValueMustBeAPositiveNumber => 'Adım değeri pozitif bir sayı olmalıdır';

  @override
  String get minValueMustBeLessThanMaxValue => 'Minimum değer maksimum değerden küçük olmalıdır';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Maksimum değer minimum değerden büyük olmalıdır';

  @override
  String get stepValueMustBeGreaterThanZero => 'Adım değeri 0\'dan büyük olmalıdır';

  @override
  String get valueCannotBeEmpty => 'Değer boş olamaz';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Seçim limiti 0\'dan büyük olmalıdır';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Seçim limiti pozitif bir sayı olmalıdır';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Ayrık kriterler için en az bir değer gereklidir';

  @override
  String get selectIconType => 'İkon tipi seç';

  @override
  String get icon => 'İkon';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Kriter adı girin';

  @override
  String get type => 'Tip';

  @override
  String get discreteConfiguration => 'Ayrık Yapılandırma';

  @override
  String get howManyValuesCanBeSelected => 'Kaç değer seçilebilir?';

  @override
  String get continuousConfiguration => 'Sürekli Yapılandırma';

  @override
  String get minimumAllowedValue => 'Minimum Değer';

  @override
  String get maximumAllowedValue => 'Maksimum Değer';

  @override
  String get incrementDecrementStep => 'Artır/Azalt Adım';

  @override
  String errorSavingCriterion(String error) {
    return 'Kriteri kaydetme hatası: $error';
  }

  @override
  String get editCriterion => 'Kriteri Düzenle';

  @override
  String get selectIcon => 'İkon seç';

  @override
  String get selectEmoji => 'Emoji seç';

  @override
  String get icons => 'İkonlar';

  @override
  String get emojis => 'Emojiler';

  @override
  String get selectColor => 'Renk seç';

  @override
  String get noCriteriaToRate => 'Kriterleri değerlendirmek için kriter yok';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Bu görev için kriter atanmamış';

  @override
  String errorSavingRatings(String error) {
    return 'Değerlendirmeleri kaydetme hatası: $error';
  }

  @override
  String get skip => 'Atla';

  @override
  String get save => 'Kaydet';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Aralık: $minValue - $maxValue (adım: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Görevi değerlendir: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'En fazla $selectionLimit değer seçin';
  }

  @override
  String get swipeToStart => 'Başlamak için kaydırın';
}
