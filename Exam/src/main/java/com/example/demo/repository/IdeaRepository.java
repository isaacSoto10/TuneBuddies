package com.example.demo.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.*;

@Repository
public interface IdeaRepository extends CrudRepository<Idea, Long>{
	Iterable<Idea> findAllByOrderByLikesAsc();
	Iterable<Idea> findAllByOrderByLikesDesc();
}
