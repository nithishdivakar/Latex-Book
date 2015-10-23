# Latex-Book

USeful for creating a large book
 Each chapter is organised as folders.
 Each chapter can be edited in isolation and compiled and viewed in isolation.
 
 
Creating a new Chapter
======================
 Just run the python file <code>makeChapter.py</code>.<br> It takes 2 arguments a number and a name(without space).
 The chapters are named as <code>Chap&lt;number&rt;-&lt;name&rt; </code>. This format allows the folders to remain sorted. Inside each chapter folder
 A tex file with the same name is created. All the tex code that make the chapter goes into this file. The images folder inside the chapter can be used to put all images required for this chapter.
 
Compiling with latex
====================
 Use the Makefile for this purpose.<br>
 
 The default rule compiles any modified chapter.<br>
 <code>make book</code> Compiles the main book file.<br>

