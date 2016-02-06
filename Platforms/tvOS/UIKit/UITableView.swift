
enum UITableViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case Grouped
}
enum UITableViewScrollPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Top
  case Middle
  case Bottom
}
enum UITableViewRowAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fade
  case Right
  case Left
  case Top
  case Bottom
  case None
  case Middle
  case Automatic
}
@available(tvOS 5.0, *)
let UITableViewAutomaticDimension: CGFloat
@available(tvOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
  init()
}
protocol UITableViewDelegate : ObjectProtocol, UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  @available(tvOS 3.0, *)
  optional func tableView(tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  @available(tvOS 3.0, *)
  optional func tableView(tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedViewIn(tableView: UITableView) -> IndexPath?
}
let UITableViewSelectionDidChangeNotification: String
@available(tvOS 2.0, *)
class UITableView : UIScrollView, Coding {
  init(frame: CGRect, style: UITableViewStyle)
  init?(coder aDecoder: Coder)
  var style: UITableViewStyle { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  weak var delegate: @sil_weak UITableViewDelegate?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedRowHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedSectionHeaderHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedSectionFooterHeight: CGFloat
  @available(tvOS 7.0, *)
  var separatorInset: UIEdgeInsets
  @available(tvOS 3.2, *)
  var backgroundView: UIView?
  func reloadData()
  @available(tvOS 3.0, *)
  func reloadSectionIndexTitles()
  var numberOfSections: Int { get }
  func numberOfRowsIn(section section: Int) -> Int
  func rectFor(section section: Int) -> CGRect
  func rectForHeaderIn(section section: Int) -> CGRect
  func rectForFooterIn(section section: Int) -> CGRect
  func rectForRowAt(indexPath: IndexPath) -> CGRect
  func indexPathForRowAt(point: CGPoint) -> IndexPath?
  func indexPathFor(cell: UITableViewCell) -> IndexPath?
  func indexPathsForRowsIn(rect: CGRect) -> [IndexPath]?
  func cellForRowAt(indexPath: IndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [IndexPath]? { get }
  @available(tvOS 6.0, *)
  func headerViewFor(section section: Int) -> UITableViewHeaderFooterView?
  @available(tvOS 6.0, *)
  func footerViewFor(section section: Int) -> UITableViewHeaderFooterView?
  func scrollToRowAt(indexPath: IndexPath, at scrollPosition: UITableViewScrollPosition, animated: Bool)
  func scrollToNearestSelectedRowAt(scrollPosition: UITableViewScrollPosition, animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveSection(section: Int, toSection newSection: Int)
  func insertRowsAt(indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRowsAt(indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadRowsAt(indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveRowAt(indexPath: IndexPath, to newIndexPath: IndexPath)
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  @available(tvOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: IndexPath? { get }
  @available(tvOS 5.0, *)
  var indexPathsForSelectedRows: [IndexPath]? { get }
  func selectRowAt(indexPath: IndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition)
  func deselectRowAt(indexPath: IndexPath, animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  @available(tvOS 6.0, *)
  var sectionIndexColor: UIColor?
  @available(tvOS 7.0, *)
  var sectionIndexBackgroundColor: UIColor?
  @available(tvOS 6.0, *)
  var sectionIndexTrackingBackgroundColor: UIColor?
  @available(tvOS 9.0, *)
  var cellLayoutMarginsFollowReadableWidth: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCellWith(identifier identifier: String) -> UITableViewCell?
  @available(tvOS 6.0, *)
  func dequeueReusableCellWith(identifier identifier: String, forIndexPath indexPath: IndexPath) -> UITableViewCell
  @available(tvOS 6.0, *)
  func dequeueReusableHeaderFooterViewWith(identifier identifier: String) -> UITableViewHeaderFooterView?
  @available(tvOS 5.0, *)
  func register(nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITableViewDataSource : ObjectProtocol {
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  optional func numberOfSectionsIn(tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
extension IndexPath {
  convenience init(forRow row: Int, inSection section: Int)
  var section: Int { get }
  var row: Int { get }
}
