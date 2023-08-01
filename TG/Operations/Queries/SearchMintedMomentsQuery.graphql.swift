// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo

public extension TG {
  class SearchMintedMomentsQuery: GraphQLQuery {
    public static let operationName: String = "SearchMintedMoments"
    public static let document: Apollo.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query SearchMintedMoments($input: SearchMintedMomentsInput!) {
          searchMintedMoments(input: $input) {
            __typename
            data {
              __typename
              searchSummary {
                __typename
                totalCount
              }
            }
          }
        }
        """#
      ))

    public var input: SearchMintedMomentsInput

    public init(input: SearchMintedMomentsInput) {
      self.input = input
    }

    public var __variables: Variables? { ["input": input] }

    public struct Data: TG.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: Apollo.ParentType { TG.Objects.Query }
      public static var __selections: [Apollo.Selection] { [
        .field("searchMintedMoments", SearchMintedMoments?.self, arguments: ["input": .variable("input")]),
      ] }

      public var searchMintedMoments: SearchMintedMoments? { __data["searchMintedMoments"] }

      /// SearchMintedMoments
      ///
      /// Parent Type: `SearchMintedMomentsResponse`
      public struct SearchMintedMoments: TG.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: Apollo.ParentType { TG.Objects.SearchMintedMomentsResponse }
        public static var __selections: [Apollo.Selection] { [
          .field("__typename", String.self),
          .field("data", Data?.self),
        ] }

        public var data: Data? { __data["data"] }

        /// SearchMintedMoments.Data
        ///
        /// Parent Type: `MintedMomentSearchSummary`
        public struct Data: TG.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: Apollo.ParentType { TG.Objects.MintedMomentSearchSummary }
          public static var __selections: [Apollo.Selection] { [
            .field("__typename", String.self),
            .field("searchSummary", SearchSummary?.self),
          ] }

          public var searchSummary: SearchSummary? { __data["searchSummary"] }

          /// SearchMintedMoments.Data.SearchSummary
          ///
          /// Parent Type: `SearchSummary`
          public struct SearchSummary: TG.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: Apollo.ParentType { TG.Objects.SearchSummary }
            public static var __selections: [Apollo.Selection] { [
              .field("__typename", String.self),
              .field("totalCount", Int?.self),
            ] }

            public var totalCount: Int? { __data["totalCount"] }
          }
        }
      }
    }
  }

}