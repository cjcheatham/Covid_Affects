CREATE TABLE school_clean_data (
	state VARCHAR(2) PRIMARY KEY,
	state_name VARCHAR (20) NOT NULL,
	enrollment INT NOT NULL,
	inperson INT NOT NULL,
	hybrid INT NOT NULL,
	vitual INT NOT NULL
);

CREATE TABLE school_group (
    state_name VARCHAR(20) NOT NULL,
    state VARCHAR(2) NOT NULL,
    EndDate VARCHAR(7) NOT NULL,
    TotalCasesStudents INT NOT NULL,
    FOREIGN KEY (state) REFERENCES school_clean_data(state)
);
