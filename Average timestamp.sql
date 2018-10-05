


250 threats

cada paquete una vez un segundo


screen -X -S check como matar varias sesiones

prueba con jmeter ( open source) funciona con java

20 conexiones de el usuario app_engine

fallaron 23 transacciones de 1500

Calcular avg timestamp



SELECT time1,
           time2,
          substr((time2-time1),instr((time2-time1),' ')+7,2)                 seconds,
           substr((time2-time1),instr((time2-time1),' ')+4,2)                 minutes,
           substr((time2-time1),instr((time2-time1),' ')+1,2)                 hours,
           trunc(to_number(substr((time2-time1),1,instr(time2-time1,' '))))   days,
           trunc(to_number(substr((time2-time1),1,instr(time2-time1,' ')))/7) weeks
     FROM

	 
	 
	 
	  SELECT 
		avg( 
			to_number( 
				to_char(
					(res.DATE_RETURNED - req.DATE_RECEIVED) ,'MMDDYYHHMI') ) ) 
	FROM MESSAGE.MESSAGE_RESPONSE res
	INNER JOIN	MESSAGE.MESSAGE_REQUEST req ON req.ID = res.MESSAGE_REQUEST_ID
	WHERE req.DATE_RECEIVED > 
		(SELECT TO_TIMESTAMP ('18-Sep-18 06:06:00.000000', 'DD-Mon-RR HH24:MI:SS.FF')
   FROM DUAL)
FETCH FIRST 50 ROWS ONLY;


insert into tavg (select sysdate -10, sysdate from dual);


insert
into
tavg values (
        TO_TIMESTAMP ('18-Sep-18 06:06:00.100000', 'DD-Mon-RR HH24:MI:SS.FF'),
        TO_TIMESTAMP ('18-Sep-18 06:06:00.500000', 'DD-Mon-RR HH24:MI:SS.FF')
        )
/


SQL> ed
Wrote file afiedt.buf

  select avg(to_number(
      to_char(idt,'MMDDYYHHMISS.FF'))- to_number(
      to_char(edt,'MMDDYYHHMISS.FF'))) from tavg
SQL> r
      select avg(to_number(
      to_char(idt,'MMDDYYHHMISS.FF'))- to_number(
      to_char(edt,'MMDDYYHHMISS.FF'))) from tavg

AVG(TO_NUMBER(TO_CHAR(IDT,'MMDDYYHHMISS.FF'))-TO_NUMBER(TO_CHAR(EDT,'MMDDYYHHMISS.FF')))
----------------------------------------------------------------------------------------
                                                                                     -.4



																					 
																					 
																					 
																					
																					SELECT
        avg(
                to_number(to_char(res.DATE_RETURNED,'MMDDYYHHMISS.FF'))  -
                to_number(to_char(req.DATE_RECEIVED,'MMDDYYHHMISS.FF'))
                        )
FROM MESSAGE.MESSAGE_RESPONSE res
INNER JOIN MESSAGE.MESSAGE_REQUEST req ON req.ID = res.MESSAGE_REQUEST_ID
WHERE req.DATE_RECEIVED > (SELECT TO_TIMESTAMP ('18-Sep-18 06:06:00.000000', 'DD-Mon-RR HH24:MI:SS.FF')
   FROM DUAL)
-- FETCH FIRST 50 ROWS ONLY
/







sqlplus username @my_script << password_file

