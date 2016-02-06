
@available(iOS 6.0, *)
let UIStateRestorationViewControllerStoryboardKey: String
@available(iOS 6.0, *)
let UIApplicationStateRestorationBundleVersionKey: String
@available(iOS 6.0, *)
let UIApplicationStateRestorationUserInterfaceIdiomKey: String
@available(iOS 7.0, *)
let UIApplicationStateRestorationTimestampKey: String
@available(iOS 7.0, *)
let UIApplicationStateRestorationSystemVersionKey: String
protocol UIViewControllerRestoration {
  @available(iOS 2.0, *)
  static func viewControllerWith(restorationIdentifierPath identifierComponents: [AnyObject], coder: Coder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  @available(iOS 2.0, *)
  func modelIdentifierForElementAt(idx: IndexPath, in view: UIView) -> String?
  @available(iOS 2.0, *)
  func indexPathForElementWith(modelIdentifier identifier: String, in view: UIView) -> IndexPath?
}
protocol UIStateRestoring : ObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: AnyObject.Type? { get }
  optional func encodeRestorableState(coder: Coder)
  optional func decodeRestorableState(coder: Coder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func objectWith(restorationIdentifierPath identifierComponents: [String], coder: Coder) -> UIStateRestoring?
}
