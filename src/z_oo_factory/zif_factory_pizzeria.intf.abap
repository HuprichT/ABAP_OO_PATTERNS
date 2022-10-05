interface ZIF_FACTORY_PIZZERIA
  public .

METHODS:
create_pizza
IMPORTING iv_clname TYPE string
RETURNING VALUE(ro_pizza) TYPE REF TO Z_FACTORY_PIZZERIA_PIZZA.

endinterface.
