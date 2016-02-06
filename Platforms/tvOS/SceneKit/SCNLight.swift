
let SCNLightTypeAmbient: String
let SCNLightTypeOmni: String
let SCNLightTypeDirectional: String
let SCNLightTypeSpot: String
@available(tvOS 8.0, *)
enum SCNShadowMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Deferred
  case Modulated
}
@available(tvOS 8.0, *)
class SCNLight : Object, SCNAnimatable, SCNTechniqueSupport, Copying, SecureCoding {
  var type: String
  var color: AnyObject
  var name: String?
  var castsShadow: Bool
  var shadowColor: AnyObject
  var shadowRadius: CGFloat
  @available(tvOS 8.0, *)
  var shadowMapSize: CGSize
  @available(tvOS 8.0, *)
  var shadowSampleCount: Int
  @available(tvOS 8.0, *)
  var shadowMode: SCNShadowMode
  @available(tvOS 8.0, *)
  var shadowBias: CGFloat
  @available(tvOS 8.0, *)
  var orthographicScale: CGFloat
  @available(tvOS 8.0, *)
  var zNear: CGFloat
  @available(tvOS 8.0, *)
  var zFar: CGFloat
  @available(tvOS 8.0, *)
  var attenuationStartDistance: CGFloat
  @available(tvOS 8.0, *)
  var attenuationEndDistance: CGFloat
  @available(tvOS 8.0, *)
  var attenuationFalloffExponent: CGFloat
  @available(tvOS 8.0, *)
  var spotInnerAngle: CGFloat
  @available(tvOS 8.0, *)
  var spotOuterAngle: CGFloat
  @available(tvOS 8.0, *)
  var gobo: SCNMaterialProperty? { get }
  @available(tvOS 8.0, *)
  var categoryBitMask: Int
  init()
  @available(tvOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
