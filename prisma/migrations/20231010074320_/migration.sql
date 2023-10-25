/*
  Warnings:

  - You are about to drop the column `Post_id` on the `postmeta` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `post_tag` DROP FOREIGN KEY `Post_tag_Post_id_foreign`;

-- DropForeignKey
ALTER TABLE `postmeta` DROP FOREIGN KEY `PostMeta_Post_id_foreign`;

-- AlterTable
ALTER TABLE `postmeta` DROP COLUMN `Post_id`,
    MODIFY `key` VARCHAR(50) NULL;
