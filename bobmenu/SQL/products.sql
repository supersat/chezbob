create table products
(
  barcode varchar   not null               ,
  name varchar      not null               ,
  price float       not null               ,
  stock int	    not null		   ,

  primary key (barcode),
  unique (barcode),
  unique (name)
);
