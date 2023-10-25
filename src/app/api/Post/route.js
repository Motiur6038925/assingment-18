import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

export async function GET(req, res) {
  BigInt.prototype.toJSON = function () {
    return this.toString();
  };
  // ! Single Insert Data
  // try {
  //   const prisma = new PrismaClient();

  //   let result = await prisma.post.create({
  //     data: {
  //       title: "NextJs",
  //       summary: "It is React Fremwork",
  //     },
  //   });

  //   return NextResponse.json({
  //     status: "Success",
  //     result: { ...result, id: result.id.toString() },
  //   });
  // } catch (err) {
  //   return NextResponse.json({ status: "Fail", result: err.toString() });
  // }

  // !  Insert Many Data
  // try {
  //   const prisma = new PrismaClient();

  //   const result = await prisma.post.createMany({
  //     data: [
  //       {
  //         title: "NextJs13",
  //         summary: "It is React Fremwork",
  //       },
  //       {
  //         title: "ReactJs",
  //         summary: "It is Js Fremwork",
  //       },
  //       {
  //         title: "VueJs",
  //         summary: "It is JavaScript Fremwork",
  //       },
  //       {
  //         title: "NuxtJs",
  //         summary: "It is Vue Fremwork",
  //       },
  //       // Add more user data objects here if needed
  //     ],
  //     skipDuplicates: true, // Skip duplicates
  //   });
  //   console.log(result);
  //   return NextResponse.json({
  //     status: "Success",
  //     result: result,
  //   });
  // } catch (err) {
  //   return NextResponse.json({ status: "Fail", result: err.toString() });
  // }

  // !  Read All Data
  // try {
  //   const prisma = new PrismaClient();
  //   let result = await prisma.post.findMany();

  //   return NextResponse.json({ status: "Success", result: result });
  // } catch (err) {
  //   return NextResponse.json({ status: "Fail", result: err.toString() });
  // }

  //!  Read Single Data
  // try {
  //   const prisma = new PrismaClient();

  //   let result = await prisma.post.findUnique({
  //     // By unique identifier
  //     where: {
  //       summary: "It is JavaScript Fremwork",
  //     },
  //   });
  //   return NextResponse.json({ status: "Success", result: result });
  // } catch (err) {
  //   return NextResponse.json({ status: "Fail", result: err.toString() });
  // }

  // !  Delete Single Data by contains
  // try {
  //   const prisma = new PrismaClient();

  //   let result = await prisma.post.delete({
  //     where: { summary: "It is JavaScript Fremwork" },
  //   });
  //   return NextResponse.json({ status: "Success", result: result });
  // } catch (err) {
  //   return NextResponse.json({ status: "Fail", result: err.toString() });
  // }

  // !  Update Single Data by contains
  // try {
  //   const prisma = new PrismaClient();

  //   let result = await prisma.post.update({
  //     where: { summary: "It is Js Fremwork" },
  //     data: {
  //       title: "AstroJs",
  //     },
  //   });
  //   return NextResponse.json({ status: "Success", result: result });
  // } catch (err) {
  //   return NextResponse.json({ status: "Fail", result: err.toString() });
  // }
}
