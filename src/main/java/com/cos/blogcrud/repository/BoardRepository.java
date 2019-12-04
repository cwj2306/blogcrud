package com.cos.blogcrud.repository;

import com.cos.blogcrud.model.Board;

public interface BoardRepository {
	Board findById(int id);
	void save(Board board);
	void update(Board board);
	void delete(int id);
}
