 CREATE TABLE mentors(
 mentor_id INT PRIMARY KEY,
 mentor_name VARCHAR(255));
 
CREATE TABLE batches(
batch_id INT PRIMARY KEY,
batch_name VARCHAR(255));

 CREATE TABLE learner(
 learner_id INT PRIMARY KEY,
 learner_name VARCHAR(255),
 mentor_id INT,
 batch_id INT,
 course_id INT,
 task_id INT,
 FOREIGN KEY(mentor_id)REFERENCES mentors(mentor_id),
 FOREIGN KEY(batch_id)REFERENCES batches(batch_id),
 FOREIGN KEY(course_id)REFERENCES course(course_id),
 FOREIGN KEY(task_id)REFERENCES tasks(task_id));
 
 ALTER TABLE learner add COLUMN (mark_id INT);
 DESC learner;
 
 CREATE TABLE marks(
 mark_id INT PRIMARY KEY,
 learner_id INT,
 FOREIGN KEY(learner_id) REFERENCES learner(learner_id),
 marks INT);
 desc marks;
 
 CREATE TABLE course(
 course_id INT PRIMARY KEY,
 course_name VARCHAR(255));
 
 CREATE TABLE tasks(
 task_id INT PRIMARY KEY,
 task_name VARCHAR(255),
 course_id INT,
FOREIGN KEY(course_id)REFERENCES course(course_id));
desc tasks;

ALTER TABLE marks ADD column (task_id INT);

ALTER TABLE marks
ADD CONSTRAINT mark_constraint_name
FOREIGN KEY (task_id)
REFERENCES tasks(task_id);
desc marks;