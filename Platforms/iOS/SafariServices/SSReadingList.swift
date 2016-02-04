
@available(iOS 7.0, *)
class SSReadingList : NSObject {
  class func defaultReadingList() -> SSReadingList?
  class func supportsURL(URL: NSURL) -> Bool
  @available(iOS 7.0, *)
  func addReadingListItemWithURL(URL: NSURL, title: String?, previewText: String?) throws
}
@available(iOS 7.0, *)
let SSReadingListErrorDomain: String
@available(iOS 7.0, *)
enum SSReadingListErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case URLSchemeNotAllowed
}