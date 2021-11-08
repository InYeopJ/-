package com.sboot.matkit.exception;

public class AlreadyExistingException extends RuntimeException {
	public AlreadyExistingException(String message) {
		super(message);
	}
}