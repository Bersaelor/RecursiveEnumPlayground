//: Playground - noun: a place where people can play

import UIKit

func single<Element>(_ value: Element) -> Tree<Element> {
    return .node(left: .leaf, value: value, right: .leaf)
}

extension Tree {
    func insert(_ newValue: Element) -> Tree {
        switch self {
        case .leaf:
            return single(newValue)
        case let .node(.leaf, value, right): //left side is empty
            return Tree.node(left: single(newValue), value: value, right: right)
        case let .node(left, value, right): //left side is empty
            return Tree.node(left: left, value: value, right: right.insert(newValue))
        }
    }
}

let integerTree = single(10)

let treeWithNewValue = integerTree.insert(7)

let treeWithOtherValue = integerTree.insert(3)

var tree = treeWithNewValue.insert(2)

tree = tree.insert(1)
tree = tree.insert(3)
tree = tree.insert(5)


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

treeWithNewValue.count
tree.count
tree = tree.insert(6)
tree.count
