CREATE TABLE plans (
       	     	   plan_id INT,
		   plan_name TEXT,
		   price INT
		   );

CREATE TABLE subscriptions (
       	     		   customer_id INT,
			   plan_id INT,
			   start_date DATE
			   );
