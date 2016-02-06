
@available(iOS 5.0, *)
class NSIncrementalStoreNode : Object {
  init(objectID: NSManagedObjectID, withValues values: [String : AnyObject], version: UInt64)
  func updateWith(values values: [String : AnyObject], version: UInt64)
  var objectID: NSManagedObjectID { get }
  var version: UInt64 { get }
  func valueFor(prop: NSPropertyDescription) -> AnyObject?
  init()
}
