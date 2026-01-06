// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'Chào mừng đến với YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Theo dõi thời gian của bạn, quản lý nhiệm vụ và phân tích năng suất của bạn một cách dễ dàng.';

  @override
  String get continueButton => 'Tiếp tục';

  @override
  String get activeTask => 'Nhiệm vụ đang hoạt động';

  @override
  String get listOfTasks => 'Danh sách nhiệm vụ';

  @override
  String get statistics => 'Thống kê';

  @override
  String get listOfCriteria => 'Danh sách tiêu chí';

  @override
  String get settings => 'Cài đặt';

  @override
  String get addTask => 'Thêm nhiệm vụ';

  @override
  String get generalMotto => 'Khẩu hiệu chung';

  @override
  String get noTasks => 'Không có nhiệm vụ nào';

  @override
  String get createFirstTask => 'Tạo nhiệm vụ đầu tiên của bạn để bắt đầu';

  @override
  String get addCriterion => 'Thêm tiêu chí';

  @override
  String get noCriteria => 'Không có tiêu chí nào';

  @override
  String get createFirstCriterion => 'Tạo tiêu chí đầu tiên của bạn để bắt đầu';

  @override
  String get discrete => 'Rời rạc';

  @override
  String get continuous => 'Liên tục';

  @override
  String get selections => 'lựa chọn';

  @override
  String get values => 'Giá trị';

  @override
  String get step => 'Bước';

  @override
  String get criterionName => 'Tên tiêu chí';

  @override
  String get criterionType => 'Loại tiêu chí';

  @override
  String get addValue => 'Thêm giá trị';

  @override
  String get selectionLimit => 'Giới hạn lựa chọn';

  @override
  String get minValue => 'Giá trị tối thiểu';

  @override
  String get maxValue => 'Giá trị tối đa';

  @override
  String get stepValue => 'Giá trị bước';

  @override
  String get value => 'Giá trị';

  @override
  String get updateCriterion => 'Cập nhật tiêu chí';

  @override
  String get discard => 'Hủy';

  @override
  String get nameRequired => 'Tên là bắt buộc';

  @override
  String get atLeastOneValue => 'Cần ít nhất một giá trị';

  @override
  String get selectionLimitRequired => 'Giới hạn lựa chọn là bắt buộc';

  @override
  String get minMustBeLessThanMax => 'Giá trị tối thiểu phải nhỏ hơn giá trị tối đa';

  @override
  String get stepMustBeGreaterThanZero => 'Giá trị bước phải lớn hơn 0';

  @override
  String get deleteCriterion => 'Xóa tiêu chí';

  @override
  String deleteCriterionWarning(Object name) {
    return 'Bạn có chắc chắn muốn xóa tiêu chí này không? Hành động này không thể hoàn tác.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'Tiêu chí này được sử dụng trong $count nhiệm vụ. Liên kết sẽ bị xóa khỏi những nhiệm vụ đó.';
  }

  @override
  String get history => 'Lịch sử';

  @override
  String get charts => 'Biểu đồ';

  @override
  String get noSessions => 'Không có phiên nào';

  @override
  String get noSessionsDescription => 'Bắt đầu theo dõi thời gian để xem các phiên của bạn ở đây';

  @override
  String get noSessionsForPeriod => 'Không tìm thấy phiên cho khoảng thời gian đã chọn';

  @override
  String get noActiveTask => 'Không có nhiệm vụ đang hoạt động';

  @override
  String get startTaskFromList => 'Bắt đầu một nhiệm vụ từ danh sách để bắt đầu theo dõi';

  @override
  String get startTime => 'Thời gian bắt đầu';

  @override
  String get endTime => 'Thời gian kết thúc';

  @override
  String get stop => 'Dừng';

  @override
  String get endTimeAfterStart => 'Thời gian kết thúc phải sau thời gian bắt đầu';

  @override
  String get discardSession => 'Hủy phiên';

  @override
  String get discardSessionMessage => 'Bạn có chắc chắn muốn hủy phiên này không? Hành động này không thể hoàn tác.';

  @override
  String get cancel => 'Hủy';

  @override
  String get swipeToStop => 'Vuốt để dừng';

  @override
  String get filterByTask => 'Lọc theo nhiệm vụ';

  @override
  String get allTasks => 'Tất cả nhiệm vụ';

  @override
  String get filterByCriterion => 'Lọc theo tiêu chí';

  @override
  String get allCriteria => 'Tất cả tiêu chí';

  @override
  String get timeSpentPerTask => 'Thời gian Dành cho Mỗi Nhiệm vụ';

  @override
  String get taskFrequencyOverTime => 'Tần suất Nhiệm vụ Theo Thời gian';

  @override
  String get averageCriterionRatings => 'Đánh giá tiêu chí trung bình';

  @override
  String get activityChart => 'Biểu đồ Hoạt động';

  @override
  String get day => 'Ngày';

  @override
  String get week => 'Tuần';

  @override
  String get month => 'Tháng';

  @override
  String get year => 'Năm';

  @override
  String get all => 'Tất cả';

  @override
  String get listening => 'Nghe';

  @override
  String get taskName => 'Tên nhiệm vụ';

  @override
  String get mottoOptional => 'Motto (Tùy chọn)';

  @override
  String get criteria => 'Tiêu chí';

  @override
  String get noCriteriaAvailable => 'Không có tiêu chí nào';

  @override
  String get updateTask => 'Cập nhật nhiệm vụ';

  @override
  String get nameTooLong => 'Tên phải ít hơn 128 ký tự';

  @override
  String get mottoTooLong => 'Motto phải ít hơn 128 ký tự';

  @override
  String get editTask => 'Sửa nhiệm vụ';

  @override
  String get enable => 'Kích hoạt';

  @override
  String get disable => 'Vô hiệu hóa';

  @override
  String get enableTask => 'Kích hoạt nhiệm vụ';

  @override
  String get disableTask => 'Vô hiệu hóa nhiệm vụ';

  @override
  String get enableTaskMessage => 'Bạn có chắc chắn muốn kích hoạt nhiệm vụ này không? Hành động này không thể hoàn tác.';

  @override
  String get disableTaskMessage => 'Bạn có chắc chắn muốn vô hiệu hóa nhiệm vụ này không? Hành động này không thể hoàn tác.';

  @override
  String taskEnabled(Object name) {
    return 'Nhiệm vụ đã được kích hoạt';
  }

  @override
  String taskDisabled(Object name) {
    return 'Nhiệm vụ đã bị vô hiệu hóa';
  }

  @override
  String get deleteTask => 'Xóa nhiệm vụ';

  @override
  String get deleteTaskMessage => 'Bạn có chắc chắn muốn xóa nhiệm vụ này không? Hành động này không thể hoàn tác.';

  @override
  String taskDeleted(Object name) {
    return 'Nhiệm vụ đã bị xóa';
  }

  @override
  String get anotherTaskActive => 'Một nhiệm vụ khác đang hoạt động. Hãy dừng nó trước khi bắt đầu.';

  @override
  String errorActivatingTask(String error) {
    return 'Lỗi khi kích hoạt nhiệm vụ: $error';
  }

  @override
  String get delete => 'Xóa';

  @override
  String error(String error) {
    return 'Lỗi: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Lỗi khi dừng phiên: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Lỗi khi hủy phiên: $error';
  }

  @override
  String get noActiveTaskMessage => 'Không có nhiệm vụ đang hoạt động';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'Không xác định nhiệm vụ';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Lỗi khi tải nhiệm vụ: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Lỗi khi tải tiêu chí: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Lỗi khi tải phiên: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Lỗi khi tải tất cả phiên: $error';
  }

  @override
  String get unknown => 'Không xác định';

  @override
  String get exportData => 'Xuất dữ liệu';

  @override
  String get exportAllAppDataToFile => 'Xuất tất cả dữ liệu ứng dụng vào tệp';

  @override
  String get importData => 'Nhập dữ liệu';

  @override
  String get importDataFromFile => 'Nhập dữ liệu từ tệp';

  @override
  String get chooseHowToExportData => 'Chọn cách xuất dữ liệu';

  @override
  String get saveToDevice => 'Lưu vào thiết bị';

  @override
  String get share => 'Chia sẻ';

  @override
  String get saveExportFile => 'Lưu dữ liệu xuất ra file';

  @override
  String dataSavedTo(String path) {
    return 'Dữ liệu đã được lưu thành công';
  }

  @override
  String get dataExportedSuccessfully => 'Dữ liệu đã được xuất thành công';

  @override
  String errorExportingData(String error) {
    return 'Lỗi khi xuất dữ liệu: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Dữ liệu đã được nhập thành công';

  @override
  String errorImportingData(String error) {
    return 'Lỗi khi nhập dữ liệu: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Tất cả dữ liệu hiện có sẽ bị xóa vĩnh viễn.';

  @override
  String get import => 'Nhập';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get selectLanguage => 'Chọn ngôn ngữ';

  @override
  String get english => 'Tiếng Anh';

  @override
  String get spanish => 'Tây Ban Nha';

  @override
  String get chinese => 'Trung Quốc';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Tiếng Ả Rập';

  @override
  String get portuguese => 'Bồ Đào Nha';

  @override
  String get bengali => 'Bengali';

  @override
  String get japanese => 'Nhật';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'Đức';

  @override
  String get javanese => 'Javanese';

  @override
  String get korean => 'Hàn';

  @override
  String get french => 'Pháp';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Marathi';

  @override
  String get turkish => 'Thổ Nhĩ Kỳ';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Việt Nam';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ucrai';

  @override
  String get italian => 'Ýtali';

  @override
  String get russian => 'Nga';

  @override
  String get darkMode => 'Chế độ tối';

  @override
  String get light => 'Sáng';

  @override
  String get dark => 'Tối';

  @override
  String get automatic => 'Tự động';

  @override
  String get followSystemSetting => 'Theo cài đặt hệ thống';

  @override
  String get dataManagement => 'Quản lý dữ liệu';

  @override
  String get version => 'Phiên bản';

  @override
  String errorSavingTask(String error) {
    return 'Lỗi khi lưu nhiệm vụ: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Lỗi khi xóa tiêu chí: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Tiêu chí \"$name\" đã bị xóa';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit giá trị',
      one: '1 giá trị',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values giá trị',
      one: '1 giá trị',
    );
    return 'Rời rạc: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Liên tục';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Bạn có chắc chắn muốn xóa tiêu chí \"$name\" không? Hành động này không thể hoàn tác.';
  }

  @override
  String valueX(int index) {
    return 'Giá trị $index';
  }

  @override
  String get minValueRequired => 'Giá trị tối thiểu là bắt buộc';

  @override
  String get maxValueRequired => 'Giá trị tối đa là bắt buộc';

  @override
  String get stepValueRequired => 'Giá trị bước là bắt buộc';

  @override
  String get minValueMustBeANumber => 'Giá trị tối thiểu phải là một số';

  @override
  String get maxValueMustBeANumber => 'Giá trị tối đa phải là một số';

  @override
  String get stepValueMustBeAPositiveNumber => 'Giá trị bước phải là một số dương';

  @override
  String get minValueMustBeLessThanMaxValue => 'Giá trị tối thiểu phải nhỏ hơn giá trị tối đa';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Giá trị tối đa phải lớn hơn giá trị tối thiểu';

  @override
  String get stepValueMustBeGreaterThanZero => 'Giá trị bước phải lớn hơn 0';

  @override
  String get valueCannotBeEmpty => 'Giá trị không được để trống';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Giới hạn lựa chọn phải lớn hơn 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Giới hạn lựa chọn phải là một số dương';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Cần ít nhất một giá trị cho tiêu chí rời rạc';

  @override
  String get selectIconType => 'Chọn loại biểu tượng';

  @override
  String get icon => 'Biểu tượng';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Nhập tên tiêu chí';

  @override
  String get type => 'Loại';

  @override
  String get discreteConfiguration => 'Cấu hình rời rạc';

  @override
  String get howManyValuesCanBeSelected => 'Có thể chọn bao nhiêu giá trị?';

  @override
  String get continuousConfiguration => 'Cấu hình liên tục';

  @override
  String get minimumAllowedValue => 'Giá trị tối thiểu cho phép';

  @override
  String get maximumAllowedValue => 'Giá trị tối đa cho phép';

  @override
  String get incrementDecrementStep => 'Tăng giảm bước';

  @override
  String errorSavingCriterion(String error) {
    return 'Lỗi khi lưu tiêu chí: $error';
  }

  @override
  String get editCriterion => 'Sửa tiêu chí';

  @override
  String get selectIcon => 'Chọn biểu tượng';

  @override
  String get selectEmoji => 'Chọn Emoji';

  @override
  String get icons => 'Biểu tượng';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Chọn màu';

  @override
  String get noCriteriaToRate => 'Không có tiêu chí để đánh giá';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Nhiệm vụ này không có tiêu chí nào';

  @override
  String errorSavingRatings(String error) {
    return 'Lỗi khi lưu đánh giá: $error';
  }

  @override
  String get skip => 'Bỏ qua';

  @override
  String get save => 'Lưu';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Khoảng: $minValue - $maxValue (Bước: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Đánh giá nhiệm vụ: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Chọn tối đa $selectionLimit giá trị';
  }

  @override
  String get swipeToStart => 'Vuốt để bắt đầu';

  @override
  String get resumeSession => 'Tiếp tục phiên';

  @override
  String get resumeSessionMessage => 'Bạn có chắc chắn muốn tiếp tục phiên này không? Hành động này không thể hoàn tác.';

  @override
  String get deleteSession => 'Xóa phiên';

  @override
  String get deleteSessionMessage => 'Bạn có chắc chắn muốn xóa phiên này không? Hành động này không thể hoàn tác.';

  @override
  String get resume => 'Tiếp tục';
}
