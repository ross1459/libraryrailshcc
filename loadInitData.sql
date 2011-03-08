-- loadInitData.sql a script to load initial data
-- make sure addInsertFuncs.sql is run before this
-- add Author and Book records
insert into author_book_view (first_name,last_name,email,title,isbn)
values ('Andrew','Hunt','andyhunt@pragprogrammers.com',
'The Pragmatic Programmer','999999');
insert into author_book_view (first_name,last_name,email,title,isbn)
values ('Dave','Thomas','davethomas@pragprogrammers.com',
'The Pragmatic Programmer','999999');
insert into author_book_view (first_name,last_name,email,title,isbn)
values ('Andrew','Hunt','andyhunt@pragprogrammers.com',
'Pragmatic Thinking and Learning','999998');
insert into author_book_view (first_name,last_name,email,title,isbn)
values ('Andrew','Hunt','andyhunt@pragprogrammers.com',
'Pragmatic Unit Testing','999997');
insert into author_book_view (first_name,last_name,email,title,isbn)
values ('Dave','Thomas','davethomas@pragprogrammers.com',
'Pragmatic Unit Testing', '999997');
insert into author_book_view (first_name,last_name,email,title,isbn)
values ('Dave','Thomas','davethomas@pragprogrammers.com',
'Agile Web Development with Rails','999996');
insert into author_book_view (first_name,last_name,email,title,isbn)
values ('Sam','Ruby','samruby@pragprogrammers.com',
'Agile Web Development with Rails','999996');
insert into author_book_view (first_name,last_name,email,title,isbn)
values ('David Heinemeier','Hansson','dhh@railsrules.com',
'Agile Web Development with Rails','999996');
