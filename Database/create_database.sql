CREATE TABLE `businesses` (
  `BusinessId` char(39) NOT NULL,
  `BusinessName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BusinessId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `humanroles` (
  `HumanId` char(39) NOT NULL,
  `RoleId` varchar(45) NOT NULL,
  PRIMARY KEY (`HumanId`,`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `humans` (
  `HumanId` char(39) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `MiddleName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `StartYear` int DEFAULT NULL,
  `EndYear` int DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`HumanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `humansaka` (
  `AKAHumanId` char(39) NOT NULL,
  `HumanId` char(39) NOT NULL,
  `AKAFirstName` varchar(45) DEFAULT NULL,
  `AKAMiddleName` varchar(45) DEFAULT NULL,
  `AKALastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AKAHumanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `locations` (
  `LocationId` char(39) NOT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  PRIMARY KEY (`LocationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `notary` (
  `HumanId` char(39) NOT NULL,
  `Language` varchar(45) DEFAULT NULL,
  `StartYear` int DEFAULT NULL,
  `EndYear` int DEFAULT NULL,
  PRIMARY KEY (`HumanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `partners` (
  `HumanId` char(39) NOT NULL,
  `PartnerHumanId` char(39) DEFAULT NULL,
  PRIMARY KEY (`HumanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `roles` (
  `RoleId` char(39) NOT NULL,
  `Role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `transactions` (
  `TransactionId` char(39) NOT NULL,
  `TransactionDate` datetime DEFAULT NULL,
  `FromHumanId` char(39) DEFAULT NULL,
  `ToHumanId` char(39) DEFAULT NULL,
  `TransactionType` varchar(45) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `Act` int DEFAULT NULL,
  `Page` int DEFAULT NULL,
  `NotaryHumanId` char(39) DEFAULT NULL,
  `Volume` int DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `TranscriberId` char(39) DEFAULT NULL,
  PRIMARY KEY (`TransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `UserId` char(39) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `School` varchar(45) DEFAULT NULL,
  `SemesterYear` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `UserType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usersessions` (
  `SessionId` char(39) DEFAULT NULL,
  `UserId` char(39) NOT NULL,
  `DateAdded` datetime DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
