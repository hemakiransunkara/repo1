--
-- File   : HSP-26118_FaultPolicy_Insert.sql
--
-- Note   : Script to be run in  GTWY  schema.
--

set serveroutput on size 1000000
set define off

begin
insert into DHGTWY_Email_RejectedFiles (ID,SOURCE,REJECTEDEMAILINFO) 
values (DHGTWY_Email_RejectedFiles_seq.nextval,'UKLubesPriceListing','ProductionSupport@wfscorp.com;DDevendr@wfscorp.com');
exception
  when others then
    dbms_output.put_line( 'Record exist. This is OK.' );
end;
/
commit;
/