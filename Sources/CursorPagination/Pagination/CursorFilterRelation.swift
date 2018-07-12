//
//  CursorFilterRelation.swift
//  CursorPagination
//
//  Created by Brian Strobach on 6/21/18.
//

import Foundation
import Fluent
enum CursorFilterRelation{
	case and, or

	func queryFilterRelation<M: CursorPaginatable>(modelType: M.Type = M.self) -> M.Database.QueryFilterRelation{
		switch self {
		case .and:
			return M.Database.queryFilterRelationAnd
		case .or:
			return M.Database.queryFilterRelationOr
		}
	}
}
