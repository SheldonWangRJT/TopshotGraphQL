// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo

public extension TG {
  class AllTeamsByLeaguesQuery: GraphQLQuery {
    public static let operationName: String = "AllTeamsByLeagues"
    public static let document: Apollo.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query AllTeamsByLeagues($input: AllTeamsByLeaguesInput!) {
          allTeamsByLeagues(input: $input) {
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

    public var input: AllTeamsByLeaguesInput

    public init(input: AllTeamsByLeaguesInput) {
      self.input = input
    }

    public var __variables: Variables? { ["input": input] }

    public struct Data: TG.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: Apollo.ParentType { TG.Objects.Query }
      public static var __selections: [Apollo.Selection] { [
        .field("allTeamsByLeagues", AllTeamsByLeagues?.self, arguments: ["input": .variable("input")]),
      ] }

      /// Returns a list of teams in a given League.
      public var allTeamsByLeagues: AllTeamsByLeagues? { __data["allTeamsByLeagues"] }

      /// AllTeamsByLeagues
      ///
      /// Parent Type: `Teams`
      public struct AllTeamsByLeagues: TG.SelectionSet {
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

        /// AllTeamsByLeagues.Datum
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