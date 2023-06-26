-- CreateTable
CREATE TABLE `crimes`
(
    `id`            INTEGER      NOT NULL AUTO_INCREMENT,
    `type_crime`    VARCHAR(255) NOT NULL,
    `location`      VARCHAR(100) NOT NULL,
    `username`      VARCHAR(100) NOT NULL,
    `incident_date` DATETIME(3)  NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci
  ENGINE InnoDB;

-- AddForeignKey
ALTER TABLE `crimes`
    ADD CONSTRAINT `crimes_username_fkey` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE;
