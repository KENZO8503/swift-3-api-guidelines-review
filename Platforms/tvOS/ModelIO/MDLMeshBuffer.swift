
enum MDLMeshBufferType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Index
}
@available(tvOS 9.0, *)
class MDLMeshBufferMap : Object {
  init(bytes: UnsafeMutablePointer<Void>, deallocator: (() -> Void)? = nil)
  var bytes: UnsafeMutablePointer<Void> { get }
  init()
}
@available(tvOS 9.0, *)
protocol MDLMeshBuffer : ObjectProtocol, Copying {
  func fill(data: Data, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
@available(tvOS 9.0, *)
class MDLMeshBufferData : Object, MDLMeshBuffer {
  init(type: MDLMeshBufferType, length: Int)
  init(type: MDLMeshBufferType, data: Data?)
  var data: Data { get }
  init()
  @available(tvOS 9.0, *)
  func fill(data: Data, offset: Int)
  @available(tvOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(tvOS 9.0, *)
  var length: Int { get }
  @available(tvOS 9.0, *)
  var allocator: MDLMeshBufferAllocator { get }
  @available(tvOS 9.0, *)
  var type: MDLMeshBufferType { get }
  @available(tvOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
protocol MDLMeshBufferZone : ObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(tvOS 9.0, *)
protocol MDLMeshBufferAllocator : ObjectProtocol {
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWith(size sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWith(data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFrom(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFrom(zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : Object, MDLMeshBufferAllocator {
  init()
  @available(tvOS 9.0, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newZoneForBuffersWith(size sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBufferWith(data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBufferFrom(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(tvOS 9.0, *)
  func newBufferFrom(zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferZoneDefault : Object, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  init()
}
