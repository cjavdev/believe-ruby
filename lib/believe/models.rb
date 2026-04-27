# frozen_string_literal: true

module Believe
  [::Believe::Internal::Type::BaseModel, *::Believe::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, ::Believe::Internal::AnyHash) } }
  end

  ::Believe::Internal::Util.walk_namespaces(::Believe::Models).each do |mod|
    case mod
    in ::Believe::Internal::Type::Enum | ::Believe::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  ::Believe::Internal::Util.walk_namespaces(::Believe::Models)
                           .lazy
                           .grep(::Believe::Internal::Type::Union)
                           .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  BelieveSubmitParams = ::Believe::Models::BelieveSubmitParams

  Biscuit = ::Believe::Models::Biscuit

  BiscuitGetFreshParams = ::Believe::Models::BiscuitGetFreshParams

  BiscuitListParams = ::Believe::Models::BiscuitListParams

  BiscuitRetrieveParams = ::Believe::Models::BiscuitRetrieveParams

  CharacterCreateParams = ::Believe::Models::CharacterCreateParams

  CharacterDeleteParams = ::Believe::Models::CharacterDeleteParams

  CharacterGetQuotesParams = ::Believe::Models::CharacterGetQuotesParams

  CharacterListParams = ::Believe::Models::CharacterListParams

  CharacterRetrieveParams = ::Believe::Models::CharacterRetrieveParams

  CharacterRole = ::Believe::Models::CharacterRole

  CharacterUpdateParams = ::Believe::Models::CharacterUpdateParams

  Characterz = ::Believe::Models::Characterz

  ClientGetWelcomeParams = ::Believe::Models::ClientGetWelcomeParams

  Coach = ::Believe::Models::Coach

  Coaching = ::Believe::Models::Coaching

  CoachSpecialty = ::Believe::Models::CoachSpecialty

  ConflictResolveParams = ::Believe::Models::ConflictResolveParams

  EmotionalStats = ::Believe::Models::EmotionalStats

  Episode = ::Believe::Models::Episode

  EpisodeCreateParams = ::Believe::Models::EpisodeCreateParams

  EpisodeDeleteParams = ::Believe::Models::EpisodeDeleteParams

  EpisodeGetWisdomParams = ::Believe::Models::EpisodeGetWisdomParams

  EpisodeListParams = ::Believe::Models::EpisodeListParams

  EpisodeRetrieveParams = ::Believe::Models::EpisodeRetrieveParams

  EpisodeUpdateParams = ::Believe::Models::EpisodeUpdateParams

  EquipmentManager = ::Believe::Models::EquipmentManager

  GeoLocation = ::Believe::Models::GeoLocation

  GrowthArc = ::Believe::Models::GrowthArc

  HealthCheckParams = ::Believe::Models::HealthCheckParams

  League = ::Believe::Models::League

  Match = ::Believe::Models::Match

  MatchCompletedWebhookEvent = ::Believe::Models::MatchCompletedWebhookEvent

  MatchCreateParams = ::Believe::Models::MatchCreateParams

  MatchDeleteParams = ::Believe::Models::MatchDeleteParams

  Matches = ::Believe::Models::Matches

  MatchGetLessonParams = ::Believe::Models::MatchGetLessonParams

  MatchGetTurningPointsParams = ::Believe::Models::MatchGetTurningPointsParams

  MatchListParams = ::Believe::Models::MatchListParams

  MatchResult = ::Believe::Models::MatchResult

  MatchRetrieveParams = ::Believe::Models::MatchRetrieveParams

  MatchStreamLiveParams = ::Believe::Models::MatchStreamLiveParams

  MatchType = ::Believe::Models::MatchType

  MatchUpdateParams = ::Believe::Models::MatchUpdateParams

  MedicalSpecialty = ::Believe::Models::MedicalSpecialty

  MedicalStaff = ::Believe::Models::MedicalStaff

  PaginatedResponse = ::Believe::Models::PaginatedResponse

  PaginatedResponseQuote = ::Believe::Models::PaginatedResponseQuote

  PepTalkRetrieveParams = ::Believe::Models::PepTalkRetrieveParams

  Player = ::Believe::Models::Player

  Position = ::Believe::Models::Position

  PressSimulateParams = ::Believe::Models::PressSimulateParams

  PurchaseMethod = ::Believe::Models::PurchaseMethod

  Quote = ::Believe::Models::Quote

  QuoteCreateParams = ::Believe::Models::QuoteCreateParams

  QuoteDeleteParams = ::Believe::Models::QuoteDeleteParams

  QuoteGetRandomParams = ::Believe::Models::QuoteGetRandomParams

  QuoteListByCharacterParams = ::Believe::Models::QuoteListByCharacterParams

  QuoteListByThemeParams = ::Believe::Models::QuoteListByThemeParams

  QuoteListParams = ::Believe::Models::QuoteListParams

  QuoteMoment = ::Believe::Models::QuoteMoment

  QuoteRetrieveParams = ::Believe::Models::QuoteRetrieveParams

  QuoteTheme = ::Believe::Models::QuoteTheme

  QuoteUpdateParams = ::Believe::Models::QuoteUpdateParams

  ReframeTransformNegativeThoughtsParams = ::Believe::Models::ReframeTransformNegativeThoughtsParams

  RegisteredWebhook = ::Believe::Models::RegisteredWebhook

  StreamTestConnectionParams = ::Believe::Models::StreamTestConnectionParams

  Team = ::Believe::Models::Team

  TeamCreateParams = ::Believe::Models::TeamCreateParams

  TeamDeleteParams = ::Believe::Models::TeamDeleteParams

  TeamGetCultureParams = ::Believe::Models::TeamGetCultureParams

  TeamGetRivalsParams = ::Believe::Models::TeamGetRivalsParams

  TeamListLogosParams = ::Believe::Models::TeamListLogosParams

  TeamListParams = ::Believe::Models::TeamListParams

  TeamMemberCreateParams = ::Believe::Models::TeamMemberCreateParams

  TeamMemberDeleteParams = ::Believe::Models::TeamMemberDeleteParams

  TeamMemberListCoachesParams = ::Believe::Models::TeamMemberListCoachesParams

  TeamMemberListParams = ::Believe::Models::TeamMemberListParams

  TeamMemberListPlayersParams = ::Believe::Models::TeamMemberListPlayersParams

  TeamMemberListStaffParams = ::Believe::Models::TeamMemberListStaffParams

  TeamMemberRetrieveParams = ::Believe::Models::TeamMemberRetrieveParams

  TeamMemberTransferredWebhookEvent = ::Believe::Models::TeamMemberTransferredWebhookEvent

  TeamMemberUpdateParams = ::Believe::Models::TeamMemberUpdateParams

  TeamRetrieveParams = ::Believe::Models::TeamRetrieveParams

  Teams = ::Believe::Models::Teams

  TeamUpdateParams = ::Believe::Models::TeamUpdateParams

  TeamValues = ::Believe::Models::TeamValues

  TicketSale = ::Believe::Models::TicketSale

  TicketSaleCreateParams = ::Believe::Models::TicketSaleCreateParams

  TicketSaleDeleteParams = ::Believe::Models::TicketSaleDeleteParams

  TicketSaleListParams = ::Believe::Models::TicketSaleListParams

  TicketSaleRetrieveParams = ::Believe::Models::TicketSaleRetrieveParams

  TicketSaleUpdateParams = ::Believe::Models::TicketSaleUpdateParams

  TurningPoint = ::Believe::Models::TurningPoint

  UnwrapWebhookEvent = ::Believe::Models::UnwrapWebhookEvent

  VersionRetrieveParams = ::Believe::Models::VersionRetrieveParams

  WebhookCreateParams = ::Believe::Models::WebhookCreateParams

  WebhookDeleteParams = ::Believe::Models::WebhookDeleteParams

  WebhookListParams = ::Believe::Models::WebhookListParams

  WebhookRetrieveParams = ::Believe::Models::WebhookRetrieveParams

  WebhookTriggerEventParams = ::Believe::Models::WebhookTriggerEventParams

  WebhookUnwrapParams = ::Believe::Models::WebhookUnwrapParams
end
