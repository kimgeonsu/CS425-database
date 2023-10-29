CREATE TABLE Post {
	post_id Int PRIMARY KEY
	title Varchar(255)
	content Text
	writer Varchar(255)
	date datetime
	good_count Int
} 

CREATE TABLE Comment {
	comment_id Int
	content Text
	writer Varchar(255)
	date datetime
	FOREIGN KEY post_id REFERENCES comment (id)
};

CREATE TABLE Department (
	department_name VARCHAR(20) NOT NULL,
	class VARCHAR(20) NOT NULL,
	semester VARCHAR(6) NOT NULL,
);

CREATE TABLE Post (
  post_id INT PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  content VARCHAR(255) NOT NULL,
  name VARCHAR(10) NOT NULL,
  date CHAR(10),
  good_count VARCHAR(10) NOT NULL,
FOREIGN KEY (name) REFERENCES User(name),
);
 
CREATE TABLE Comment (
	comment_id CHAR(8) PRIMARY KEY
	post_id CHAR(8),
  content VARCHAR(255) NOT NULL,
  name VARCHAR(10) NOT NULL,
  date CHAR(10),
	FOREIGN KEY (post_id) REFERENCES Post(post_id),
	FOREIGN KEY (name) REFERENCES User(name),
);

CREATE TABLE User (
	user_id CHAR(8) PRIMARY,
	post_id CHAR(8),
	comment_id CHAR(8),
	name VARCHAR(10) NOT NULL,
	department_name VARCHAR(20) NOT NULL,
	FOREIGN KEY (post_id) REFERENCES Post(post_id),
	FOREIGN KEY (comment_id) REFERENCES Comment(comment_id),
	FOREIGN KEY (department) REFERENCES Department(department_name)
);

CREATE TABLE Timetable (
	user_id CHAR(8),
	name VARCHAR(10) NOT NULL,
	department_name VARCHAR(20) NOT NULL,
	class VARCHAR(255) NOT NULL,
	semester VARCHAR(6) NOT NULL,
	FOREIGN KEY (user_id, name) REFERENCES User(user_id, name),
	FOREIGN KEY (department, class, semester) REFERENCE
Department(department_name, class, semester)
);

CREATE TABLE Time_slot {
	time_slot_id INT NOT NULL
	start_time CHAR(10)
	end_time CHAR(10)
	day CHAR(10)
};


