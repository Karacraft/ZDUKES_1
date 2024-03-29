CLASS zrap_book_data_d01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zrap_book_data_d01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM zrap_book_d01.
    INSERT zrap_book_d01 FROM (
        SELECT FROM /dmo/booking
        FIELDS
            travel_id         AS travel_id,
            booking_id        AS booking_id,
            booking_date      AS booking_date,
            customer_id       AS customer_id,
            carrier_id        AS carrier_id,
            connection_id     AS connection_id,
            flight_date       AS flight_date,
            flight_price      AS flight_price,
            currency_code     AS currency_code
            WHERE carrier_id > ''
         ORDER BY booking_id
         UP TO 100 ROWS ).

    COMMIT WORK.
    out->write( 'Booking data inserted in table ZRAP_BOOK_D01'  ).

  ENDMETHOD.
ENDCLASS.
