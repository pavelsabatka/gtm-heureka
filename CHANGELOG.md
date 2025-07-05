# Měření konverzí pro Heureka

[CZ](https://github.com/pavelsabatka/gtm-heureka/blob/master/README.md) | [EN](https://github.com/pavelsabatka/gtm-heureka/blob/master/README-EN.md) | [Changelog](https://github.com/pavelsabatka/gtm-heureka/blob/master/CHANGELOG.md)

# Verze

## 5. 7. 2025

* přidána podpora additional items
* možnost zadat místo jednotlivých parametrů objekt transakce


## 16. 1. 2025

* Requesty nejsou odesílány pokud není zadáno ID konverze. To dělalo problémy při publikování GTM.
* Jako cena objednávky je posílán součet hodnot produktů
* Je-li produkt v objednávce opakovaně, je poslán jako jedna položka (quantity je součet, price jako vážený průměr)


## 2. 1. 2025
Drobné úpravy - přidání logování chyb, celková cena objednávky je počítána z cen produktů

## 2. 11. 2024
Kompletní předělání šablony pro novou verzi konverzního kódu.