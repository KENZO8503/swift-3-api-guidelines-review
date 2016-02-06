
@available(tvOS 8.0, *)
class SKFieldNode : SKNode {
  var region: SKRegion?
  var strength: Float
  var falloff: Float
  var minimumRadius: Float
  var isEnabled: Bool
  var isExclusive: Bool
  var categoryBitMask: UInt32
  var direction: vector_float3
  var smoothness: Float
  var animationSpeed: Float
  var texture: SKTexture?
  class func dragField() -> SKFieldNode
  class func vortexField() -> SKFieldNode
  class func radialGravityField() -> SKFieldNode
  class func linearGravityFieldWith(vector direction: vector_float3) -> SKFieldNode
  class func velocityFieldWith(vector direction: vector_float3) -> SKFieldNode
  class func velocityFieldWith(velocityTexture: SKTexture) -> SKFieldNode
  class func noiseFieldWith(smoothness smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func turbulenceFieldWith(smoothness smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func springField() -> SKFieldNode
  class func electricField() -> SKFieldNode
  class func magneticField() -> SKFieldNode
  class func customFieldWith(evaluationBlock block: SKFieldForceEvaluator) -> SKFieldNode
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
typealias SKFieldForceEvaluator = (vector_float3, vector_float3, Float, Float, TimeInterval) -> vector_float3
