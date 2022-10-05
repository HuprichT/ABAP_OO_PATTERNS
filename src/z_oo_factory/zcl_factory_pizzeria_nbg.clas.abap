CLASS zcl_factory_pizzeria_nbg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_factory_pizzeria .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_factory_pizzeria_nbg IMPLEMENTATION.

  METHOD zif_factory_pizzeria~create_pizza.
    "With importing Paramter we can e.g. select real classname from a customizing table, here we make switch statement

  CASE iv_clname.
  WHEN 'PEPPERONI'.
    ro_pizza = NEW zcl_pizza_nbg_pepp( ).
  WHEN 'MARGHERITA'.
    ro_pizza = NEW zcl_pizza_nbg_margh( ).
  ENDCASE.
  ENDMETHOD.

ENDCLASS.
