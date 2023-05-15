// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo

public extension TG {
  class AllTeamsQuery: GraphQLQuery {
    public static let operationName: String = "AllTeams"
    public static let document: Apollo.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query AllTeams {
          allTeams {
            __typename
            size
            data {
              __typename
              id
              name
            }
          }
        }
        """#
      ))

    public init() {}

    public struct Data: TG.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: Apollo.ParentType { TG.Objects.Query }
      public static var __selections: [Apollo.Selection] { [
        .field("allTeams", AllTeams?.self),
      ] }

      /// Returns a list of all teams.
      public var allTeams: AllTeams? { __data["allTeams"] }

      /// AllTeams
      ///
      /// Parent Type: `Teams`
      public struct AllTeams: TG.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: Apollo.ParentType { TG.Objects.Teams }
        public static var __selections: [Apollo.Selection] { [
          .field("__typename", String.self),
          .field("size", Int?.self),
          .field("data", [Datum].self),
        ] }

        public var size: Int? { __data["size"] }
        public var data: [Datum] { __data["data"] }

        /// AllTeams.Datum
        ///
        /// Parent Type: `Team`
        public struct Datum: TG.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: Apollo.ParentType { TG.Objects.Team }
          public static var __selections: [Apollo.Selection] { [
            .field("__typename", String.self),
            .field("id", TG.ID.self),
            .field("name", String?.self),
          ] }

          public var id: TG.ID { __data["id"] }
          public var name: String? { __data["name"] }
        }
      }
    }
  }

}