CREATE TABLE Flight_route_copy AS SELECT * FROM Flight_route;
DELETE FROM Flight_route_copy

DO $$
 BEGIN
 	FOR counter IN 1..20
		LOOP
			INSERT INTO Flight_route_copy (Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
			 VALUES (counter, counter + random() * 1000, array_to_string(ARRAY(SELECT chr((ascii('B') + round(random() * 25)) :: integer)FROM generate_series(1,3)), ''), array_to_string(ARRAY(SELECT chr((ascii('B') + round(random() * 25)) :: integer)FROM generate_series(1,3)), ''), array_to_string(ARRAY(SELECT chr((ascii('B') + round(random() * 25)) :: integer)FROM generate_series(1,2)), ''));
		END LOOP;
 END;
$$
 
SELECT * FROM Flight_route_copy;