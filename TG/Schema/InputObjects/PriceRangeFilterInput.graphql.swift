// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct PriceRangeFilterInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      min: GraphQLNullable<Price> = nil,
      max: GraphQLNullable<Price> = nil
    ) {
      __data = InputDict([
        "min": min,
        "max": max
      ])
    }

    public var min: GraphQLNullable<Price> {
      get { __data["min"] }
      set { __data["min"] = newValue }
    }

    public var max: GraphQLNullable<Price> {
      get { __data["max"] }
      set { __data["max"] = newValue }
    }
  }

}