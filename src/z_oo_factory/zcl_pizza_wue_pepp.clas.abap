CLASS zcl_pizza_wue_pepp DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zcl_factory_pizzeria_wue.

  PUBLIC SECTION.

    INTERFACES z_factory_pizzeria_pizza .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_pizza_wue_pepp IMPLEMENTATION.
  METHOD z_factory_pizzeria_pizza~pizza_zubereiten.
    r_pizza_type = 'Milde Pepperoni und dazu on top schwarze Oliven mit Spezialsoße'.
  ENDMETHOD.

ENDCLASS.
