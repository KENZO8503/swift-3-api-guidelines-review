
extension NSObject {
  @available(OSX 10.5, *)
  class func scriptingValueForSpecifier(objectSpecifier: NSScriptObjectSpecifier) -> AnyObject?
  @available(OSX 10.5, *)
  func scriptingValueForSpecifier(objectSpecifier: NSScriptObjectSpecifier) -> AnyObject?
  var scriptingProperties: [String : AnyObject]?
  @available(OSX 10.5, *)
  class func copyScriptingValue(value: AnyObject, forKey key: String, withProperties properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  func copyScriptingValue(value: AnyObject, forKey key: String, withProperties properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  class func newScriptingObjectOfClass(objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: AnyObject?, properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  func newScriptingObjectOfClass(objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: AnyObject?, properties: [String : AnyObject]) -> AnyObject?
  class func scriptingProperties() -> [String : AnyObject]?
  class func setScriptingProperties(scriptingProperties: [String : AnyObject]?)
}