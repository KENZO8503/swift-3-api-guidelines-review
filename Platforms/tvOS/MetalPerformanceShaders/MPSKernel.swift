
func MPSSupportsMTLDevice(device: MTLDevice?) -> Bool
@available(tvOS 9.0, *)
class MPSKernel : NSObject, NSCopying {
  var options: MPSKernelOptions
  var device: MTLDevice { get }
  var label: String?
  init(device: MTLDevice)
  func copyWithZone(zone: NSZone, device: MTLDevice?) -> Self
  convenience init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}