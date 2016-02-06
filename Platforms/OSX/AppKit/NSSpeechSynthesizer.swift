
let NSVoiceName: String
let NSVoiceIdentifier: String
let NSVoiceAge: String
let NSVoiceGender: String
let NSVoiceDemoText: String
@available(OSX 10.5, *)
let NSVoiceLocaleIdentifier: String
@available(OSX 10.5, *)
let NSVoiceSupportedCharacters: String
@available(OSX 10.5, *)
let NSVoiceIndividuallySpokenCharacters: String
let NSVoiceGenderNeuter: String
let NSVoiceGenderMale: String
let NSVoiceGenderFemale: String
@available(OSX 10.5, *)
enum NSSpeechBoundary : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ImmediateBoundary
  case WordBoundary
  case SentenceBoundary
}
class NSSpeechSynthesizer : Object {
  init?(voice: String?)
  func startSpeaking(string: String) -> Bool
  func startSpeaking(string: String, to url: URL) -> Bool
  var isSpeaking: Bool { get }
  func stopSpeaking()
  @available(OSX 10.5, *)
  func stopSpeakingAt(boundary: NSSpeechBoundary)
  @available(OSX 10.5, *)
  func pauseSpeakingAt(boundary: NSSpeechBoundary)
  @available(OSX 10.5, *)
  func continueSpeaking()
  unowned(unsafe) var delegate: @sil_unmanaged NSSpeechSynthesizerDelegate?
  func voice() -> String?
  func setVoice(voice: String?) -> Bool
  @available(OSX 10.5, *)
  var rate: Float
  @available(OSX 10.5, *)
  var volume: Float
  var usesFeedbackWindow: Bool
  @available(OSX 10.5, *)
  func addSpeechDictionary(speechDictionary: [String : AnyObject])
  @available(OSX 10.5, *)
  func phonemesFrom(text text: String) -> String
  @available(OSX 10.5, *)
  func objectFor(property property: String) throws -> AnyObject
  @available(OSX 10.5, *)
  func setObject(object: AnyObject?, forProperty property: String) throws
  class func isAnyApplicationSpeaking() -> Bool
  class func defaultVoice() -> String
  class func availableVoices() -> [String]
  class func attributesFor(voice voice: String) -> [String : AnyObject]
  init()
}
protocol NSSpeechSynthesizerDelegate : ObjectProtocol {
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, willSpeakWord characterRange: NSRange, of string: String)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, willSpeakPhoneme phonemeOpcode: Int16)
  @available(OSX 10.5, *)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didEncounterErrorAt characterIndex: Int, of string: String, message: String)
  @available(OSX 10.5, *)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didEncounterSyncMessage message: String)
}
@available(OSX 10.5, *)
let NSSpeechStatusProperty: String
@available(OSX 10.5, *)
let NSSpeechErrorsProperty: String
@available(OSX 10.5, *)
let NSSpeechInputModeProperty: String
@available(OSX 10.5, *)
let NSSpeechCharacterModeProperty: String
@available(OSX 10.5, *)
let NSSpeechNumberModeProperty: String
@available(OSX 10.5, *)
let NSSpeechRateProperty: String
@available(OSX 10.5, *)
let NSSpeechPitchBaseProperty: String
@available(OSX 10.5, *)
let NSSpeechPitchModProperty: String
@available(OSX 10.5, *)
let NSSpeechVolumeProperty: String
@available(OSX 10.5, *)
let NSSpeechSynthesizerInfoProperty: String
@available(OSX 10.5, *)
let NSSpeechRecentSyncProperty: String
@available(OSX 10.5, *)
let NSSpeechPhonemeSymbolsProperty: String
@available(OSX 10.5, *)
let NSSpeechCurrentVoiceProperty: String
@available(OSX 10.5, *)
let NSSpeechCommandDelimiterProperty: String
@available(OSX 10.5, *)
let NSSpeechResetProperty: String
@available(OSX 10.5, *)
let NSSpeechOutputToFileURLProperty: String
@available(OSX 10.5, *)
let NSSpeechModeText: String
@available(OSX 10.5, *)
let NSSpeechModePhoneme: String
@available(OSX 10.5, *)
let NSSpeechModeNormal: String
@available(OSX 10.5, *)
let NSSpeechModeLiteral: String
@available(OSX 10.5, *)
let NSSpeechStatusOutputBusy: String
@available(OSX 10.5, *)
let NSSpeechStatusOutputPaused: String
@available(OSX 10.5, *)
let NSSpeechStatusNumberOfCharactersLeft: String
@available(OSX 10.5, *)
let NSSpeechStatusPhonemeCode: String
@available(OSX 10.5, *)
let NSSpeechErrorCount: String
@available(OSX 10.5, *)
let NSSpeechErrorOldestCode: String
@available(OSX 10.5, *)
let NSSpeechErrorOldestCharacterOffset: String
@available(OSX 10.5, *)
let NSSpeechErrorNewestCode: String
@available(OSX 10.5, *)
let NSSpeechErrorNewestCharacterOffset: String
@available(OSX 10.5, *)
let NSSpeechSynthesizerInfoIdentifier: String
@available(OSX 10.5, *)
let NSSpeechSynthesizerInfoVersion: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoOpcode: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoSymbol: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoExample: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoHiliteStart: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoHiliteEnd: String
@available(OSX 10.5, *)
let NSSpeechCommandPrefix: String
@available(OSX 10.5, *)
let NSSpeechCommandSuffix: String
@available(OSX 10.5, *)
let NSSpeechDictionaryLocaleIdentifier: String
@available(OSX 10.5, *)
let NSSpeechDictionaryModificationDate: String
@available(OSX 10.5, *)
let NSSpeechDictionaryPronunciations: String
@available(OSX 10.5, *)
let NSSpeechDictionaryAbbreviations: String
@available(OSX 10.5, *)
let NSSpeechDictionaryEntrySpelling: String
@available(OSX 10.5, *)
let NSSpeechDictionaryEntryPhonemes: String
