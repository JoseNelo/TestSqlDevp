create or replace PROCEDURE            HISTORY_BULK
	AS
	error NUMERIC;
	BEGIN

		-- VALIDATE NUMBER FORMAT OF CLAIM_ID

		UPDATE   PARAMETERS.HISTORY
		SET      ERROR_CLAIM_ID = 'X'
		WHERE 	PARAMETERS.IS_NUMBER(CLAIM_ID) = 0;





		-- VALIDATE CLAIM_NUMBER NOT NULL

		UPDATE   PARAMETERS.HISTORY
		SET      ERROR_CLAIM_NUMBER = 'X'
		WHERE    CLAIM_NUMBER IS NULL;





		-- VALIDATE SF_REQUEST_ID

		UPDATE   PARAMETERS.HISTORY
		SET      ERROR_SF_REQUEST_ID_FORMAT = 'X'
		WHERE    SF_REQUEST_ID NOT LIKE '%-%';



		-- VALIDATE SF_REQUEST_ID_DUPLICATE (Part A)

		UPDATE PARAMETERS.HISTORY H
		SET    H.ERROR_SF_REQUEST_ID_DUPLICATE = 'X'
		WHERE  h.SF_REQUEST_ID IN (SELECT SF_REQUEST_ID FROM ( SELECT SF_REQUEST_ID, count(1)
		                                                       FROM   PARAMETERS.HISTORY
		                                                       GROUP BY SF_REQUEST_ID
		                                                       HAVING count(1) > 1
															 ));



		-- VALIDATE SF_REQUEST_ID_DUPLICATE (Part B)

		UPDATE PARAMETERS.HISTORY H
		SET    H.ERROR_SF_REQUEST_ID_DUPLICATE = 'X'
		WHERE  h.SF_REQUEST_ID IN ( SELECT RFA.SF_REQUEST_ID || '-' || PRO.SF_PROCEDURE_ID
									FROM TRANSACTIONAL.RFA RFA
									INNER JOIN TRANSACTIONAL.RFA_PROCEDURE PRO ON pro.RFA_ID = rfa.id );



		-- VALIDATE DATE FORMAT OF DATE_OF_INJURY

		UPDATE   PARAMETERS.HISTORY
		SET      ERROR_DATE_OF_INJURY = 'X'
		WHERE    PARAMETERS.IS_DATE(DATE_OF_INJURY, 'YYYYMMDD') = 0;







		-- VALIDATE PROCEDURE_CODE NOT NULL AND EXISTS IN PARAMETERS.PROCEDURE

		UPDATE   PARAMETERS.HISTORY H
		SET      H.ERROR_PROCEDURE_CODE = 'X'
		WHERE    H.ID in ( SELECT      HIS.ID
		                     FROM        PARAMETERS.HISTORY HIS
		                     LEFT JOIN   PARAMETERS."PROCEDURE" PRO ON PRO.CODE = HIS.PROCEDURE_CODE
		                     WHERE       PRO.ID IS NULL );







		-- VALIDATE PROCEDURE_TYPE_CODE NOT NULL AND EXISTS IN PARAMETERS.PROCEDURE_TYPE

		UPDATE   PARAMETERS.HISTORY H
		SET      H.ERROR_PROCEDURE_TYPE_CODE = 'X'
		WHERE    H.ID in ( SELECT      HIS.ID
							 FROM        PARAMETERS.HISTORY HIS
							 LEFT JOIN   PARAMETERS.PROCEDURE_TYPE TY ON TY.CODE = HIS.PROCEDURE_TYPE_CODE
							 WHERE       TY.ID IS NULL );





		-- VALIDATE REQUESTED_QUANTITY NOT NULL AND NUMBER

		UPDATE	PARAMETERS.HISTORY HIS
		SET		ERROR_REQUESTED_QUANTITY = 'X'
		WHERE 	PARAMETERS.IS_NUMBER(HIS.REQUESTED_QUANTITY ) = 0;





		-- VALIDATE DATE FORMAT OF DATE_OF_SERVICE

		UPDATE	PARAMETERS.HISTORY HIS
		SET		ERROR_DATE_OF_SERVICE = 'X'
		WHERE PARAMETERS.IS_DATE(DATE_OF_SERVICE, 'YYYYMMDD') = 0;







		-- VALIDATE DECISION_CODE NOT NULL AND EXISTS IN PARAMETERS.STATUS

		UPDATE	PARAMETERS.HISTORY H
		SET		H.ERROR_DECISION_CODE = 'X'
		WHERE   H.ID in (
							SELECT    HIS.ID
							FROM 	  PARAMETERS.HISTORY HIS
							LEFT JOIN PARAMETERS.STATUS STA ON STA.CODE = HIS.DECISION_CODE
							WHERE     STA.ID IS NULL );





		-- VALIDATE SOURCE_OF_DECISION_ID NOT NULL AND EXISTS IN PARAMETERS.SOURCE_OF_DECISION

		UPDATE	PARAMETERS.HISTORY H
		SET		H.ERROR_SOURCE_OF_DECISION_ID = 'X'
		WHERE   H.ID in (
							SELECT    HIS.ID
							FROM 	  PARAMETERS.HISTORY HIS
							LEFT JOIN PARAMETERS.SOURCE_OF_DECISION SOD ON SOD.CODE = HIS.SOURCE_OF_DECISION_ID
							WHERE SOD.ID IS NULL );





		-- VALIDATE SOURCE_OF_DECISION_ID NOT NULL AND EXISTS IN PARAMETERS.SOURCE_OF_DECISION

		UPDATE	PARAMETERS.HISTORY H
		SET		H.ERROR_DIAGNOSIS_CODES = 'X'
		WHERE   H.ID in (
							SELECT    HIS.ID
							FROM 	  PARAMETERS.HISTORY_DX his
							left JOIN PARAMETERS.DIAGNOSIS dia ON dia.CODE = his.code
							WHERE dia.id IS null );

COMMIT;


		-- WE CHECK IF IT CONTAINS ERRORS

		SELECT count(1)
		into error
		FROM PARAMETERS.HISTORY
		WHERE (ERROR_CLAIM_ID   = 'X'
		OR  ERROR_CLAIM_NUMBER   = 'X'
		OR  ERROR_SF_REQUEST_ID_FORMAT   = 'X'
		OR  ERROR_SF_REQUEST_ID_DUPLICATE   = 'X'
		OR  ERROR_DATE_OF_INJURY   = 'X'
		OR  ERROR_PROCEDURE_CODE   = 'X'
		OR  ERROR_PROCEDURE_TYPE_CODE   = 'X'
		OR  ERROR_REQUESTED_QUANTITY   = 'X'
		OR  ERROR_DATE_OF_SERVICE   = 'X'
		OR  ERROR_DECISION_CODE   = 'X'
		OR  ERROR_SOURCE_OF_DECISION_ID   = 'X'
		OR  ERROR_DIAGNOSIS_CODES   = 'X');


		IF error = 0 THEN
			DBMS_OUTPUT.PUT_LINE('INSERTING DATA');

			-- INSERT INTO TRANSACTIONAL.RFA
			INSERT INTO TRANSACTIONAL.RFA
			(CLAIM_ID, CLAIM_NUMBER, DATE_OF_INJURY, JURISDICTION, SF_REQUEST_ID, USER_REQUEST_ID)
			SELECT DISTINCT
			CLAIM_ID,
			CLAIM_NUMBER,
			TO_DATE(DATE_OF_INJURY, 'YYYYMMDD') AS DATE_OF_INJURY,
			JURISDICTION,
			NVL(SUBSTR(SF_REQUEST_ID, 0, INSTR(SF_REQUEST_ID, '-')-1), '') AS SF_REQUEST_ID,
			USER_REQUEST_ID
			FROM PARAMETERS.HISTORY;





			---------------------------------------------------------------------------------------------------------------------------------------------------------





			-- INSERT INTO RFA_PROCEDURE



			INSERT INTO TRANSACTIONAL.RFA_PROCEDURE
			(RFA_ID, PROCEDURE_ID, REQUESTED_QUANTITY, AUTHORIZED_QUANTITY, DATE_OF_SERVICE, STATUS_ID, SOURCE_OF_DECISION_ID, USER_REQUEST_ID, SF_PROCEDURE_ID)
			SELECT rfa.ID AS RFA_ID,
			pro.id AS PROCEDURE_ID,
			his.REQUESTED_QUANTITY,
			his.AUTHORIZED_QUANTITY,
			TO_DATE(his.DATE_OF_SERVICE, 'YYYYMMDD') AS DATE_OF_SERVICE,
			sta.ID AS STATUS_ID,
			sod.ID AS SOURCE_OF_DECISION_ID,
			his.USER_REQUEST_ID,
			NVL(SUBSTR(his.SF_REQUEST_ID, INSTR(his.SF_REQUEST_ID, '-')+1, 100), '') AS SF_PROCEDURE_ID
			FROM PARAMETERS.HISTORY his
			INNER JOIN TRANSACTIONAL.RFA rfa ON rfa.SF_REQUEST_ID = NVL(SUBSTR(his.SF_REQUEST_ID, 0, INSTR(his.SF_REQUEST_ID, '-')-1), '')
			INNER JOIN PARAMETERS."PROCEDURE" pro ON pro.CODE = his.PROCEDURE_CODE
			INNER JOIN PARAMETERS.PROCEDURE_TYPE ty ON ty.id = pro.PROCEDURE_TYPE_ID AND ty.CODE = his.PROCEDURE_TYPE_CODE
			INNER JOIN PARAMETERS.STATUS sta ON sta.CODE = his.DECISION_CODE AND sta.DELETED = 'F'
			INNER JOIN PARAMETERS.SOURCE_OF_DECISION sod ON sod.CODE = his.SOURCE_OF_DECISION_ID;





			--------------------------------------------------------------------------------------------------------------------------------------------------------



			-- INSERT INTO TRANSACTIONAL.RFA_DIAGNOSIS
			INSERT INTO TRANSACTIONAL.RFA_DIAGNOSIS
			(RFA_ID, DIAGNOSIS_ID, USER_REQUEST_ID)
			SELECT rfa.ID AS rfaId, dia.id AS diaID, his.USER_REQUEST_ID
			FROM PARAMETERS.HISTORY his
			INNER JOIN TRANSACTIONAL.RFA rfa ON rfa.SF_REQUEST_ID = NVL(SUBSTR(his.SF_REQUEST_ID, 0, INSTR(his.SF_REQUEST_ID, '-')-1), '')
			INNER JOIN PARAMETERS."PROCEDURE" pro ON pro.CODE = his.PROCEDURE_CODE
			INNER JOIN PARAMETERS.HISTORY_DX hdx on hdx.ID = his.ID
			INNER JOIN PARAMETERS.DIAGNOSIS dia ON dia.CODE = hdx.CODE;





			-- INSERT INTO RFA_DIAGNOSIS_PROCEDURES



			INSERT INTO TRANSACTIONAL.RFA_DIAGNOSIS_PROCEDURES
			(RFA_PROCEDURE_ID, RFA_DIAGNOSIS_ID, STATUS_ID, USER_REQUEST_ID)
			SELECT rp.id AS RFA_PROCEDURE_ID,
			rd.id AS RFA_DIAGNOSIS_ID,
			sta.ID AS STATUS_ID,
			his.USER_REQUEST_ID
			FROM PARAMETERS.HISTORY his
			INNER JOIN TRANSACTIONAL.RFA rfa ON rfa.SF_REQUEST_ID = NVL(SUBSTR(his.SF_REQUEST_ID, 0, INSTR(his.SF_REQUEST_ID, '-')-1), '')
			INNER JOIN TRANSACTIONAL.RFA_PROCEDURE rp ON rp.RFA_ID = rfa.ID
			INNER JOIN TRANSACTIONAL.RFA_DIAGNOSIS rd ON rd.RFA_ID = rfa.ID
			INNER JOIN PARAMETERS.STATUS sta ON sta.CODE = his.DECISION_CODE AND sta.DELETED = 'F';

			COMMIT;	



		ELSE
			DBMS_OUTPUT.PUT_LINE('WE HAVE FOUND ERRORS, YOU CAN SEE THEM ON THE TABLE PARAMETERS.HISTORY');
		END IF;



END;