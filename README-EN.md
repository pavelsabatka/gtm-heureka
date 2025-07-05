# Měření konverzí pro Heureka

[CZ](https://github.com/pavelsabatka/gtm-heureka/blob/master/README.md) | [EN](https://github.com/pavelsabatka/gtm-heureka/blob/master/README-EN.md) | [HU](https://github.com/pavelsabatka/gtm-arukereso/blob/master/README.md) | [Changelog](https://github.com/pavelsabatka/gtm-heureka/blob/master/CHANGELOG.md)


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
* **Key** - key for measuring the store. You can get it in Heureka administration.
* **Order** - object [Transactions in GA4 format](https://developers.google.com/analytics/devguides/collection/ga4/set-up-ecommerce) (or Universal Analytics - `ecommerce.purchase`).
* **Order Id** - unique ID of the order
* **Currency** - three-digit currency code according to ISO 4217. E.g. CZK, EUR, USD
* **Products** - product field (object). Each product is expected to have attributes `id` (or `item_id`), `name` (or `item_name`), `price` and `quantity`.
* **Additional Items** (optional) - additional items can be entered in the field that affect the total price of the order. For example, shipping, payment, vouchers or discounts.

If a transaction object is inserted, as much data as possible is loaded from it - order ID, total price, products, additional items.

### Examples
1. Retrieve from variables
![Configuring GTM templates for Heureka conversion code](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-purchase-rows.png)

2. Using the Transaction object
Data is [in purchase format for GA4](https://developers.google.com/analytics/devguides/collection/ga4/set-up-ecommerce)
![Configuring GTM template for Heureka conversion code - object](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-purchase-object.png)

3. Entering additional costs
![GTM template configuration for Heureka conversion code - additional costs](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-purchase-additiona-items.png)


### Debugging
In the GTM Debug Mode, find the event where the Heureka measurement tag is triggered. You can then view all passed parameters in the console.
When the data has been sent to Heureka, the `success` status must be given at the end.
![Debugging GTM template for Heureka](https://github.com/pavelsabatka/gtm-heureka/blob/main/img/heureka-debug.png)


## Consent
The template does not handle consent status.
Heureka states [in the documentation](https://sluzby.heureka.cz/napoveda/mereni-konverzi/) that codes should be run without consent - it follows the consent granted on the Heureka site. However, consult your lawyers for this solution, I am not responsible for its correctness.

# Other

## Disclaimers
I develop the template in my spare time to save you time and work. I am not responsible for its use or any damage caused by its use.
The template downloads scripts from a third party (Heureka.cz), according to the documentation published by Heureka.cz. I am not responsible for any shortcomings in terms of GDPR.

## Consultation
If you have problems with deploying the template, you can [contact me](https://www.sabatka.net/kontakt) for a paid consultation.
