// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

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
  String get noTasks => 'Chưa có nhiệm vụ nào';

  @override
  String get createFirstTask => 'Tạo nhiệm vụ đầu tiên của bạn để bắt đầu';

  @override
  String get addCriterion => 'Thêm tiêu chí';

  @override
  String get noCriteria => 'Chưa có tiêu chí nào';

  @override
  String get createFirstCriterion => 'Tạo tiêu chí đầu tiên của bạn để bắt đầu';

  @override
  String get discrete => 'Rời rạc';

  @override
  String get continuous => 'Liên tục';

  @override
  String get selections => 'lựa chọn';

  @override
  String get values => 'giá trị';

  @override
  String get step => 'bước';

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
  String get selectionLimitRequired => 'Giới hạn lựa chọn phải lớn hơn 0';

  @override
  String get minMustBeLessThanMax => 'Giá trị tối thiểu phải nhỏ hơn giá trị tối đa';

  @override
  String get stepMustBeGreaterThanZero => 'Giá trị bước phải lớn hơn 0';

  @override
  String get deleteCriterion => 'Xóa tiêu chí';

  @override
  String get deleteCriterionWarning => 'Bạn có chắc chắn muốn xóa tiêu chí này không? Hành động này không thể hoàn tác.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Tiêu chí này được sử dụng trong $count nhiệm vụ. Liên kết sẽ bị xóa khỏi những nhiệm vụ đó.';
  }

  @override
  String get history => 'Lịch sử';

  @override
  String get charts => 'Biểu đồ';

  @override
  String get noSessions => 'Chưa có phiên nào';

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
  String get filterByTask => 'Lọc theo Nhiệm vụ';

  @override
  String get allTasks => 'Tất cả Nhiệm vụ';

  @override
  String get filterByCriterion => 'Lọc theo Tiêu chí';

  @override
  String get allCriteria => 'Tất cả Tiêu chí';

  @override
  String get timeSpentPerTask => 'Thời gian Dành cho Mỗi Nhiệm vụ';

  @override
  String get taskFrequencyOverTime => 'Tần suất Nhiệm vụ Theo Thời gian';

  @override
  String get averageCriterionRatings => 'Đánh giá Tiêu chí Trung bình';

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
  String get listening => 'Listening...';

  @override
  String get taskName => 'Task Name';

  @override
  String get mottoOptional => 'Motto (optional)';

  @override
  String get criteria => 'Criteria';

  @override
  String get noCriteriaAvailable => 'No criteria available. Create criteria first.';

  @override
  String get updateTask => 'Update Task';

  @override
  String get nameTooLong => 'Task name must be 32 characters or less';

  @override
  String get mottoTooLong => 'Motto must be 128 characters or less';

  @override
  String get editTask => 'Edit Task';

  @override
  String get enable => 'Enable';

  @override
  String get disable => 'Disable';

  @override
  String get enableTask => 'Enable Task';

  @override
  String get disableTask => 'Disable Task';

  @override
  String get enableTaskMessage => 'This will enable the task and make it available again.';

  @override
  String get disableTaskMessage => 'This will disable the task. It will be moved to the bottom of the list. You can enable it again later.';

  @override
  String get taskEnabled => 'Task enabled';

  @override
  String get taskDisabled => 'Task disabled';

  @override
  String get deleteTask => 'Delete Task';

  @override
  String get deleteTaskMessage => 'This will permanently delete the task and all associated sessions. This action cannot be undone.\n\nConsider disabling the task instead if you\'re not sure.';

  @override
  String get taskDeleted => 'Task deleted';

  @override
  String get anotherTaskActive => 'Another task is already active. Stop it first.';

  @override
  String errorActivatingTask(String error) {
    return 'Error activating task: $error';
  }

  @override
  String get delete => 'Delete';

  @override
  String error(String error) {
    return 'Error: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Error stopping session: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Error discarding session: $error';
  }

  @override
  String get noActiveTaskMessage => 'Start a task from the List of Tasks to track your time.';

  @override
  String get dateFormat => 'MMMM d • HH:mm';

  @override
  String get unknownTask => 'Unknown Task';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Error loading tasks: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Error loading criteria: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Error loading sessions: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Error loading all sessions: $error';
  }

  @override
  String get unknown => 'Unknown';

  @override
  String get exportData => 'Export Data';

  @override
  String get exportAllAppDataToFile => 'Export all app data to a file';

  @override
  String get importData => 'Import Data';

  @override
  String get importDataFromFile => 'Import data from a file';

  @override
  String get chooseHowToExportData => 'Choose how you want to export the data:';

  @override
  String get saveToDevice => 'Save to Device';

  @override
  String get share => 'Share';

  @override
  String get saveExportFile => 'Save Export File';

  @override
  String dataSavedTo(String path) {
    return 'Data saved to: $path';
  }

  @override
  String get dataExportedSuccessfully => 'Data exported successfully';

  @override
  String errorExportingData(String error) {
    return 'Error exporting data: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Data imported successfully';

  @override
  String errorImportingData(String error) {
    return 'Error importing data: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'All existing data will be permanently deleted.';

  @override
  String get import => 'Import';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get chinese => 'Chinese';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Arabic';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get bengali => 'Bengali';

  @override
  String get japanese => 'Japanese';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'German';

  @override
  String get javanese => 'Javanese';

  @override
  String get korean => 'Korean';

  @override
  String get french => 'French';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Marathi';

  @override
  String get turkish => 'Turkish';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Vietnamese';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ukrainian';

  @override
  String get italian => 'Italian';

  @override
  String get russian => 'Russian';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get automatic => 'Automatic';

  @override
  String get followSystemSetting => 'Follow system setting';

  @override
  String get dataManagement => 'Data Management';

  @override
  String get version => 'Version';

  @override
  String errorSavingTask(String error) {
    return 'Error saving task: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Error deleting criterion: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Criterion \"$name\" deleted';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit selections',
      one: '1 selection',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values values',
      one: '1 value',
    );
    return 'Discrete: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Continuous: $minValue-$maxValue, step $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Are you sure you want to delete this criterion \"$name\"? This action cannot be undone.';
  }

  @override
  String valueX(int index) {
    return 'Value $index';
  }

  @override
  String get minValueRequired => 'Min value is required';

  @override
  String get maxValueRequired => 'Max value is required';

  @override
  String get stepValueRequired => 'Step value is required';

  @override
  String get minValueMustBeANumber => 'Min value must be a number';

  @override
  String get maxValueMustBeANumber => 'Max value must be a number';

  @override
  String get stepValueMustBeAPositiveNumber => 'Step value must be a positive number';

  @override
  String get minValueMustBeLessThanMaxValue => 'Min value must be less than max value';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Max value must be greater than min value';

  @override
  String get stepValueMustBeGreaterThanZero => 'Step value must be greater than 0';

  @override
  String get valueCannotBeEmpty => 'Value cannot be empty';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Selection limit must be greater than 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Selection limit must be a positive number';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'At least one value is required for discrete criteria';

  @override
  String get selectIconType => 'Select Icon Type';

  @override
  String get icon => 'Icon';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Enter criterion name';

  @override
  String get type => 'Type';

  @override
  String get discreteConfiguration => 'Discrete Configuration';

  @override
  String get howManyValuesCanBeSelected => 'How many values can be selected';

  @override
  String get continuousConfiguration => 'Continuous Configuration';

  @override
  String get minimumAllowedValue => 'Minimum allowed value';

  @override
  String get maximumAllowedValue => 'Maximum allowed value';

  @override
  String get incrementDecrementStep => 'Increment/decrement step';

  @override
  String errorSavingCriterion(String error) {
    return 'Error saving criterion: $error';
  }

  @override
  String get editCriterion => 'Edit Criterion';

  @override
  String get selectIcon => 'Select Icon';

  @override
  String get selectEmoji => 'Select Emoji';

  @override
  String get icons => 'Icons';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Select Color';

  @override
  String get noCriteriaToRate => 'No criteria to rate';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'This task has no criteria assigned.';

  @override
  String errorSavingRatings(String error) {
    return 'Error saving ratings: $error';
  }

  @override
  String get skip => 'Skip';

  @override
  String get save => 'Save';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Range: $minValue - $maxValue (step: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Rate Task: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Select up to $selectionLimit value(s)';
  }

  @override
  String get swipeToStart => 'Swipe to start';
}
