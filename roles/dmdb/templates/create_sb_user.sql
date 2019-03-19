/* The tablespace filename should be within single quotes */

create tablespace DM7_DEFAULT_TABLESPACE_NAME datafile '{{dm7_dmdbms_path}}/data/DAMENG/DM7_DEFAULT_TABLESPACE_NAME.DBF' size DM7_DEFAULT_TABLESPACE_SIZE;
create tablespace {{dmudb_connection_user}} datafile '{{dm7_dmdbms_path}}/data/DAMENG/{{dmudb_connection_user}}.DBF' size DM7_DEFAULT_TABLESPACE_SIZE;

create user DM7_DEFAULT_USER identified by DM7_DEFAULT_PASSWD default tablespace DM7_DEFAULT_TABLESPACE_NAME;
create user {{dmudb_connection_user}} identified by {{dmudb_connection_password}} default tablespace {{dmudb_connector_name}};

grant CREATE LINK, CREATE VIEW, CREATE PROCEDURE, CREATE PUBLIC SYNONYM, CREATE SYNONYM, CREATE ROLE, CREATE SEQUENCE, CREATE TABLE, CREATE TRIGGER to DM7_DEFAULT_USER;
grant CREATE LINK, CREATE VIEW, CREATE PROCEDURE, CREATE PUBLIC SYNONYM, CREATE SYNONYM, CREATE ROLE, CREATE SEQUENCE, CREATE TABLE, CREATE TRIGGER to {{dmudb_connection_user}};

exit
