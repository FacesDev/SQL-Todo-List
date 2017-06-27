
//create table
CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INT NOT NULL,
  created_at timestamp  NOT NULL,
  completed_at timestamp  NULL
);
// insert 5 todos

INSERT INTO todolist (title, details, priority, created_at, completed_at) VALUES
('Clean Car', 'Get soap and water, scrub until clean', 2, 2017-05-16 04:05:06, null),
('Walk Dog', 'Put dog on a leash and walk atleast half mile', 4, 2017-06-20 05:12:06, 2017-06-24 06:30:02),
('Wash Dishes', 'Rub some soapy rags on the plates. Throw at wall when complete', 1, 2017-6-23 07:02:21, null),
('cook dinner', 'Fill pot with oil. Deep fry paper towels until light brown. Serve immediately', 3, 2017-4-2 03:29:10, null ),
('Game', 'Load up CSGO, ignore the world for a few rounds. Always save for AWP', 5, 2017-5-4 07:45:09, null );

// find all incomplete todos
SELECT id FROM todolist WHERE completed_at IS NULL;

// find all todos with priority above 1
SELECT id FROM todolist WHERE priority >= 1;

//complete one todo by its id
UPDATE todolist SET completed_at = '6/27/2017' WHERE id = 3;

// delete all completed todos
DELETE FROM todolist WHERE completed_at IS NOT NULL;


