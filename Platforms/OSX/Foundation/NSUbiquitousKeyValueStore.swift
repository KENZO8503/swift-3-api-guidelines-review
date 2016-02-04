
@available(OSX 10.7, *)
class NSUbiquitousKeyValueStore : NSObject {
  class func defaultStore() -> NSUbiquitousKeyValueStore
  func objectForKey(aKey: String) -> AnyObject?
  func setObject(anObject: AnyObject?, forKey aKey: String)
  func removeObjectForKey(aKey: String)
  func stringForKey(aKey: String) -> String?
  func arrayForKey(aKey: String) -> [AnyObject]?
  func dictionaryForKey(aKey: String) -> [String : AnyObject]?
  func dataForKey(aKey: String) -> NSData?
  func longLongForKey(aKey: String) -> Int64
  func doubleForKey(aKey: String) -> Double
  func boolForKey(aKey: String) -> Bool
  func setString(aString: String?, forKey aKey: String)
  func setData(aData: NSData?, forKey aKey: String)
  func setArray(anArray: [AnyObject]?, forKey aKey: String)
  func setDictionary(aDictionary: [String : AnyObject]?, forKey aKey: String)
  func setLongLong(value: Int64, forKey aKey: String)
  func setDouble(value: Double, forKey aKey: String)
  func setBool(value: Bool, forKey aKey: String)
  var dictionaryRepresentation: [String : AnyObject] { get }
  func synchronize() -> Bool
  init()
}
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreDidChangeExternallyNotification: String
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreChangeReasonKey: String
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreChangedKeysKey: String
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreServerChange: Int { get }
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(OSX 10.8, *)
var NSUbiquitousKeyValueStoreAccountChange: Int { get }