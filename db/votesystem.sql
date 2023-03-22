
create database votesystem;

CREATE TABLE votesystem.admin (
  id int(11) NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(60) NOT NULL,
  firstname varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  photo varchar(150) NOT NULL,
  created_on date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO votesystem.admin (id, username, password, firstname, lastname, photo, created_on) VALUES
(1, 'SathyapalReddy', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Sathyapal', 'Reddy', 'facebook-profile-image.jpeg', '2018-04-02');



CREATE TABLE votesystem.candidates (
  id int(11) NOT NULL,
  position_id int(11) NOT NULL,
  firstname varchar(30) NOT NULL,
  lastname varchar(30) NOT NULL,
  photo varchar(150) NOT NULL,
  platform text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE votesystem.positions (
  id int(11) NOT NULL,
  description varchar(50) NOT NULL,
  max_vote int(11) NOT NULL,
  priority int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE votesystem.voters (
  id int(11) NOT NULL,
  voters_id varchar(15) NOT NULL,
  password varchar(60) NOT NULL,
  firstname varchar(30) NOT NULL,
  lastname varchar(30) NOT NULL,
  photo varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE votesystem.votes (
  id int(11) NOT NULL,
  voters_id int(11) NOT NULL,
  candidate_id int(11) NOT NULL,
  position_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




ALTER TABLE votesystem.admin
  ADD PRIMARY KEY (id);


ALTER TABLE votesystem.candidates
  ADD PRIMARY KEY (id);


ALTER TABLE votesystem.positions
  ADD PRIMARY KEY (id);


ALTER TABLE votesystem.voters
  ADD PRIMARY KEY (id);


ALTER TABLE votesystem.votes
  ADD PRIMARY KEY (id);


ALTER TABLE votesystem.admin
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE votesystem.candidates
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;


ALTER TABLE votesystem.positions
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE votesystem.voters
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE votesystem.votes
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;


