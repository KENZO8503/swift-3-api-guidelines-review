
@available(tvOS 5.0, *)
class OrderedSet : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectAt(idx: Int) -> AnyObject
  func indexOf(object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  @available(tvOS 5.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 5.0, *)
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWith(aCoder: Coder)
  @available(tvOS 5.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension OrderedSet : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension OrderedSet {
  convenience init(objects elements: AnyObject...)
}

extension OrderedSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension OrderedSet {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func objectsAt(indexes: IndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqualTo(other: OrderedSet) -> Bool
  func contains(object: AnyObject) -> Bool
  func intersectsOrderedSet(other: OrderedSet) -> Bool
  func intersectsSet(set: Set<Object>) -> Bool
  func isSubsetOf(other: OrderedSet) -> Bool
  func isSubsetOf(set: Set<Object>) -> Bool
  @available(tvOS 6.0, *)
  subscript (indexedSubscript idx: Int) -> AnyObject { get }
  func objectEnumerator() -> Enumerator
  func reverseObjectEnumerator() -> Enumerator
  @NSCopying var reversed: OrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<Object> { get }
  func enumerateObjects(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectWith(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjectsWith(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexOf(object: AnyObject, inSortedRange range: NSRange, options opts: BinarySearchingOptions = [], usingComparator cmp: Comparator) -> Int
  func sortedArray(comparator cmptr: Comparator) -> [AnyObject]
  func sortedArrayWith(opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  var description: String { get }
  func descriptionWith(locale locale: AnyObject?) -> String
  func descriptionWith(locale locale: AnyObject?, indent level: Int) -> String
}
extension OrderedSet {
  convenience init(object: AnyObject)
  convenience init(orderedSet set: OrderedSet)
  convenience init(orderedSet set: OrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: OrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
@available(tvOS 5.0, *)
class MutableOrderedSet : OrderedSet {
  func insert(object: AnyObject, at idx: Int)
  func removeObjectAt(idx: Int)
  func replaceObjectAt(idx: Int, withObject object: AnyObject)
  init?(coder aDecoder: Coder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(orderedSet set: OrderedSet)
  convenience init(orderedSet set: OrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: OrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
extension MutableOrderedSet {
  func add(object: AnyObject)
  func addObjects(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjectsFrom(array: [AnyObject])
  func exchangeObjectAt(idx1: Int, withObjectAt idx2: Int)
  func moveObjectsAt(indexes: IndexSet, to idx: Int)
  func insert(objects: [AnyObject], at indexes: IndexSet)
  func setObject(obj: AnyObject, at idx: Int)
  @available(tvOS 6.0, *)
  subscript (indexedSubscript idx: Int) -> AnyObject
  func replaceObjectsIn(range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjectsAt(indexes: IndexSet, withObjects objects: [AnyObject])
  func removeObjectsIn(range: NSRange)
  func removeObjectsAt(indexes: IndexSet)
  func removeAllObjects()
  func remove(object: AnyObject)
  func removeObjectsIn(array: [AnyObject])
  func intersectOrderedSet(other: OrderedSet)
  func minusOrderedSet(other: OrderedSet)
  func unionOrderedSet(other: OrderedSet)
  func intersectSet(other: Set<Object>)
  func minusSet(other: Set<Object>)
  func unionSet(other: Set<Object>)
  func sort(comparator cmptr: Comparator)
  func sortWith(opts: SortOptions = [], usingComparator cmptr: Comparator)
  func sortRange(range: NSRange, options opts: SortOptions = [], usingComparator cmptr: Comparator)
}
extension MutableOrderedSet {
}
