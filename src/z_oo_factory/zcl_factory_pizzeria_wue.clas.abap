CLASS zcl_factory_pizzeria_wue DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_factory_pizzeria .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_factory_pizzeria_wue IMPLEMENTATION.
  METHOD zif_factory_pizzeria~create_pizza.
    "With importing Paramter we can e.g. select real classname from a customizing table, here we make switch statement

  CASE iv_clname.
  WHEN 'PEPPERONI'.
    ro_pizza = NEW zcl_pizza_wue_pepp( ).
  WHEN 'MARGHERITA'.
    ro_pizza = NEW zcl_pizza_wue_margh( ).
  ENDCASE.
  ENDMETHOD.


ENDCLASS.
