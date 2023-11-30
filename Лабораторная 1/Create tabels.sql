CREATE TABLE TypeRating (
	Id int PRIMARY KEY generated always as identity (increment by 1),
    Score int NOT NULL CHECK (Score < 11),
    Interpretation varchar(100)
);

CREATE TABLE Students (
	Id int PRIMARY KEY generated always as identity (increment by 1),
    Surname varchar(50) NOT NULL,
	MiddleName varchar(64),
	Name varchar(64) NOT NULL,
	Address varchar(100) NOT NULL,
	DateOfBirth DATE NOT NULL
);

CREATE TABLE Subjects (
	Id int PRIMARY KEY generated always as identity (increment by 1),
    Name varchar(100) NOT NULL
);

CREATE TABLE Teachers (
	Id int PRIMARY KEY generated always as identity (increment by 1),
    Surname varchar(50) NOT NULL,
	MiddleName varchar(64),
	Name varchar(64) NOT NULL
);

CREATE TABLE ListOfStudentsSubjects
(
    Id serial PRIMARY KEY,
    StudentId int NOT NULL REFERENCES Students (Id),
    SubjectId   int NOT NULL REFERENCES Subjects (Id),
    UNIQUE (StudentId, SubjectId)
);
CREATE TABLE ListOfTeachersSubjects
(
    Id serial PRIMARY KEY,
    TeacherId int NOT NULL REFERENCES Teachers (Id),
    SubjectId   int NOT NULL REFERENCES Subjects (Id),
    UNIQUE (TeacherId, SubjectId)
);

CREATE TABLE IndividualRatingBySubjects
(
    Id int NOT NULL PRIMARY KEY REFERENCES ListOfStudentsSubjects (Id),
    TypeRatingId int NOT NULL REFERENCES TypeRating (Id),
    UNIQUE (Id, TypeRatingId)
);

CREATE TABLE GeneralEvaluation
(
    Id int NOT NULL PRIMARY KEY REFERENCES ListOfStudentsSubjects (Id),
	FirstSemester int REFERENCES TypeRating (Id),
	SecondSemester int REFERENCES TypeRating (Id),
    UpdateDate Date NOT NULL
);