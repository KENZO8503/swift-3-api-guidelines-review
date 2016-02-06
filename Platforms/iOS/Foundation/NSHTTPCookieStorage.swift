
enum HTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Always
  case Never
  case OnlyFromMainDocumentDomain
}
class HTTPCookieStorage : Object {
  class func shared() -> HTTPCookieStorage
  @available(iOS 9.0, *)
  class func sharedCookieStorageFor(groupContainerIdentifier identifier: String) -> HTTPCookieStorage
  var cookies: [HTTPCookie]? { get }
  func setCookie(cookie: HTTPCookie)
  func deleteCookie(cookie: HTTPCookie)
  @available(iOS 8.0, *)
  func removeCookiesSince(date: Date)
  func cookiesFor(URL: URL) -> [HTTPCookie]?
  func setCookies(cookies: [HTTPCookie], forURL URL: URL?, mainDocumentURL: URL?)
  var cookieAcceptPolicy: HTTPCookieAcceptPolicy
  @available(iOS 5.0, *)
  func sortedCookiesUsing(sortOrder: [SortDescriptor]) -> [HTTPCookie]
  init()
}
extension HTTPCookieStorage {
  @available(iOS 8.0, *)
  func storeCookies(cookies: [HTTPCookie], forTask task: URLSessionTask)
  @available(iOS 8.0, *)
  func getCookiesFor(task: URLSessionTask, completionHandler: ([HTTPCookie]?) -> Void)
}
let httpCookieManagerAcceptPolicyChangedNotification: String
let httpCookieManagerCookiesChangedNotification: String
