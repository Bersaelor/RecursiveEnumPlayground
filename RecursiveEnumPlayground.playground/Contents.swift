//: Playground - noun: a place where people can play

import UIKit

func single<Element>(_ value: Element) -> Tree<Element> {
    return .node(left: .leaf, value: value, right: .leaf)
}

extension Tree {
    func inserting(_ newValue: Element) -> Tree {
        switch self {
        case .leaf:
            return single(newValue)
        case let .node(left, value, right):
            if newValue < value {
                return Tree.node(left: left.inserting(newValue), value: value, right: right)
            } else {
                return Tree.node(left: left, value: value, right: right.inserting(newValue))
            }
        }
    }
}

let tree = single(7).inserting(2).inserting(10)

let tree2 = tree.inserting(1)
let tree3 = tree2.inserting(3)
let tree4 = tree3.inserting(5)


extension Tree {
    var count: Int {
        switch self {
        case .leaf:
            return 0
        case let .node(left, _, right):
            return 1 + left.count + right.count
        }
    }
}

tree.count
tree2.count
let tree5 = tree2.inserting(6)
tree5.count
