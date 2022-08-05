require 'todo'
require 'todo_list'

RSpec.describe "integration" do
    it 'adds todos to todo list and returns all complete todos' do
        list = TodoList.new
        todo1 = Todo.new('Do homework')
        todo2 = Todo.new('Send letter')
        list.add(todo1)
        list.add(todo2)
        todo1.mark_done!
        result = list.complete
        expect(result).to eq ['Do homework']
    end

    it 'adds todos to todo list and returns all incomplete todos' do
        list = TodoList.new
        todo1 = Todo.new('Do homework')
        todo2 = Todo.new('Send letter')
        list.add(todo1)
        list.add(todo2)
        todo1.mark_done!
        result = list.incomplete
        expect(result).to eq ['Send letter']
    end

    it 'marks all todos as complete and returns all todos' do
        list = TodoList.new
        todo1 = Todo.new('Do homework')
        todo2 = Todo.new('Send letter')
        list.add(todo1)
        list.add(todo2)
        list.give_up!
        result = list.complete
        expect(result).to eq ['Do homework', 'Send letter']
    end

end

