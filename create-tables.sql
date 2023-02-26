connect rene/rene

create table tq84_config_opt (
   nam  varchar2(20),
   id   integer,
   --
   constraint tq84_config_pk primary key (id)
)
-- flashback archive tq84_fba -- Commented because using 'application'
;

create table tq84_config_val (
   val      number(7,2)   not null,
   opt_id                 not null,
   --
   constraint tq84_config_val_pk primary key (opt_id),
   constraint tq84_config_val_fk foreign key (opt_id) references tq84_config_opt
)
-- flashback archive tq84_fba -- Commented because using 'application'
;
