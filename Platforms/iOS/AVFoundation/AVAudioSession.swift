
@available(iOS 6.0, *)
struct AVAudioSessionInterruptionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ShouldResume: AVAudioSessionInterruptionOptions { get }
}
@available(iOS 6.0, *)
struct AVAudioSessionSetActiveOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NotifyOthersOnDeactivation: AVAudioSessionSetActiveOptions { get }
}
@available(iOS 6.0, *)
enum AVAudioSessionPortOverride : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Speaker
}
@available(iOS 6.0, *)
enum AVAudioSessionRouteChangeReason : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case NewDeviceAvailable
  case OldDeviceUnavailable
  case CategoryChange
  case Override
  case WakeFromSleep
  case NoSuitableRouteForCategory
  @available(iOS 7.0, *)
  case RouteConfigurationChange
}
@available(iOS 6.0, *)
struct AVAudioSessionCategoryOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MixWithOthers: AVAudioSessionCategoryOptions { get }
  static var DuckOthers: AVAudioSessionCategoryOptions { get }
  static var AllowBluetooth: AVAudioSessionCategoryOptions { get }
  static var DefaultToSpeaker: AVAudioSessionCategoryOptions { get }
  @available(iOS 9.0, *)
  static var InterruptSpokenAudioAndMixWithOthers: AVAudioSessionCategoryOptions { get }
}
@available(iOS 6.0, *)
enum AVAudioSessionInterruptionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Began
  case Ended
}
@available(iOS 8.0, *)
enum AVAudioSessionSilenceSecondaryAudioHintType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Begin
  case End
}
@available(iOS 8.0, *)
struct AVAudioSessionRecordPermission : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Undetermined: AVAudioSessionRecordPermission { get }
  static var Denied: AVAudioSessionRecordPermission { get }
  static var Granted: AVAudioSessionRecordPermission { get }
}
@available(iOS 7.0, *)
enum AVAudioSessionErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CodeNone
  case CodeMediaServicesFailed
  case CodeIsBusy
  case CodeIncompatibleCategory
  case CodeCannotInterruptOthers
  case CodeMissingEntitlement
  case CodeSiriIsRecording
  case CodeCannotStartPlaying
  case CodeCannotStartRecording
  case CodeBadParam
  case InsufficientPriority
  case CodeResourceNotAvailable
  case CodeUnspecified
}
@available(iOS 3.0, *)
class AVAudioSession : Object {
  class func sharedInstance() -> AVAudioSession
  func setActive(active: Bool) throws
  @available(iOS 6.0, *)
  func setActive(active: Bool, withOptions options: AVAudioSessionSetActiveOptions = []) throws
  @available(iOS 9.0, *)
  var availableCategories: [String] { get }
  func setCategory(category: String) throws
  @available(iOS 6.0, *)
  func setCategory(category: String, withOptions options: AVAudioSessionCategoryOptions = []) throws
  var category: String { get }
  @available(iOS 8.0, *)
  func recordPermission() -> AVAudioSessionRecordPermission
  @available(iOS 7.0, *)
  func requestRecordPermission(response: PermissionBlock)
  @available(iOS 6.0, *)
  var categoryOptions: AVAudioSessionCategoryOptions { get }
  @available(iOS 9.0, *)
  var availableModes: [String] { get }
  @available(iOS 5.0, *)
  func setMode(mode: String) throws
  @available(iOS 5.0, *)
  var mode: String { get }
  @available(iOS 6.0, *)
  func overrideOutputAudioPort(portOverride: AVAudioSessionPortOverride) throws
  @available(iOS 6.0, *)
  var isOtherAudioPlaying: Bool { get }
  @available(iOS 8.0, *)
  var secondaryAudioShouldBeSilencedHint: Bool { get }
  @available(iOS 6.0, *)
  var currentRoute: AVAudioSessionRouteDescription { get }
  @available(iOS 7.0, *)
  func setPreferredInput(inPort: AVAudioSessionPortDescription?) throws
  @available(iOS 7.0, *)
  var preferredInput: AVAudioSessionPortDescription? { get }
  @available(iOS 7.0, *)
  var availableInputs: [AVAudioSessionPortDescription]? { get }
  init()
}
typealias PermissionBlock = (Bool) -> Void
extension AVAudioSession {
  @available(iOS 6.0, *)
  func setPreferredSampleRate(sampleRate: Double) throws
  @available(iOS 6.0, *)
  var preferredSampleRate: Double { get }
  func setPreferredIOBufferDuration(duration: TimeInterval) throws
  var preferredIOBufferDuration: TimeInterval { get }
  @available(iOS 7.0, *)
  func setPreferredInputNumberOf(channels count: Int) throws
  @available(iOS 7.0, *)
  var preferredInputNumberOfChannels: Int { get }
  @available(iOS 7.0, *)
  func setPreferredOutputNumberOf(channels count: Int) throws
  @available(iOS 7.0, *)
  var preferredOutputNumberOfChannels: Int { get }
  @available(iOS 7.0, *)
  var maximumInputNumberOfChannels: Int { get }
  @available(iOS 7.0, *)
  var maximumOutputNumberOfChannels: Int { get }
  @available(iOS 6.0, *)
  func setInputGain(gain: Float) throws
  @available(iOS 6.0, *)
  var inputGain: Float { get }
  @available(iOS 6.0, *)
  var isInputGainSettable: Bool { get }
  @available(iOS 6.0, *)
  var isInputAvailable: Bool { get }
  @available(iOS 6.0, *)
  var inputDataSources: [AVAudioSessionDataSourceDescription]? { get }
  @available(iOS 6.0, *)
  var inputDataSource: AVAudioSessionDataSourceDescription? { get }
  @available(iOS 6.0, *)
  func setInputDataSource(dataSource: AVAudioSessionDataSourceDescription?) throws
  @available(iOS 6.0, *)
  var outputDataSources: [AVAudioSessionDataSourceDescription]? { get }
  @available(iOS 6.0, *)
  var outputDataSource: AVAudioSessionDataSourceDescription? { get }
  @available(iOS 6.0, *)
  func setOutputDataSource(dataSource: AVAudioSessionDataSourceDescription?) throws
  @available(iOS 6.0, *)
  var sampleRate: Double { get }
  @available(iOS 6.0, *)
  var inputNumberOfChannels: Int { get }
  @available(iOS 6.0, *)
  var outputNumberOfChannels: Int { get }
  @available(iOS 6.0, *)
  var outputVolume: Float { get }
  @available(iOS 6.0, *)
  var inputLatency: TimeInterval { get }
  @available(iOS 6.0, *)
  var outputLatency: TimeInterval { get }
  @available(iOS 6.0, *)
  var ioBufferDuration: TimeInterval { get }
}
extension AVAudioSession {
}
@available(iOS 6.0, *)
let AVAudioSessionInterruptionNotification: String
@available(iOS 6.0, *)
let AVAudioSessionRouteChangeNotification: String
@available(iOS 7.0, *)
let AVAudioSessionMediaServicesWereLostNotification: String
@available(iOS 6.0, *)
let AVAudioSessionMediaServicesWereResetNotification: String
@available(iOS 8.0, *)
let AVAudioSessionSilenceSecondaryAudioHintNotification: String
@available(iOS 6.0, *)
let AVAudioSessionInterruptionTypeKey: String
@available(iOS 6.0, *)
let AVAudioSessionInterruptionOptionKey: String
@available(iOS 6.0, *)
let AVAudioSessionRouteChangeReasonKey: String
@available(iOS 6.0, *)
let AVAudioSessionRouteChangePreviousRouteKey: String
@available(iOS 8.0, *)
let AVAudioSessionSilenceSecondaryAudioHintTypeKey: String
let AVAudioSessionCategoryAmbient: String
let AVAudioSessionCategorySoloAmbient: String
let AVAudioSessionCategoryPlayback: String
let AVAudioSessionCategoryRecord: String
let AVAudioSessionCategoryPlayAndRecord: String
let AVAudioSessionCategoryAudioProcessing: String
@available(iOS 6.0, *)
let AVAudioSessionCategoryMultiRoute: String
@available(iOS 5.0, *)
let AVAudioSessionModeDefault: String
@available(iOS 5.0, *)
let AVAudioSessionModeVoiceChat: String
@available(iOS 5.0, *)
let AVAudioSessionModeGameChat: String
@available(iOS 5.0, *)
let AVAudioSessionModeVideoRecording: String
@available(iOS 5.0, *)
let AVAudioSessionModeMeasurement: String
@available(iOS 6.0, *)
let AVAudioSessionModeMoviePlayback: String
@available(iOS 7.0, *)
let AVAudioSessionModeVideoChat: String
@available(iOS 9.0, *)
let AVAudioSessionModeSpokenAudio: String
@available(iOS 6.0, *)
let AVAudioSessionPortLineIn: String
@available(iOS 6.0, *)
let AVAudioSessionPortBuiltInMic: String
@available(iOS 6.0, *)
let AVAudioSessionPortHeadsetMic: String
@available(iOS 6.0, *)
let AVAudioSessionPortLineOut: String
@available(iOS 6.0, *)
let AVAudioSessionPortHeadphones: String
@available(iOS 6.0, *)
let AVAudioSessionPortBluetoothA2DP: String
@available(iOS 6.0, *)
let AVAudioSessionPortBuiltInReceiver: String
@available(iOS 6.0, *)
let AVAudioSessionPortBuiltInSpeaker: String
@available(iOS 6.0, *)
let AVAudioSessionPortHDMI: String
@available(iOS 6.0, *)
let AVAudioSessionPortAirPlay: String
@available(iOS 7.0, *)
let AVAudioSessionPortBluetoothLE: String
@available(iOS 6.0, *)
let AVAudioSessionPortBluetoothHFP: String
@available(iOS 6.0, *)
let AVAudioSessionPortUSBAudio: String
@available(iOS 7.0, *)
let AVAudioSessionPortCarAudio: String
@available(iOS 7.0, *)
let AVAudioSessionLocationUpper: String
@available(iOS 7.0, *)
let AVAudioSessionLocationLower: String
@available(iOS 7.0, *)
let AVAudioSessionOrientationTop: String
@available(iOS 7.0, *)
let AVAudioSessionOrientationBottom: String
@available(iOS 7.0, *)
let AVAudioSessionOrientationFront: String
@available(iOS 7.0, *)
let AVAudioSessionOrientationBack: String
@available(iOS 8.0, *)
let AVAudioSessionOrientationLeft: String
@available(iOS 8.0, *)
let AVAudioSessionOrientationRight: String
@available(iOS 7.0, *)
let AVAudioSessionPolarPatternOmnidirectional: String
@available(iOS 7.0, *)
let AVAudioSessionPolarPatternCardioid: String
@available(iOS 7.0, *)
let AVAudioSessionPolarPatternSubcardioid: String
@available(iOS 6.0, *)
class AVAudioSessionChannelDescription : Object {
  var channelName: String { get }
  var owningPortUID: String { get }
  var channelNumber: Int { get }
  var channelLabel: AudioChannelLabel { get }
  init()
}
@available(iOS 6.0, *)
class AVAudioSessionPortDescription : Object {
  var portType: String { get }
  var portName: String { get }
  var uid: String { get }
  var channels: [AVAudioSessionChannelDescription]? { get }
  @available(iOS 7.0, *)
  var dataSources: [AVAudioSessionDataSourceDescription]? { get }
  @available(iOS 7.0, *)
  var selectedDataSource: AVAudioSessionDataSourceDescription? { get }
  @available(iOS 7.0, *)
  var preferredDataSource: AVAudioSessionDataSourceDescription? { get }
  @available(iOS 7.0, *)
  func setPreferredDataSource(dataSource: AVAudioSessionDataSourceDescription?) throws
  init()
}
@available(iOS 6.0, *)
class AVAudioSessionRouteDescription : Object {
  var inputs: [AVAudioSessionPortDescription] { get }
  var outputs: [AVAudioSessionPortDescription] { get }
  init()
}
@available(iOS 6.0, *)
class AVAudioSessionDataSourceDescription : Object {
  var dataSourceID: Number { get }
  var dataSourceName: String { get }
  @available(iOS 7.0, *)
  var location: String? { get }
  @available(iOS 7.0, *)
  var orientation: String? { get }
  @available(iOS 7.0, *)
  var supportedPolarPatterns: [String]? { get }
  @available(iOS 7.0, *)
  var selectedPolarPattern: String? { get }
  @available(iOS 7.0, *)
  var preferredPolarPattern: String? { get }
  @available(iOS 7.0, *)
  func setPreferredPolarPattern(pattern: String?) throws
  init()
}
protocol AVAudioSessionDelegate : ObjectProtocol {
  optional func beginInterruption()
  @available(iOS 4.0, *)
  optional func endInterruption(flags flags: Int)
  optional func endInterruption()
  optional func inputIsAvailableChanged(isInputAvailable: Bool)
}
var AVAudioSessionInterruptionFlags_ShouldResume: Int { get }
var AVAudioSessionSetActiveFlags_NotifyOthersOnDeactivation: Int { get }
