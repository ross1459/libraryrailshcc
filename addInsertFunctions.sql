-- addInsertFuncs.sql - this script will make it easier to add Authors and Books
-- make sure that createTables.sql is run before this
-- create plpgsql language
drop language if exists plpgsql cascade;
create language plpgsql;
-- create function for adding Author and returning id
create or replace function insertAuthor(_fname text, _lname text,
_email text)
returns integer as
$func$
begin
execute 'insert into authors (first_name,last_name,email)' ||
'values (' || quote_literal(_fname) || ',' ||
quote_literal(_lname) || ',' || quote_literal(_email) || ')';
return currval('author_id_seq');
end;
$func$
language 'plpgsql';
-- create function for adding Book and returning id
create or replace function insertBook(_title text, _isbn text)
returns integer as
$func$
begin
execute 'insert into books (title, isbn, created_at, updated_at)
values ('
|| quote_literal(_title) || ',' || quote_literal(_isbn) || ',' ||
quote_literal(now()) || ',' || quote_literal(now()) || ')';
return currval('book_id_seq');
end;
$func$
language 'plpgsql';
-- create function for inserting into Authors and Books
create or replace function insertAuthorBook(_fname text, _lname text,
_email text, _title text, _isbn text)
returns boolean as
$func$
declare
sql1 text;
sql2 text;
begin
sql1 := 'coalesce((select id from authors where email = '
|| quote_literal(_email) || '),insertAuthor('
|| quote_literal(_fname) || ',' || quote_literal(_lname) ||
',' || quote_literal(_email) || '))';
sql2 := 'coalesce((select id from books where isbn = '
|| quote_literal(_isbn) || '),insertBook(' ||
quote_literal(_title) || ',' || quote_literal(_isbn) || '))';
execute 'insert into author_book (author_id, book_id) values ('
|| sql1 || ',' || sql2 || ')';
return 't';
end;
$func$
language 'plpgsql';
-- create rule
create or replace rule auth_book_ins as on insert to author_book_view
do instead select insertAuthorBook(new.first_name, new.last_name,
new.email,new.title,new.isbn);
