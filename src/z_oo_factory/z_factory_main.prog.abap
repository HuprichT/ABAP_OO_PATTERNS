*&---------------------------------------------------------------------*
*& Report z_factory_main
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_factory_main.


*Factory Methode: Erzeugen eines komplexen Objektes, Aufruf von Implementierung gekapselt
*Abstract Factory: Aufbau mehrerer Produktfamilien
*Beispiel: Pizzen werden an veschiedenen Standorten unterschiedlich hergestellt


START-OF-SELECTION.
DATA: lo_erbauer TYPE REF TO zif_factory_pizzeria,
      konkretes_produkt TYPE REF TO z_factory_pizzeria_pizza .

lo_erbauer = NEW zcl_factory_pizzeria_nbg( ).

konkretes_produkt = lo_erbauer->create_pizza( iv_clname = 'PEPPERONI' ).
WRITE: / konkretes_produkt->pizza_zubereiten( ).

konkretes_produkt = lo_erbauer->create_pizza( iv_clname = 'MARGHERITA' ).
WRITE: / konkretes_produkt->pizza_zubereiten( ).

WRITE: / .
WRITE: / 'Wir fahren nun nach Würzburg um dort Pizzen zu essen'.
WRITE : /.

lo_erbauer = NEW zcl_factory_pizzeria_wue( ).

konkretes_produkt = lo_erbauer->create_pizza( iv_clname = 'PEPPERONI' ).
WRITE: / konkretes_produkt->pizza_zubereiten( ).

konkretes_produkt = lo_erbauer->create_pizza( iv_clname = 'MARGHERITA' ).
WRITE: / konkretes_produkt->pizza_zubereiten( ).
WRITE: /.

**********************************************************************
* Weitere Überlegung:
* Die Entscheidung, welcher Erbauer/Factory verwendert werden soll kann auch in einer Customizing Tabelle gekapselt werden.
* ODER
* Die Entscheidung wird dem Erbauer übertragen, der anhand des Kontexts entscheidet
**********************************************************************
DATA(erbauer_klasse) = 'ZCL_FACTORY_PIZZERIA_NBG'. "SELECT classname FROM Z_CL_TBL WHERE key = key_value.
CREATE OBJECT lo_erbauer TYPE (erbauer_klasse).
Write: /  'Dynamisch erzeugte Erbauer Klasse:'.

konkretes_produkt = lo_erbauer->create_pizza( iv_clname = 'PEPPERONI' ).
WRITE: / konkretes_produkt->pizza_zubereiten( ).
