/*
  Warnings:

  - Added the required column `name_crime` to the `crimes` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `crimes` ADD COLUMN `name_crime` VARCHAR(255) NOT NULL;
