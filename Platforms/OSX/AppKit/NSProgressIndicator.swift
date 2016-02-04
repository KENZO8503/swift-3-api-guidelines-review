
enum NSProgressIndicatorThickness : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PreferredThickness
  case PreferredSmallThickness
  case PreferredLargeThickness
  case PreferredAquaThickness
}
enum NSProgressIndicatorStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BarStyle
  case SpinningStyle
}
class NSProgressIndicator : NSView, NSAccessibilityProgressIndicator {
  var indeterminate: Bool
  var bezeled: Bool
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  var doubleValue: Double
  func incrementBy(delta: Double)
  var minValue: Double
  var maxValue: Double
  var usesThreadedAnimation: Bool
  func startAnimation(sender: AnyObject?)
  func stopAnimation(sender: AnyObject?)
  var style: NSProgressIndicatorStyle
  func sizeToFit()
  var displayedWhenStopped: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityValue() -> NSNumber?
}
struct __progressIndicatorFlags {
  var isSpinning: UInt32
  var isVector: UInt32
  var isLocked: UInt32
  var controlTint: UInt32
  var controlSize: UInt32
  var style: UInt32
  var _delayedStartup: UInt32
  var hideWhenStopped: UInt32
  var revive: UInt32
  var _temporarilyBlockHeartBeating: UInt32
  var _isHidden: UInt32
  var _isHeartBeatInstalled: UInt32
  var _customRenderer: UInt32
  var _lastFrame: UInt32
  var _isDetaching: UInt32
  var RESERVED: UInt32
  init()
  init(isSpinning: UInt32, isVector: UInt32, isLocked: UInt32, controlTint: UInt32, controlSize: UInt32, style: UInt32, _delayedStartup: UInt32, hideWhenStopped: UInt32, revive: UInt32, _temporarilyBlockHeartBeating: UInt32, _isHidden: UInt32, _isHeartBeatInstalled: UInt32, _customRenderer: UInt32, _lastFrame: UInt32, _isDetaching: UInt32, RESERVED: UInt32)
}
extension NSProgressIndicator {
}