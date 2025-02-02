# Měření konverzí pro Heureka

[CZ](https://github.com/pavelsabatka/gtm-heureka/blob/master/README.md) | [EN](https://github.com/pavelsabatka/gtm-heureka/blob/master/README-EN.md) | [Changelog](https://github.com/pavelsabatka/gtm-heureka/blob/master/CHANGELOG.md)


Google Tag Manager template for Heureka conversion tracking.
Measures conversions for
* [Heureka.cz](https://sluzby.heureka.cz/napoveda/mereni-konverzi/)
* [Heureka.sk](https://sluzby.heureka.sk/napoveda/mereni-konverzi/)


# Configuration
For proper measurement you need to implement 2 codes:
1. code on the product detail page
2. conversion code to the thank you page

In both codes you need to correctly set the country where you have your Heureka account.

## Product detail
To set it up, just set the country and code type as "Item detail".

![Configuring GTM template for Heureka product detail code](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-item-detail.png)

## Conversion code
In the template you need to set
* **Key** - the key to measure the eshop. You can get it in Heureka administration.
* **Order Id** (required) - unique ID of the given order
* **Currency** (required) - three-digit currency code according to ISO 4217. E.g. CZK, EUR, USD
* **Products** (required) - product field (object). Each product is expected to have the attributes `id` (or `item_id`), `name` (or `item_name`), `price` and `quantity`.

![Configuring GTM templates for Heureka purchase code](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-purchase.png)

## Consent
The template does not handle consent status.
Heureka states [in the documentation](https://sluzby.heureka.cz/napoveda/mereni-konverzi/) that codes should be run without consent - it follows the consent granted on the Heureka site. However, consult your lawyers for this solution, I am not responsible for its correctness.

# Other

## Disclaimers
I develop the template in my spare time to save you time and work. I am not responsible for its use or any damage caused by its use.
The template downloads scripts from a third party (Heureka.cz), according to the documentation published by Heureka.cz. I am not responsible for any shortcomings in terms of GDPR.

## Consultation
If you have problems with deploying the template, you can [contact me](https://www.sabatka.net/kontakt) for a paid consultation.
