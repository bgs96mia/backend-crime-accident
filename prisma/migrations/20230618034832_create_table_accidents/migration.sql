-- CreateTable
CREATE TABLE `accidents`
(
    `id`           INTEGER      NOT NULL AUTO_INCREMENT,
    `date`         DATETIME(3)  NOT NULL,
    `location`     VARCHAR(255) NOT NULL,
    `description`  TEXT         NOT NULL,
    `fatalities`   INTEGER      NOT NULL,
    `injured`      INTEGER      NOT NULL,
    `vehicle_type` VARCHAR(100) NOT NULL,
    `username`     VARCHAR(100) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci
  ENGINE InnoDb;

-- AddForeignKey
ALTER TABLE `accidents`
    ADD CONSTRAINT `accidents_username_fkey` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE;
