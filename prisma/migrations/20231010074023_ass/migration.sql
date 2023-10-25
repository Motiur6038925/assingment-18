/*
  Warnings:

  - A unique constraint covering the columns `[content]` on the table `PostMeta` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `title` to the `PostMeta` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `postmeta` ADD COLUMN `title` VARCHAR(100) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `PostMeta_content_key` ON `PostMeta`(`content`);
