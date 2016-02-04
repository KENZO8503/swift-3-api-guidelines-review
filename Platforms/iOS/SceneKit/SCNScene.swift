
typealias SCNSceneExportProgressHandler = (Float, NSError?, UnsafeMutablePointer<ObjCBool>) -> Void
@available(iOS 8.0, *)
let SCNSceneExportDestinationURL: String
let SCNSceneStartTimeAttributeKey: String
let SCNSceneEndTimeAttributeKey: String
let SCNSceneFrameRateAttributeKey: String
@available(iOS 8.0, *)
let SCNSceneUpAxisAttributeKey: String
@available(iOS 8.0, *)
class SCNScene : NSObject, NSSecureCoding {
  var rootNode: SCNNode { get }
  @available(iOS 8.0, *)
  var physicsWorld: SCNPhysicsWorld { get }
  func attributeForKey(key: String) -> AnyObject?
  func setAttribute(attribute: AnyObject?, forKey key: String)
  @available(iOS 8.0, *)
  var background: SCNMaterialProperty { get }
  @available(iOS 8.0, *)
  convenience init?(named name: String)
  @available(iOS 8.0, *)
  convenience init?(named name: String, inDirectory directory: String?, options: [String : AnyObject]?)
  convenience init(URL url: NSURL, options: [String : AnyObject]?) throws
  @available(iOS 8.0, *)
  var fogStartDistance: CGFloat
  @available(iOS 8.0, *)
  var fogEndDistance: CGFloat
  @available(iOS 8.0, *)
  var fogDensityExponent: CGFloat
  @available(iOS 8.0, *)
  var fogColor: AnyObject
  @available(iOS 8.0, *)
  var paused: Bool
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}