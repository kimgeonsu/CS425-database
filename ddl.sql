CREATE TABLE Post {
  post_id INT PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  content VARCHAR(255) NOT NULL,
  writer VARCHAR(10) NOT NULL,
  date CHAR(10),
  likes VARCHAR(10) NOT NULL,
	FOREIGN KEY (name) REFERENCES User(name),
};

CREATE TABLE Comment {
	comment_id CHAR(8) PRIMARY KEY NOT NULL, 
	post_id CHAR(8),
  content VARCHAR(255) NOT NULL,
  name VARCHAR(10) NOT NULL,
  date CHAR(10),
	FOREIGN KEY (post_id) REFERENCES Post(post_id),
	FOREIGN KEY (name) REFERENCES User(name),
};

CREATE TABLE User {
	user_id CHAR(8) PRIMARY NOT NULL,
	post_id CHAR(8),
	comment_id CHAR(8),
	name VARCHAR(10) NOT NULL,
	department_name VARCHAR(20) NOT NULL,
	FOREIGN KEY (post_id) REFERENCES Post(post_id),
	FOREIGN KEY (comment_id) REFERENCES Comment(comment_id),
};

CREATE TABLE Timetable {
	timetable_id INT NOT NULL
	user_id CHAR(8),
	name VARCHAR(10) NOT NULL,
	classroom VARCHAR(255) NOT NULL,
	semester VARCHAR(6) NOT NULL,
	FOREIGN KEY (user_id, name) REFERENCES User(user_id, name),
};

CREATE TABLE TimeSlot {
	start_time CHAR(10),
	end_time CHAR(10),
	day CHAR(10)
};

CREATE TABLE Takes {
	titmetable_id INT,
	class VARCHAR(10),
	semseter VARCHAR(10),
};

