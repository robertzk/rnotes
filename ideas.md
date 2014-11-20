Ideas
=======

* A real-time database refactoring tool based on cohomological complexes
 - A sequence of databases (each a collection of tables) with atomic and 
   "nice" operations on each database transforming the former into the latter
   using a Log data structure for real-time events.
 - table_transformations, multi_table_transformations, and ability to
   make these "closures" by requesting external APIs for input: for example,
   Rails app could get list of loan IDs and provide additional information necessary
   to structure the data.
 - End result would be a 100% sane database derived in real-time from a
   shitty database. Would require chronological rules that understand the historical
   progression of the database.
* Vignettes for plyr 
* A comprehensive error / logging framework for R, based on plyr::failwith
* A real-time stream of github commits from important authors and
  academic authors (through their websites or arxiv)

