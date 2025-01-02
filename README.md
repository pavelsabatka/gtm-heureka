# Měření konverzí pro Heureka

[CZ](https://github.com/pavelsabatka/gtm-heureka/blob/master/README.md) | [EN](https://github.com/pavelsabatka/gtm-heureka/blob/master/README-EN.md) | [Changelog](https://github.com/pavelsabatka/gtm-heureka/blob/master/CHANGELOG.md)

Šablona pro Google Tag Manager pro měření konverzí Heureka.
Měří konverze dle
* [Heureka.cz](https://sluzby.heureka.cz/napoveda/mereni-konverzi/)
* [Heureka.sk](https://sluzby.heureka.sk/napoveda/mereni-konverzi/)


# Nastavení
Pro správné měření je třeba implementovat 2 kódy:
1. kód na stránku detailu produktu
2. konverzní kód děkovací stránku

V obou kódech je třeba správně nastavit zemi, ve které máte účet na Heureka.

## Detail produktu
Pro nastavení stačí pouze nastavit zemi a typ kódu jako "Item detail".

![Konfigurace GTM šablony pro Heureka detail produktu](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-item-detail.png)

## Konverzní kód
V šabloně je třeba nastavit
* **Key** - klíč pro měření eshopu. Získáte ho v administraci Heureka.
* **Order Id** (povinné) - unikátní ID dané objednávky
* **Currency** (povinné) - třímístný kód měny podle ISO 4217. Např. CZK, EUR, USD
* **Products** (povinné) - pole produktů (objekt). Očekává se, že každý produkt bude mít atributy `id` (nebo `item_id`), `name` (nebo `item_name`), `price` a `quantity`.

![Konfigurace GTM šablony pro Heureka konverzní kód](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-purchase.png)

## Souhlas
Šablona nekontruluje stav souhlasu.
Heureka [v dokumentaci](https://sluzby.heureka.cz/napoveda/mereni-konverzi/) uvádí, že by kódy měly být spouštěny bez souhlasu - řídí se souhlasem uděleným na webu Heureka. Toto řešení ale konzultujte s Vašimi právníky, za jeho správnost nejsem zodpovědný.