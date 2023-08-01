// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct PaginationInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      cursor: Cursor,
      direction: GraphQLEnum<CursorDirection>,
      limit: Int
    ) {
      __data = InputDict([
        "cursor": cursor,
        "direction": direction,
        "limit": limit
      ])
    }

    public var cursor: Cursor {
      get { __data["cursor"] }
      set { __data["cursor"] = newValue }
    }

    public var direction: GraphQLEnum<CursorDirection> {
      get { __data["direction"] }
      set { __data["direction"] = newValue }
    }

    public var limit: Int {
      get { __data["limit"] }
      set { __data["limit"] = newValue }
    }
  }

}