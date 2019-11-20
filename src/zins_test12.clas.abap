CLASS zins_test12 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zins_test12 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    Data: lt_data type TABLE of ztest12.

     append INITIAL LINE TO lt_data ASSIGNING FIELD-SYMBOL(<fs_data>).
     <fs_data>-client = '800'.
     <fs_data>-name   = 'Raghav'.
     <fs_data>-class   = '2'.

     append INITIAL LINE TO lt_data ASSIGNING <fs_data>.
     <fs_data>-client = '800'.
     <fs_data>-name   = 'Sahil'.
     <fs_data>-class   = '1'.

     append INITIAL LINE TO lt_data ASSIGNING <fs_data>.
     <fs_data>-client = '800'.
     <fs_data>-name   = 'Madhav'.
     <fs_data>-class   = '5'.

      MODIFY ZTEST12 from table @lt_data.

     out->write('Data inserted now !').
  ENDMETHOD.

ENDCLASS.
