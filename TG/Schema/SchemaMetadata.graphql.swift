// @generated
// This file was automatically generated and should not be edited.

import Apollo

public protocol TG_SelectionSet: Apollo.SelectionSet & Apollo.RootSelectionSet
where Schema == TG.SchemaMetadata {}

public protocol TG_InlineFragment: Apollo.SelectionSet & Apollo.InlineFragment
where Schema == TG.SchemaMetadata {}

public protocol TG_MutableSelectionSet: Apollo.MutableRootSelectionSet
where Schema == TG.SchemaMetadata {}

public protocol TG_MutableInlineFragment: Apollo.MutableSelectionSet & Apollo.InlineFragment
where Schema == TG.SchemaMetadata {}

public extension TG {
  typealias ID = String

  typealias SelectionSet = TG_SelectionSet

  typealias InlineFragment = TG_InlineFragment

  typealias MutableSelectionSet = TG_MutableSelectionSet

  typealias MutableInlineFragment = TG_MutableInlineFragment

  enum SchemaMetadata: Apollo.SchemaMetadata {
    public static let configuration: Apollo.SchemaConfiguration.Type = SchemaConfiguration.self

    public static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return TG.Objects.Query
      case "Teams": return TG.Objects.Teams
      case "Team": return TG.Objects.Team
      case "SearchMintedMomentsResponse": return TG.Objects.SearchMintedMomentsResponse
      case "MintedMomentSearchSummary": return TG.Objects.MintedMomentSearchSummary
      case "SearchSummary": return TG.Objects.SearchSummary
      case "Activities": return TG.Objects.Activities
      case "EditionListings": return TG.Objects.EditionListings
      case "Editions": return TG.Objects.Editions
      case "MarketplaceTransactions": return TG.Objects.MarketplaceTransactions
      case "MintedMoments": return TG.Objects.MintedMoments
      case "MomentGroups": return TG.Objects.MomentGroups
      case "MomentListings": return TG.Objects.MomentListings
      case "Offers": return TG.Objects.Offers
      case "PackListings": return TG.Objects.PackListings
      case "PacksForUserCollections": return TG.Objects.PacksForUserCollections
      case "Plays": return TG.Objects.Plays
      case "Sets": return TG.Objects.Sets
      case "Showcases": return TG.Objects.Showcases
      case "UserChallenges": return TG.Objects.UserChallenges
      case "UserSetAssociations": return TG.Objects.UserSetAssociations
      case "Users": return TG.Objects.Users
      case "WatchedEditions": return TG.Objects.WatchedEditions
      case "MintedMoment": return TG.Objects.MintedMoment
      case "Activity": return TG.Objects.Activity
      case "Set": return TG.Objects.Set
      case "Play": return TG.Objects.Play
      case "MomentGroup": return TG.Objects.MomentGroup
      case "PackListing": return TG.Objects.PackListing
      case "Edition": return TG.Objects.Edition
      case "Pack": return TG.Objects.Pack
      case "UserChallenge": return TG.Objects.UserChallenge
      case "Showcase": return TG.Objects.Showcase
      case "EditionListing": return TG.Objects.EditionListing
      case "OnChainPack": return TG.Objects.OnChainPack
      case "MarketplaceTransaction": return TG.Objects.MarketplaceTransaction
      case "MomentListing": return TG.Objects.MomentListing
      case "PacksForUserCollection": return TG.Objects.PacksForUserCollection
      case "User": return TG.Objects.User
      case "Offer": return TG.Objects.Offer
      case "WatchedEdition": return TG.Objects.WatchedEdition
      case "UserSetAssociation": return TG.Objects.UserSetAssociation
      case "PlayStats": return TG.Objects.PlayStats
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}