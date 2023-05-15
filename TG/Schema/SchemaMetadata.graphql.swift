// @generated
// This file was automatically generated and should not be edited.

import Apollo

public typealias ID = String

public protocol SelectionSet: Apollo.SelectionSet & Apollo.RootSelectionSet
where Schema == TG.SchemaMetadata {}

public protocol InlineFragment: Apollo.SelectionSet & Apollo.InlineFragment
where Schema == TG.SchemaMetadata {}

public protocol MutableSelectionSet: Apollo.MutableRootSelectionSet
where Schema == TG.SchemaMetadata {}

public protocol MutableInlineFragment: Apollo.MutableSelectionSet & Apollo.InlineFragment
where Schema == TG.SchemaMetadata {}

public enum SchemaMetadata: Apollo.SchemaMetadata {
  public static let configuration: Apollo.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> Object? {
    switch typename {
    case "Query": return TG.Objects.Query
    case "Teams": return TG.Objects.Teams
    case "Team": return TG.Objects.Team
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
