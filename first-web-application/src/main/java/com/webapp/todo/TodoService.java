package com.webapp.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {
	private static List<Todo> todos = new ArrayList<>();
	static {
		todos.add(new Todo("Learn Web Application Developement"));
		todos.add(new Todo("Learn Java Reset API from Java-Brain"));
		todos.add(new Todo("Learn Spring Frame work in Udemy"));
		todos.add(new Todo("Learn Spring Boot Microservice in Udemy"));
	}

	public List<Todo> retrieveTodos() {
		return todos;
	}

	public void addTodo(Todo todo) {
		todos.add(todo);
	}

	public void deleteTodo(Todo todo) {
		todos.remove(todo);
	}

}
