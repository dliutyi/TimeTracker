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
}
