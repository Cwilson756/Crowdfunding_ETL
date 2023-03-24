CREATE TABLE categories (
  	category_id varchar(6) NOT NULL PRIMARY KEY,
	category varchar(20) NOT NULL
);

select * from categories

CREATE TABLE subcategories (
  	subcategory_id varchar(10) NOT NULL PRIMARY KEY,
	subcategory varchar(20) NOT NULL
);

select * from subcategories


CREATE TABLE contacts (
  	contact_id INT NOT NULL PRIMARY KEY,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	email varchar(50) NOT NULL
	
);

select * from contacts


CREATE TABLE campaigns (
  	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NUll,
	company_name VARCHAR(60),
	description VARCHAR(100),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(12),
	backers_count INT,
	country VARCHAR (5),
	currency VARCHAR(5),
	launch_date TIMESTAMP,
	end_date TIMESTAMP,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(20) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES categories(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);

select * from campaigns

