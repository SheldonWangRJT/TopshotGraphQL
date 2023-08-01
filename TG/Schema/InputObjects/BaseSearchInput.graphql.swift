// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct BaseSearchInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      pagination: PaginationInput
    ) {
      __data = InputDict([
        "pagination": pagination
      ])
    }

    public var pagination: PaginationInput {
      get { __data["pagination"] }
      set { __data["pagination"] = newValue }
    }
  }

}