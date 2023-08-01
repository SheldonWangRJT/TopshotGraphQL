// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct SearchMintedMomentsInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      filters: GraphQLNullable<MintedMomentFilterInput> = nil,
      sortBy: GraphQLNullable<GraphQLEnum<MintedMomentSortType>> = nil,
      searchInput: BaseSearchInput
    ) {
      __data = InputDict([
        "filters": filters,
        "sortBy": sortBy,
        "searchInput": searchInput
      ])
    }

    public var filters: GraphQLNullable<MintedMomentFilterInput> {
      get { __data["filters"] }
      set { __data["filters"] = newValue }
    }

    public var sortBy: GraphQLNullable<GraphQLEnum<MintedMomentSortType>> {
      get { __data["sortBy"] }
      set { __data["sortBy"] = newValue }
    }

    public var searchInput: BaseSearchInput {
      get { __data["searchInput"] }
      set { __data["searchInput"] = newValue }
    }
  }

}