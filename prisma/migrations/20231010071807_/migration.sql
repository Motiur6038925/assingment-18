/*
  Warnings:

  - A unique constraint covering the columns `[Category_id]` on the table `Post_category` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `Post_category_Category_id_key` ON `Post_category`(`Category_id`);
