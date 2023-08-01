// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct MintedMomentFilterInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      byOwnerDapperID: GraphQLNullable<[String?]> = nil,
      bySets: GraphQLNullable<[ID?]> = nil,
      bySeries: GraphQLNullable<[ID?]> = nil,
      byPlays: GraphQLNullable<[ID?]> = nil,
      byPlayers: GraphQLNullable<[ID?]> = nil,
      byTeams: GraphQLNullable<[ID?]> = nil,
      bySetVisuals: GraphQLNullable<[GraphQLEnum<VisualIdType>?]> = nil,
      byMomentTiers: GraphQLNullable<[GraphQLEnum<MomentTier>?]> = nil,
      byForSale: GraphQLNullable<GraphQLEnum<ForSaleFilter>> = nil,
      byPlayTagIDs: GraphQLNullable<[ID?]> = nil,
      bySetPlayTagIDs: GraphQLNullable<[ID?]> = nil,
      byMomentTagIDs: GraphQLNullable<[ID?]> = nil,
      byPlayCategory: GraphQLNullable<[ID?]> = nil,
      byPrimaryPlayerPosition: GraphQLNullable<[GraphQLEnum<PlayerPosition>?]> = nil,
      byGameDate: GraphQLNullable<DateRangeFilterInput> = nil,
      byCreatedAt: GraphQLNullable<DateRangeFilterInput> = nil,
      byPlayerGameScores: GraphQLNullable<PlayerGameScoresFiltersInput> = nil,
      byPrice: GraphQLNullable<PriceRangeFilterInput> = nil,
      byActiveChallenge: GraphQLNullable<[ID?]> = nil,
      byLeagues: GraphQLNullable<[GraphQLEnum<League>?]> = nil,
      byOwnerFlowAddress: GraphQLNullable<[String?]> = nil,
      byEditions: GraphQLNullable<[EditionsFilterInput?]> = nil,
      byGroupID: GraphQLNullable<ID> = nil,
      byGroupSlug: GraphQLNullable<String> = nil,
      byPotentialTopshotScore: GraphQLNullable<Bool> = nil,
      byLockStatus: GraphQLNullable<GraphQLEnum<LockStatusFilter>> = nil,
      byFlowID: GraphQLNullable<[ID?]> = nil,
      bySubeditionID: GraphQLNullable<[Int]> = nil
    ) {
      __data = InputDict([
        "byOwnerDapperID": byOwnerDapperID,
        "bySets": bySets,
        "bySeries": bySeries,
        "byPlays": byPlays,
        "byPlayers": byPlayers,
        "byTeams": byTeams,
        "bySetVisuals": bySetVisuals,
        "byMomentTiers": byMomentTiers,
        "byForSale": byForSale,
        "byPlayTagIDs": byPlayTagIDs,
        "bySetPlayTagIDs": bySetPlayTagIDs,
        "byMomentTagIDs": byMomentTagIDs,
        "byPlayCategory": byPlayCategory,
        "byPrimaryPlayerPosition": byPrimaryPlayerPosition,
        "byGameDate": byGameDate,
        "byCreatedAt": byCreatedAt,
        "byPlayerGameScores": byPlayerGameScores,
        "byPrice": byPrice,
        "byActiveChallenge": byActiveChallenge,
        "byLeagues": byLeagues,
        "byOwnerFlowAddress": byOwnerFlowAddress,
        "byEditions": byEditions,
        "byGroupID": byGroupID,
        "byGroupSlug": byGroupSlug,
        "byPotentialTopshotScore": byPotentialTopshotScore,
        "byLockStatus": byLockStatus,
        "byFlowID": byFlowID,
        "bySubeditionID": bySubeditionID
      ])
    }

    public var byOwnerDapperID: GraphQLNullable<[String?]> {
      get { __data["byOwnerDapperID"] }
      set { __data["byOwnerDapperID"] = newValue }
    }

    public var bySets: GraphQLNullable<[ID?]> {
      get { __data["bySets"] }
      set { __data["bySets"] = newValue }
    }

    public var bySeries: GraphQLNullable<[ID?]> {
      get { __data["bySeries"] }
      set { __data["bySeries"] = newValue }
    }

    public var byPlays: GraphQLNullable<[ID?]> {
      get { __data["byPlays"] }
      set { __data["byPlays"] = newValue }
    }

    public var byPlayers: GraphQLNullable<[ID?]> {
      get { __data["byPlayers"] }
      set { __data["byPlayers"] = newValue }
    }

    public var byTeams: GraphQLNullable<[ID?]> {
      get { __data["byTeams"] }
      set { __data["byTeams"] = newValue }
    }

    public var bySetVisuals: GraphQLNullable<[GraphQLEnum<VisualIdType>?]> {
      get { __data["bySetVisuals"] }
      set { __data["bySetVisuals"] = newValue }
    }

    public var byMomentTiers: GraphQLNullable<[GraphQLEnum<MomentTier>?]> {
      get { __data["byMomentTiers"] }
      set { __data["byMomentTiers"] = newValue }
    }

    public var byForSale: GraphQLNullable<GraphQLEnum<ForSaleFilter>> {
      get { __data["byForSale"] }
      set { __data["byForSale"] = newValue }
    }

    public var byPlayTagIDs: GraphQLNullable<[ID?]> {
      get { __data["byPlayTagIDs"] }
      set { __data["byPlayTagIDs"] = newValue }
    }

    public var bySetPlayTagIDs: GraphQLNullable<[ID?]> {
      get { __data["bySetPlayTagIDs"] }
      set { __data["bySetPlayTagIDs"] = newValue }
    }

    public var byMomentTagIDs: GraphQLNullable<[ID?]> {
      get { __data["byMomentTagIDs"] }
      set { __data["byMomentTagIDs"] = newValue }
    }

    public var byPlayCategory: GraphQLNullable<[ID?]> {
      get { __data["byPlayCategory"] }
      set { __data["byPlayCategory"] = newValue }
    }

    public var byPrimaryPlayerPosition: GraphQLNullable<[GraphQLEnum<PlayerPosition>?]> {
      get { __data["byPrimaryPlayerPosition"] }
      set { __data["byPrimaryPlayerPosition"] = newValue }
    }

    public var byGameDate: GraphQLNullable<DateRangeFilterInput> {
      get { __data["byGameDate"] }
      set { __data["byGameDate"] = newValue }
    }

    public var byCreatedAt: GraphQLNullable<DateRangeFilterInput> {
      get { __data["byCreatedAt"] }
      set { __data["byCreatedAt"] = newValue }
    }

    public var byPlayerGameScores: GraphQLNullable<PlayerGameScoresFiltersInput> {
      get { __data["byPlayerGameScores"] }
      set { __data["byPlayerGameScores"] = newValue }
    }

    public var byPrice: GraphQLNullable<PriceRangeFilterInput> {
      get { __data["byPrice"] }
      set { __data["byPrice"] = newValue }
    }

    public var byActiveChallenge: GraphQLNullable<[ID?]> {
      get { __data["byActiveChallenge"] }
      set { __data["byActiveChallenge"] = newValue }
    }

    public var byLeagues: GraphQLNullable<[GraphQLEnum<League>?]> {
      get { __data["byLeagues"] }
      set { __data["byLeagues"] = newValue }
    }

    public var byOwnerFlowAddress: GraphQLNullable<[String?]> {
      get { __data["byOwnerFlowAddress"] }
      set { __data["byOwnerFlowAddress"] = newValue }
    }

    public var byEditions: GraphQLNullable<[EditionsFilterInput?]> {
      get { __data["byEditions"] }
      set { __data["byEditions"] = newValue }
    }

    public var byGroupID: GraphQLNullable<ID> {
      get { __data["byGroupID"] }
      set { __data["byGroupID"] = newValue }
    }

    public var byGroupSlug: GraphQLNullable<String> {
      get { __data["byGroupSlug"] }
      set { __data["byGroupSlug"] = newValue }
    }

    public var byPotentialTopshotScore: GraphQLNullable<Bool> {
      get { __data["byPotentialTopshotScore"] }
      set { __data["byPotentialTopshotScore"] = newValue }
    }

    public var byLockStatus: GraphQLNullable<GraphQLEnum<LockStatusFilter>> {
      get { __data["byLockStatus"] }
      set { __data["byLockStatus"] = newValue }
    }

    public var byFlowID: GraphQLNullable<[ID?]> {
      get { __data["byFlowID"] }
      set { __data["byFlowID"] = newValue }
    }

    public var bySubeditionID: GraphQLNullable<[Int]> {
      get { __data["bySubeditionID"] }
      set { __data["bySubeditionID"] = newValue }
    }
  }

}