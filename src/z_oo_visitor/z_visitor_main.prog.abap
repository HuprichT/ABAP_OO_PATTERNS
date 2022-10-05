*&---------------------------------------------------------------------*
*& Report Z_VISITOR_MAIN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_VISITOR_MAIN.
CLASS lcl_main DEFINITION DEFERRED.
INTERFACE visitor.
METHODS:
visit_make_sth
IMPORTING
i_cl_to_be_visited TYPE REF TO lcl_main
RETURNING VALUE(result) TYPE string.
ENDINTERFACE.

INTERFACE base_machine.
  METHODS: accept
  IMPORTING
      io_to_visit TYPE REF TO visitor
  RAISING cx_static_check.

ENDINTERFACE.

CLASS lcl_main DEFINITION.
PUBLIC SECTION.
INTERFACES base_machine.
ALIASES: accept FOR base_machine~accept.
METHODS:
             get_mv_string RETURNING value(r_result) TYPE string,
             set_mv_string IMPORTING io_mv_string TYPE string.

PRIVATE SECTION.
  DATA: mv_string TYPE string.
ENDCLASS.

CLASS lcl_to_visit DEFINITION.
PUBLIC SECTION.
INTERFACES: visitor.
METHODS:
receive_data.
ENDCLASS.

CLASS lcl_main IMPLEMENTATION.

  METHOD base_machine~accept.

    mv_string = io_to_visit->visit_make_sth( i_cl_to_be_visited = me ).

  ENDMETHOD.

  METHOD get_mv_string.
    r_result = me->mv_string.
  ENDMETHOD.

  METHOD set_mv_string.
    me->mv_string = io_mv_string.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_to_visit IMPLEMENTATION.

  METHOD receive_data.

  ENDMETHOD.

  METHOD visitor~visit_make_sth.
    i_cl_to_be_visited->set_mv_string( io_mv_string = 'Das ist das Ergebnis des Besuchers' ).
    result = i_cl_to_be_visited->get_mv_string( ).
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
DATA(obj) = NEW lcl_main( ).
DATA(class_to_visit) = NEW lcl_to_visit( ).

obj->accept( io_to_visit =  class_to_visit ).
*  CATCH cx_static_check.    "

WRITE: / obj->get_mv_string( ).
