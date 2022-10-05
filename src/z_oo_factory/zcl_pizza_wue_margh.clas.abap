CLASS zcl_pizza_wue_margh DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zcl_factory_pizzeria_wue.

  PUBLIC SECTION.

    INTERFACES z_factory_pizzeria_pizza .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_pizza_wue_margh IMPLEMENTATION.
  METHOD z_factory_pizzeria_pizza~pizza_zubereiten.
    r_pizza_type = 'Tomatensauce nach Omas Art plus Büffelmozarella'.
  ENDMETHOD.

ENDCLASS.
