require 'todo'

class TodoList
    def initialize
      @list = []
    end
  
    def add(todo)
      @list.push(todo)
    end
  
    def incomplete
      @list.select{|todo| !todo.done?}.map{|todo| todo.task}
    end
  
    def complete
      @list.select{|todo| todo.done?}.map{|todo| todo.task}
    end
  
    def give_up!
      @list.each{|todo| todo.mark_done!}
    end
  end