CLASS zcl_pizza_nbg_pepp DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zcl_factory_pizzeria_nbg.

  PUBLIC SECTION.

    INTERFACES z_factory_pizzeria_pizza .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_pizza_nbg_pepp IMPLEMENTATION.
  METHOD z_factory_pizzeria_pizza~pizza_zubereiten.
    r_pizza_type = 'Pepperoni scharf mit extra Zwiebel'.
  ENDMETHOD.

ENDCLASS.
