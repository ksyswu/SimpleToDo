class Task{
    let name:String
    let repeatTimes:Int
    
    init(name:String, repeatTimes:Int){ //생성자
        self.name = name
        self.repeatTimes = repeatTimes
    }
    /*위와 같음
     init(newName:String, repeatTimes:Int){ //생성자
     name = newName
     self.repeatTimes = repeatTimes
     }
     */
    deinit{//소멸자
        
    }
}

//let firstTask = Task(name:"치킨 시키기", repeatTimes:1)
//print(firstTask.name, firstTask.repeatTimes)


//반복적처리
class TodoModel{
    var arrayTask:[Task] //
    
    init(){
        self.arrayTask = []
    }
    
    func addNewTask(newTask:Task){
        self.arrayTask.append(newTask) // += newTask //error해결
    }
    
    //아래있는 메소드들을 구현하시오.
    func addNewTask(name:String, repeatCount:Int){
        //self.arrayTask.append(Task(name: name, repeatTimes: repeatCount))
        //위와 같은 사항
        self.addNewTask(newTask: Task(name: name, repeatTimes: repeatCount))
    }
    /*
     func modifyTask(){
     
     }
     func removeTask(task:Task){
     
     }
     */
}
/*
 let modelTodo = TodoModel()
 
 modelTodo.addNewTask(newTask: Task(name:"커피한잔", repeatTimes:1))
 modelTodo.addNewTask(name:"산책", repeatCount: 1)
 
 print(modelTodo.arrayTask.count)
 
 */
