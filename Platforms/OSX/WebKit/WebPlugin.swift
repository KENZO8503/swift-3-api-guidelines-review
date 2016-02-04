
extension NSObject {
  class func webPlugInInitialize()
  func webPlugInInitialize()
  class func webPlugInStart()
  func webPlugInStart()
  class func webPlugInStop()
  func webPlugInStop()
  class func webPlugInDestroy()
  func webPlugInDestroy()
  class func webPlugInSetIsSelected(isSelected: Bool)
  func webPlugInSetIsSelected(isSelected: Bool)
  var objectForWebScript: AnyObject! { get }
  @available(OSX 10.6, *)
  class func webPlugInMainResourceDidReceiveResponse(response: NSURLResponse!)
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidReceiveResponse(response: NSURLResponse!)
  @available(OSX 10.6, *)
  class func webPlugInMainResourceDidReceiveData(data: NSData!)
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidReceiveData(data: NSData!)
  @available(OSX 10.6, *)
  class func webPlugInMainResourceDidFailWithError(error: NSError!)
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidFailWithError(error: NSError!)
  @available(OSX 10.6, *)
  class func webPlugInMainResourceDidFinishLoading()
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidFinishLoading()
  class func objectForWebScript() -> AnyObject!
}