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
                data {
                  __typename
                  ... on MintedMoments {
                    data {
                      __typename
                      ... on MintedMoment {
                        tier
                        play {
                          __typename
                          stats {
                            __typename
                            playerName
                          }
                        }
                        flowSerialNumber
                        assetPathPrefix
                      }
                    }
                    size
                  }
                }
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
              .field("data", Data?.self),
            ] }

            public var totalCount: Int? { __data["totalCount"] }
            public var data: Data? { __data["data"] }

            /// SearchMintedMoments.Data.SearchSummary.Data
            ///
            /// Parent Type: `SortableCollection`
            public struct Data: TG.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: Apollo.ParentType { TG.Interfaces.SortableCollection }
              public static var __selections: [Apollo.Selection] { [
                .field("__typename", String.self),
                .inlineFragment(AsMintedMoments.self),
              ] }

              public var asMintedMoments: AsMintedMoments? { _asInlineFragment() }

              /// SearchMintedMoments.Data.SearchSummary.Data.AsMintedMoments
              ///
              /// Parent Type: `MintedMoments`
              public struct AsMintedMoments: TG.InlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = SearchMintedMomentsQuery.Data.SearchMintedMoments.Data.SearchSummary.Data
                public static var __parentType: Apollo.ParentType { TG.Objects.MintedMoments }
                public static var __selections: [Apollo.Selection] { [
                  .field("data", [Datum].self),
                  .field("size", Int?.self),
                ] }

                public var data: [Datum] { __data["data"] }
                public var size: Int? { __data["size"] }

                /// SearchMintedMoments.Data.SearchSummary.Data.AsMintedMoments.Datum
                ///
                /// Parent Type: `MintedMoment`
                public struct Datum: TG.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: Apollo.ParentType { TG.Objects.MintedMoment }
                  public static var __selections: [Apollo.Selection] { [
                    .field("__typename", String.self),
                    .field("tier", GraphQLEnum<TG.MomentTier>?.self),
                    .field("play", Play?.self),
                    .field("flowSerialNumber", String?.self),
                    .field("assetPathPrefix", String?.self),
                  ] }

                  public var tier: GraphQLEnum<TG.MomentTier>? { __data["tier"] }
                  public var play: Play? { __data["play"] }
                  public var flowSerialNumber: String? { __data["flowSerialNumber"] }
                  public var assetPathPrefix: String? { __data["assetPathPrefix"] }

                  /// SearchMintedMoments.Data.SearchSummary.Data.AsMintedMoments.Datum.Play
                  ///
                  /// Parent Type: `Play`
                  public struct Play: TG.SelectionSet {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public static var __parentType: Apollo.ParentType { TG.Objects.Play }
                    public static var __selections: [Apollo.Selection] { [
                      .field("__typename", String.self),
                      .field("stats", Stats?.self),
                    ] }

                    public var stats: Stats? { __data["stats"] }

                    /// SearchMintedMoments.Data.SearchSummary.Data.AsMintedMoments.Datum.Play.Stats
                    ///
                    /// Parent Type: `PlayStats`
                    public struct Stats: TG.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: Apollo.ParentType { TG.Objects.PlayStats }
                      public static var __selections: [Apollo.Selection] { [
                        .field("__typename", String.self),
                        .field("playerName", String?.self),
                      ] }

                      public var playerName: String? { __data["playerName"] }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

}