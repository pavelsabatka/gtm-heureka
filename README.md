# Měření konverzí pro Heureka
Šablona pro Google Tag Manager pro měření konverzí Heureka.
Měří konverze dle
* [Heureka.cz](https://sluzby.heureka.cz/napoveda/mereni-konverzi/)
* [Heureka.sk](https://sluzby.heureka.sk/napoveda/mereni-konverzi/)


## Nastavení
V šabloně je třeba nastavit
* **Key** - klíč pro měření eshopu. Získáte ho v administraci Heureka.
* **Order Id** (volitelně) - unikátní ID dané objednávky
* **Products** (volitelně) - pole produktů (objekt). Očekává se, že každý produkt bude mít atributy `name`, `price` a `quantity`.

![Konfigurace GTM šablony pro Heureka](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/template-config-2.png)

## Souhlas
Šablona sama kontroluje, jestli je udělen souhlas typu `ad_storage`.
Pokud souhlas udělen není, data se nikam neodesílají. Šablona pak sama zajistí spuštění konverzního kódu v případě, že člověk udělí souhlas na děkovací stránce.
