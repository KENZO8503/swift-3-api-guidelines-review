
@available(tvOS 6.0, *)
class AVAssetResourceLoader : NSObject {
  func setDelegate(delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
}
protocol AVAssetResourceLoaderDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(tvOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(tvOS 7.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancelLoadingRequest loadingRequest: AVAssetResourceLoadingRequest)
  @available(tvOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForResponseToAuthenticationChallenge authenticationChallenge: NSURLAuthenticationChallenge) -> Bool
  @available(tvOS 8.0, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancelAuthenticationChallenge authenticationChallenge: NSURLAuthenticationChallenge)
}
@available(tvOS 6.0, *)
class AVAssetResourceLoadingRequest : NSObject {
  var request: NSURLRequest { get }
  var finished: Bool { get }
  @available(tvOS 7.0, *)
  var cancelled: Bool { get }
  @available(tvOS 7.0, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(tvOS 7.0, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(tvOS 7.0, *)
  @NSCopying var response: NSURLResponse?
  @available(tvOS 7.0, *)
  @NSCopying var redirect: NSURLRequest?
  @available(tvOS 7.0, *)
  func finishLoading()
  func finishLoadingWithError(error: NSError?)
}
@available(tvOS 8.0, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(tvOS 7.0, *)
class AVAssetResourceLoadingContentInformationRequest : NSObject {
  var contentType: String?
  var contentLength: Int64
  var byteRangeAccessSupported: Bool
  @available(tvOS 8.0, *)
  @NSCopying var renewalDate: NSDate?
}
@available(tvOS 7.0, *)
class AVAssetResourceLoadingDataRequest : NSObject {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(tvOS 9.0, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respondWithData(data: NSData)
}
extension AVAssetResourceLoader {
  @available(tvOS 9.0, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestDataForApp(appIdentifier: NSData, contentIdentifier: NSData, options: [String : AnyObject]?) throws -> NSData
  @available(tvOS 9.0, *)
  func persistentContentKeyFromKeyVendorResponse(keyVendorResponse: NSData, options: [String : AnyObject]?, error outError: NSErrorPointer) -> NSData
}
@available(tvOS 9.0, *)
let AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey: String
extension AVAssetResourceLoadingRequest {
}