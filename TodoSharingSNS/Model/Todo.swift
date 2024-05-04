//
//  Todo.swift
//  TodoSharingSNS
//
//  Created by Taichi on 2024/05/03.
//

import FirebaseFirestoreSwift
import Firebase

struct Todo: Identifiable, Hashable, Codable {
    @DocumentID var id: String?
    var title: String
    var completed: Bool
    // TODO: 以下のプロパティを追加
    // let caption: String
    // var deadline: Date // 時刻のみ表示予定
    // let subTodo: [Todo]?
}

extension Todo {
    static let MOCK_TODOS: [Todo] = [
        .init(title: "水やり", completed: false),
        .init(title: "買い物", completed: true),
        .init(title: "携帯の修理", completed: false),
        .init(title: "テスト勉強", completed: false)
    ]
}