//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Jarvis Lam on 6/24/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

// ViewModel for single to d lst item view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
