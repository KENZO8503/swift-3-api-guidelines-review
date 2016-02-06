
enum GKInviteRecipientResponse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InviteRecipientResponseAccepted
  case InviteRecipientResponseDeclined
  case InviteRecipientResponseFailed
  case InviteRecipientResponseIncompatible
  case InviteRecipientResponseUnableToConnect
  case InviteRecipientResponseNoAnswer
  static var InviteeResponseAccepted: GKInviteRecipientResponse { get }
  static var InviteeResponseDeclined: GKInviteRecipientResponse { get }
  static var InviteeResponseFailed: GKInviteRecipientResponse { get }
  static var InviteeResponseIncompatible: GKInviteRecipientResponse { get }
  static var InviteeResponseUnableToConnect: GKInviteRecipientResponse { get }
  static var InviteeResponseNoAnswer: GKInviteRecipientResponse { get }
}
typealias GKInviteeResponse = GKInviteRecipientResponse
@available(iOS 4.1, *)
class GKMatchRequest : Object {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(iOS 8.0, *)
  var recipients: [GKPlayer]?
  @available(iOS, introduced=4.1, deprecated=8.0, message="use recipients")
  var playersToInvite: [String]?
  @available(iOS 6.0, *)
  var inviteMessage: String?
  @available(iOS 6.0, *)
  var defaultNumberOfPlayers: Int
  @available(iOS 8.0, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(iOS, introduced=6.0, deprecated=8.0, message="use recipientResponseHandler")
  var inviteeResponseHandler: ((String, GKInviteeResponse) -> Void)?
  @available(iOS 6.0, *)
  class func maxPlayersAllowedForMatchOf(matchType: GKMatchType) -> Int
  init()
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PeerToPeer
  case Hosted
  case TurnBased
}
@available(iOS 4.1, *)
class GKInvite : Object {
  @available(iOS 8.0, *)
  var sender: GKPlayer { get }
  @available(iOS, introduced=4.1, deprecated=8.0, message="use sender")
  var inviter: String { get }
  var isHosted: Bool { get }
  @available(iOS 6.0, *)
  var playerGroup: Int { get }
  @available(iOS 6.0, *)
  var playerAttributes: UInt32 { get }
  init()
}
protocol GKInviteEventListener {
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didAccept invite: GKInvite)
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
  @available(iOS, introduced=7.0, deprecated=8.0, message="use player:didRequestMatchWithRecipients:")
  optional func player(player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 4.1, *)
class GKMatchmaker : Object {
  class func shared() -> GKMatchmaker
  @available(iOS 6.0, *)
  func matchFor(invite: GKInvite, completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  func findMatchFor(request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func findPlayersForHostedRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func addPlayersTo(match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((Error?) -> Void)? = nil)
  func cancel()
  @available(iOS 8.0, *)
  func cancelPendingInviteTo(player: GKPlayer)
  @available(iOS 6.0, *)
  func finishMatchmakingFor(match: GKMatch)
  func queryPlayerGroupActivity(playerGroup: Int, withCompletionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  func queryActivityWith(completionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func startBrowsingForNearbyPlayers(handler reachableHandler: ((GKPlayer, Bool) -> Void)? = nil)
  @available(iOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
  init()
}
extension GKMatchmaker {
  @available(iOS, introduced=6.0, deprecated=8.0)
  func startBrowsingForNearbyPlayers(reachableHandler reachableHandler: ((String, Bool) -> Void)? = nil)
  @available(iOS, introduced=6.0, deprecated=8.0, message="use cancelPendingInviteToPlayer:")
  func cancelInviteTo(player playerID: String)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use findPlayersForHostedRequest:")
  func findPlayersForHostedMatchRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
}
