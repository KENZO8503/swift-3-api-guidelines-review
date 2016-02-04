
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNErrorDomain")
let ABAddressBookErrorDomain: CFString!
var kABOperationNotPermittedByStoreError: Int { get }
var kABOperationNotPermittedByUserError: Int { get }
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactStore")
typealias ABAddressBook = CFTypeRef
@available(*, deprecated, renamed="ABAddressBook")
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactStore")
typealias ABAddressBookRef = ABAddressBook
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNAuthorizationStatus")
enum ABAuthorizationStatus : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore authorizationStatusForEntityType:]")
func ABAddressBookGetAuthorizationStatus() -> ABAuthorizationStatus
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNContactStore alloc] init]")
func ABAddressBookCreateWithOptions(options: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ABAddressBook>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNContactStore alloc] init]")
func ABAddressBookCreate() -> Unmanaged<ABAddressBook>!
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABAddressBookRequestAccessCompletionHandler = (Bool, CFError!) -> Void
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore requestAccessForEntityType:completionHandler:]")
func ABAddressBookRequestAccessWithCompletion(addressBook: ABAddressBook!, _ completion: ABAddressBookRequestAccessCompletionHandler!)
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore executeSaveRequest:error:]")
func ABAddressBookSave(addressBook: ABAddressBook!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0)
func ABAddressBookHasUnsavedChanges(addressBook: ABAddressBook!) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSaveRequest")
func ABAddressBookAddRecord(addressBook: ABAddressBook!, _ record: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSaveRequest")
func ABAddressBookRemoveRecord(addressBook: ABAddressBook!, _ record: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNLabeledValue localizedStringForLabel:]")
func ABAddressBookCopyLocalizedLabel(label: CFString!) -> Unmanaged<CFString>!
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABExternalChangeCallback = @convention(c) (ABAddressBook!, CFDictionary!, UnsafeMutablePointer<Void>) -> Void
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactStoreDidChangeNotification")
func ABAddressBookRegisterExternalChangeCallback(addressBook: ABAddressBook!, _ callback: ABExternalChangeCallback!, _ context: UnsafeMutablePointer<Void>)
@available(iOS, introduced=2.0, deprecated=9.0)
func ABAddressBookUnregisterExternalChangeCallback(addressBook: ABAddressBook!, _ callback: ABExternalChangeCallback!, _ context: UnsafeMutablePointer<Void>)
@available(iOS, introduced=2.0, deprecated=9.0, message="refetch CN objects")
func ABAddressBookRevert(addressBook: ABAddressBook!)