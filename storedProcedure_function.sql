USE company;

-- delimiter 
Delimiter --
create procedure FM(In fid int)
begin
	select * from facultymembers where faculty_id=fid;
end -- 
Delimiter ;

call FM (2);


-- function 
Delimiter --
create function square(x int)
returns int 
deterministic
begin
	return x*x;
end -- 
Delimiter ;

select square(2);

-- cube 
Delimiter --
create function cube1(x int)
returns int 
deterministic
begin
	return x*x;
end -- 
Delimiter ;

select cube1(8);

delimiter -- 
create function sum1(x int,y int)
returns int
deterministic
begin 
return x+y ;
end -- 
delimiter ; 

select sum1(2,2);

delimiter ,, 
create function minus( x int, y int)
returns int 
deterministic
begin 
return x-y; 
end ,,
delimiter ; 

select minus(2,2);


delimiter ,, 
create function ( x int, y int)
returns int 
deterministic
begin 
return x-y; 
end ,,
delimiter ; 

select minus(2,2);

delimiter ,, 
create function divide( x int, y int)
returns int 
deterministic
begin 
return x%y; 
end ,,
delimiter ; 

select divide(2,2);

delimiter ,, 
create function avg( x int, y int)
returns int 
deterministic
begin 
return (x+y/2); 
end ,,
delimiter ; 

select avg(3,2);
--  calculating bmi 
delimiter ,, 
create function bmi( height float, weight float)
returns float 
deterministic
begin 
return weight/height; 
end ,,
delimiter ; 

select bmi(50,5.4);