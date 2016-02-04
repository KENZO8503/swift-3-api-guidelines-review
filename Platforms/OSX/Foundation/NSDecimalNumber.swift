
let NSDecimalNumberExactnessException: String
let NSDecimalNumberOverflowException: String
let NSDecimalNumberUnderflowException: String
let NSDecimalNumberDivideByZeroException: String
protocol NSDecimalNumberBehaviors {
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: NSCalculationError, leftOperand: NSDecimalNumber, rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
}
class NSDecimalNumber : NSNumber {
  convenience init(mantissa: UInt64, exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: NSDecimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale: AnyObject?)
  func descriptionWithLocale(locale: AnyObject?) -> String
  var decimalValue: NSDecimal { get }
  class func zero() -> NSDecimalNumber
  class func one() -> NSDecimalNumber
  class func minimumDecimalNumber() -> NSDecimalNumber
  class func maximumDecimalNumber() -> NSDecimalNumber
  class func notANumber() -> NSDecimalNumber
  func decimalNumberByAdding(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByAdding(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberBySubtracting(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberBySubtracting(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByMultiplyingBy(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByMultiplyingBy(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByDividingBy(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByDividingBy(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByRaisingToPower(power: Int) -> NSDecimalNumber
  func decimalNumberByRaisingToPower(power: Int, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByMultiplyingByPowerOf10(power: Int16) -> NSDecimalNumber
  func decimalNumberByMultiplyingByPowerOf10(power: Int16, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByRoundingAccordingToBehavior(behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func compare(decimalNumber: NSNumber) -> NSComparisonResult
  class func setDefaultBehavior(behavior: NSDecimalNumberBehaviors)
  class func defaultBehavior() -> NSDecimalNumberBehaviors
  var objCType: UnsafePointer<Int8> { get }
  var doubleValue: Double { get }
  init?(coder aDecoder: NSCoder)
  convenience init(char value: Int8)
  convenience init(unsignedChar value: UInt8)
  convenience init(short value: Int16)
  convenience init(unsignedShort value: UInt16)
  convenience init(int value: Int32)
  convenience init(unsignedInt value: UInt32)
  convenience init(long value: Int)
  convenience init(unsignedLong value: UInt)
  convenience init(longLong value: Int64)
  convenience init(unsignedLongLong value: UInt64)
  convenience init(float value: Float)
  convenience init(double value: Double)
  convenience init(bool value: Bool)
  @available(OSX 10.5, *)
  convenience init(integer value: Int)
  @available(OSX 10.5, *)
  convenience init(unsignedInteger value: UInt)
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}
class NSDecimalNumberHandler : NSObject, NSDecimalNumberBehaviors, NSCoding {
  class func defaultDecimalNumberHandler() -> NSDecimalNumberHandler
  init(roundingMode: NSRoundingMode, scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
  convenience init()
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: NSCalculationError, leftOperand: NSDecimalNumber, rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSNumber {
  var decimalValue: NSDecimal { get }
}
extension NSScanner {
  func scanDecimal(dcm: UnsafeMutablePointer<NSDecimal>) -> Bool
}