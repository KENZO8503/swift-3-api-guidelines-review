
@available(iOS 6.0, *)
enum SKDownloadState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Waiting
  case Active
  case Paused
  case Finished
  case Failed
  case Cancelled
}
@available(iOS 6.0, *)
var SKDownloadTimeRemainingUnknown: NSTimeInterval
@available(iOS 6.0, *)
class SKDownload : NSObject {
  @available(iOS 6.0, *)
  var downloadState: SKDownloadState { get }
  @available(iOS 6.0, *)
  var contentLength: Int64 { get }
  @available(iOS 6.0, *)
  var contentIdentifier: String { get }
  @available(iOS 6.0, *)
  var contentURL: NSURL? { get }
  @available(iOS 6.0, *)
  var contentVersion: String { get }
  @available(iOS 6.0, *)
  var error: NSError? { get }
  @available(iOS 6.0, *)
  var progress: Float { get }
  @available(iOS 6.0, *)
  var timeRemaining: NSTimeInterval { get }
  @available(iOS 6.0, *)
  var transaction: SKPaymentTransaction { get }
  init()
}