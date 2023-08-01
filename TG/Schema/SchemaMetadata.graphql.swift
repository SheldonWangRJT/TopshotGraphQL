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
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}