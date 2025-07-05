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
* **Order** - objekt [Transakce ve formátu GA4](https://developers.google.com/analytics/devguides/collection/ga4/set-up-ecommerce) (nebo Universal Analytics - `ecommerce.purchase`).
* **Order Id** - unikátní ID dané objednávky
* **Currency** - třímístný kód měny podle ISO 4217. Např. CZK, EUR, USD
* **Products** - pole produktů (objekt). Očekává se, že každý produkt bude mít atributy `id` (nebo `item_id`), `name` (nebo `item_name`), `price` a `quantity`.
* **Additional Items** (volitelné) - do pole lze zadat další položky, které mají vliv na celkovou cenu objednávky. Např. doprava, platba, vouchery nebo slevy.

Pokud je vložen objekt transakce, načte se z něj aktumaticky co nejvíce dat - ID objednávky, celková cena, produkty, additional items.

### Příklady
1. Načtení z proměnných
![Konfigurace GTM šablony pro Heureka konverzní kód](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-purchase-rows.png)

2. Využití objektu Transakce
Data jsou [ve formátu ve formátu purchase pro GA4](https://developers.google.com/analytics/devguides/collection/ga4/set-up-ecommerce)
![Konfigurace GTM šablony pro Heureka konverzní kód - objekt](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-purchase-object.png)

3. Zadání doplňujících nákladů
![Konfigurace GTM šablony pro Heureka konverzní kód - doplňující náklady](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-purchase-additiona-items.png)

## Souhlas
Šablona nekontruluje stav souhlasu.
Heureka [v dokumentaci](https://sluzby.heureka.cz/napoveda/mereni-konverzi/) uvádí, že by kódy měly být spouštěny bez souhlasu - řídí se souhlasem uděleným na webu Heureka. Toto řešení ale konzultujte s Vašimi právníky, za jeho správnost nejsem zodpovědný.

# Ostatní

## Zřeknutí se zodpovědnosti
Šablonu vyvíjím ve svém volném čase, aby Vám ušetřila čas a práci. Za její využití či případné škody vzniklé jejím používáním nejsem zodpovědný.
Šablona stahuje skripty třetí strany (Heureka.cz), a to dle dokumentace, kterou Heureka zveřejňuje. Za případné nedostatky z hlediska GDPR nejsem zodpovědný.

## Konzultace
Máte-li problémy s nasazením šablony, [můžete se na mne obrátit](https://www.sabatka.net/kontakt) v rámci placené konzultace.
