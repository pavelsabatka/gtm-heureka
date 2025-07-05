___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Heureka",
  "categories": [
    "ANALYTICS",
    "ADVERTISING"
  ],
  "description": "Conversion code for Heureka CZ or SK\nhttps://sluzby.heureka.cz/napoveda/mereni-konverzi/",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAABhWlDQ1BJQ0MgcHJvZmlsZQAAKJF9kT1Iw0AcxV9bS0VaHCwifkCG6mQXFXEsVSyChdJWaNXB5NIvaNKQpLg4Cq4FBz8Wqw4uzro6uAqC4AeIs4OToouU+L+k0CLGg+N+vLv3uHsHeJtVphg9MUBRTT2diAu5/KoQeIUfYwhhECMiM7RkZjEL1/F1Dw9f76I8y/3cnyMkFwwGeATiGNN0k3iDeHbT1DjvE4dZWZSJz4kndbog8SPXJYffOJds9vLMsJ5NzxOHiYVSF0tdzMq6QjxDHJEVlfK9OYdlzluclWqdte/JXxgsqCsZrtMcRQJLSCIFARLqqKAKE1FaVVIMpGk/7uIftv0pcknkqoCRYwE1KBBtP/gf/O7WKE5POUnBOOB/sayPcSCwC7QalvV9bFmtE8D3DFypHX+tCcx9kt7oaJEjoH8buLjuaNIecLkDDD1poi7ako+mt1gE3s/om/LAwC3Qt+b01t7H6QOQpa6Wb4CDQ2CiRNnrLu/u7e7t3zPt/n4ArdJyvvLTjy0AAAAGYktHRAAAAAAAAPlDu38AAAAJcEhZcwAALiMAAC4jAXilP3YAAAAHdElNRQfoBR0NGSdqgrxdAAAAGXRFWHRDb21tZW50AENyZWF0ZWQgd2l0aCBHSU1QV4EOFwAAAWRJREFUeNrt279Kw1AUBvDvXNM0oBUpXRRFB11cnVQcfIAi4jOI7+Lm5AMILi4ODi7i4uJUFBwqCBYdBCGgJZC/Hp+gLRgKNef71kAIP86599wLEVVVGI6D8RCAAMbjlX1BlgNHx/HA5/ubU2jv1lgBBCAAAQhAAAIQgAAEIAABCECACYqUvRMcdRwum2lf0ZxxaDaA1UWHlQWHtWUH35fJuA8Yd6JUEIWKtxB46BUACswGir3tGnY2PHiewRb4jgVnNzlOzhN89dXuGvD0rji9SJCmahMAAJ4/gOu7zPYucHVfoB+pXYBcBY/dwvYc0O39TOY2WPZaPE4Un6Hi8jZD53VwmXdeKloBQV2wNO9weOCj1ZCh80KaVbgFgrpga3349Jf8YTv8V2tAa86NHMsrDeDG8LU8DhOAAAQgAAEIQAACEIAABCAAAQhAAAIQgAAEIAABCGAnwh8n2QIEIAABCGA3vyVvX1v52HHMAAAAAElFTkSuQmCC",
    "displayName": "pavelsabatka",
    "id": "github.com_pavelsabatka"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "code_type",
    "displayName": "Code Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "thank_you",
        "displayValue": "Purchase"
      },
      {
        "value": "product_detail",
        "displayValue": "Item detail"
      }
    ],
    "simpleValueType": true,
    "alwaysInSummary": false,
    "defaultValue": "purchase",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "country",
    "displayName": "Heureka Account Country",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "cz",
        "displayValue": "cz"
      },
      {
        "value": "sk",
        "displayValue": "sk"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "REGEX",
        "args": [
          "^(cz|sk)$"
        ]
      }
    ],
    "defaultValue": "cz",
    "alwaysInSummary": true,
    "help": "Country code, expected values are cz or sk"
  },
  {
    "type": "TEXT",
    "name": "id",
    "displayName": "Key",
    "simpleValueType": true,
    "canBeEmptyString": false,
    "alwaysInSummary": true,
    "clearOnCopy": true,
    "help": "Conversion code key from Heureka administration",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "order",
    "displayName": "Transaction (object in GA4 format)",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ],
    "help": "Object of Transaction in GA4 format. If submitted, ID, currency and products will be loaded automatically.",
    "notSetText": "Not set",
    "alwaysInSummary": true
  },
  {
    "type": "SELECT",
    "name": "order_id",
    "displayName": "Order ID",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true,
    "alwaysInSummary": false,
    "notSetText": "Not Set",
    "help": "Unique ID of given order. If Transaction object is set, value is loaded automatically.",
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "order_revenue",
    "displayName": "Order Revenue",
    "simpleValueType": true,
    "alwaysInSummary": false,
    "clearOnCopy": false,
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ],
    "help": "Revenue og given order; currency is set in separate field"
  },
  {
    "type": "TEXT",
    "name": "currency_code",
    "displayName": "Currency Code",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "STRING_LENGTH",
        "args": [
          3,
          3
        ]
      }
    ],
    "help": "Currency code like CZK, EUR or USD. If Transaction object is set, value is loaded automatically.",
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ],
    "defaultValue": "CZK"
  },
  {
    "type": "SELECT",
    "name": "products",
    "displayName": "Products",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true,
    "help": "Array of products. Each product object needs keys \"name\", \"quantity\", \"price\".  If Transaction object is set, value is loaded automatically from transaction.items.",
    "notSetText": "Not Set",
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "additional_items",
    "displayName": "Additional items",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Name",
        "name": "name",
        "type": "TEXT",
        "isUnique": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "valueHint": "Item Name"
      },
      {
        "defaultValue": "",
        "displayName": "Unit Price",
        "name": "unit_price",
        "type": "TEXT",
        "valueHint": "0.00"
      },
      {
        "defaultValue": 1,
        "displayName": "Quantity",
        "name": "quantity",
        "type": "TEXT",
        "valueHint": "1",
        "valueValidators": [
          {
            "type": "POSITIVE_NUMBER"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ],
    "alwaysInSummary": false
  },
  {
    "type": "CHECKBOX",
    "name": "load_additional_items_from_object",
    "checkboxText": "Load additional items from Transaction object",
    "simpleValueType": true,
    "defaultValue": true,
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ],
    "help": "If enabled, shipping, payment, tax and voucher will be automatically added as additional items from the transaction object"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const createArgumentsQueue = require('createArgumentsQueue');
const setInWindow = require('setInWindow');
const injectScript = require('injectScript');
const getType = require('getType');
const makeString = require('makeString');
const makeNumber = require('makeNumber');
const Math = require('Math');
const Object = require('Object');


let add_data = () => {};
let url = 'https://www.heureka.'+data.country+'/ocm/sdk.js?version=2&page='+data.code_type;


log('Heureka '+data.code_type+': starting code with', data);


function round(value) {
  if (getType(value) === 'string') value = value.split(' ').join('');
  return Math.round(makeNumber(value) * 100) / 100;
}

function floatToString(value) {
  value = round(value);
  let parts = makeString(value).split(".");
  if (!parts[1]) {
    parts[1] = "00";
  } else if (parts[1].length === 1) {
    parts[1] += "0";
  }
  return parts.join(".");
}

function addAdditionalItem(additionalItems, name, unit_price) {
  let price = makeNumber(unit_price);
  if (!name || makeString(price) === 'NaN') return;
  additionalItems.push({
    'name': name,
    'unit_price': price,
    'quantity': '1'}
  );
}



if (data.code_type === 'thank_you') {
  add_data = function() {
    log('Heureka '+data.code_type+': adding data');
	heureka('authenticate', data.id);
    log(' - authenticate', data.id);
    let totalRevenue = 0;
    let order = data.order || {};
    let orderProducts = order.products;
    if (order.actionField) order = order.actionField;
    
    
    // ORDER ID
    let order_id = data.order_id || order.id || order.transaction_id;
    if (order_id) {
      heureka('set_order_id', makeString(order_id));
      log(' - set_order_id', order_id);
    } else {
      log('Heureka Error: INVALID_ORDER_ID, got value', order_id);
      return 'INVALID_ORDER_ID';
    }
	  
    
    // PRODUCTS
    let products = data.products || order.items || orderProducts || [];
    if (getType(products) !== 'array') {
      log("Heureka Conversion: passing non-array value", products);
      products = [];
    }
    
    if (products.length < 0) {
      const createQueue = require('createQueue');
      const dataLayerPush = createQueue('dataLayer');
      const JSON = createQueue('JSON');
      dataLayerPush({
        'event': 'error',
        'error': {
          'message': 'Heureka Template',
          'description': 'No products'+JSON.stringify(data.products)
        }
      });
    }
    
    let preparedProducts = {};
    let id, name, price, quantity;
    
    for (let i = 0; i < products.length; i++) {
      id = makeString(products[i].id || products[i].item_id || '');
      name = makeString(products[i].name || products[i].item_name || '');
      price = products[i].pocketPrice || products[i].price || 0;
      price = round(price);
      quantity = products[i].quantity || 1;
      
      
      if (id === '') {
        log('Heureka Error: MISSING_ITEM_ID, item '+name+' has invalid price', id);
      }
      if (price < 0) {
        log('Heureka Error: INVALID_ITEM_PRICE, item '+name+' has invalid price', price);
      }
      if (quantity < 0) {
        log('Heureka Error: INVALID_ITEM_QUANTITY, item '+name+' has invalid quantity', quantity);
      }
      

      if (id !== '' && Object.keys(preparedProducts).indexOf(id) > -1) {
        preparedProducts[id].price = (preparedProducts[id].price * preparedProducts[id].quantity + price * quantity) / (preparedProducts[id].quantity + quantity);
        preparedProducts[id].quantity += quantity;
      } else {
        preparedProducts[id === '' ? ('GENERATED_'+i) : id] = {
          'id': id,
          'name': name,
          'price': price,
          'quantity': quantity
        };
      }
    }

    preparedProducts = Object.values(preparedProducts);
    for (let i = 0; i < preparedProducts.length; i++) {
      let item = preparedProducts[i];
      totalRevenue += item.price * item.quantity;
      heureka('add_product', item.id, item.name, floatToString(item.price), makeString(item.quantity));
      log(' - add_product', item.id, item.name, floatToString(item.price), makeString(item.quantity));
    }

    
    // ADDITIONAL ITEMS
    let additionalItems = data.additional_items || [];
    if (data.load_additional_items_from_object) {
      addAdditionalItem(additionalItems, 'shipping', order.shipping);
      addAdditionalItem(additionalItems, 'payment', order.payment);
      addAdditionalItem(additionalItems, 'tax', order.tax);
      addAdditionalItem(additionalItems, 'voucher', order.voucher);
    }
    for (let i = 0; i < additionalItems.length; i++) {
      let item = additionalItems[i];
      let quantity = makeNumber(item.quantity) || 1;
      let price = makeNumber(item.unit_price) || 0;
      
      totalRevenue += quantity * price;      
      heureka('add_additional_item', item.name, floatToString(price), makeString(quantity));
      log(' - add_additional_item', item.name, floatToString(price), makeString(quantity));
    }

    
    // TOTAL REVENUE
    totalRevenue = floatToString(totalRevenue);
    heureka('set_total_vat', totalRevenue);
    log(' - set_total_vat', totalRevenue);
    let revenue = data.order_revenue || order.value || order.revenue || 'unknown';
    if (totalRevenue != floatToString(revenue)) {
      log('Heureka Error: PRICE_DONT_MATCH, calculated price is', totalRevenue, ', order price from data is', revenue);
    }

    
    // CURRENCY
    let currency = data.currency_code || order.currency || '';
    if (!currency || currency === '') {
        log('Heureka Error: MISSING_CURRENCY, get currency code', currency);
    } else if (currency.length !== 3) {
      log('Heureka Error: INVALID_CURRENCY, get currency code', currency);
    } else {
      heureka('set_currency', currency);
      log(' - set_currency', currency);
    }
    
    heureka('send', 'Order');
    log(' - send order');
  };
}


setInWindow('ROIDataObject', 'heureka', true);
const heureka = createArgumentsQueue('heureka', 'heureka.q');
setInWindow('heureka.c', data.country, true);

let error = add_data();
if (!error) {
  injectScript(url, () => {
    log('Heureka '+data.code_type+': success', data);
    data.gtmOnSuccess();
  }, () => {
    log('Heureka '+data.code_type+': script loading failed', data);
    data.gtmOnFailure();
  });
} else {
  log('Heureka '+data.code_type+': script was not loaded due to faltal error in data');
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.heureka.cz/ocm/sdk.js*"
              },
              {
                "type": 1,
                "string": "https://www.heureka.sk/ocm/sdk.js*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "heureka"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "heureka.c"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "heureka.q"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ROIDataObject"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Basic - Code was fired successfully
  code: |-
    runCode(mockData);
    assertApi('injectScript').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Basic - Constants were set
  code: |-
    runCode(mockData);
    assertApi('setInWindow').wasCalledWith('ROIDataObject', 'heureka', true);
    assertApi('setInWindow').wasCalledWith('heureka.c', 'cz', true);
- name: Product page - script is loaded
  code: |-
    expected_url = 'https://www.heureka.cz/ocm/sdk.js?version=2&page=product_detail';
    mockData = {
      'code_type': 'product_detail',
      'country': 'cz'
    };
    runCode(mockData);
    assertApi('injectScript').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Purchase - basic
  code: "let passedData = [];\nmock('createArgumentsQueue', function(name, queue)\
    \ {\n  assertThat(name).isEqualTo('heureka');\n  assertThat(queue).isEqualTo('heureka.q');\n\
    \  \n  return function(command) {\n    passedData[passedData.length] = arguments;\n\
    \  };\n});\n\nrunCode(mockData);\n\nassertThat(passedData[0]).isEqualTo(['authenticate',\
    \ 'ABCDEFGH12345NOPQRS1111123456789']);\nassertThat(passedData[1]).isEqualTo(['set_order_id',\
    \ '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product', '123', 'Okurka',\
    \ '21.00', '1']);\nassertThat(passedData[3]).isEqualTo(['add_product', '456',\
    \ 'Brambora', '3.50', '5']);\nassertThat(passedData[4]).isEqualTo(['set_total_vat',\
    \ '38.50']);\nassertThat(passedData[5]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);"
- name: Purchase - basic - with additional items
  code: |-
    mockData.order_revenue = 87.50;
    mockData.additional_items = [
      {"name":"transport","unit_price":"69.00","quantity":"1"},
      {"name":"voucher","unit_price":"-20","quantity":''},
      {"name":"error","unit_price":"","quantity":1}
    ];


    let passedData = [];
    mock('createArgumentsQueue', function(name, queue) {
      return function(command) {
        passedData[passedData.length] = arguments;
      };
    });

    runCode(mockData);

    assertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);
    assertThat(passedData[2]).isEqualTo(['add_product', '123', 'Okurka', '21.00', '1']);
    assertThat(passedData[3]).isEqualTo(['add_product', '456', 'Brambora', '3.50', '5']);

    assertThat(passedData[4]).isEqualTo(['add_additional_item', 'transport', '69.00', '1']);
    assertThat(passedData[5]).isEqualTo(['add_additional_item', 'voucher', '-20.00', '1']);
    assertThat(passedData[6]).isEqualTo(['add_additional_item', 'error', '0.00', '1']);

    assertThat(passedData[7]).isEqualTo(['set_total_vat', '87.50']);
    assertThat(passedData[8]).isEqualTo(['set_currency', 'CZK']);
    assertThat(passedData[9]).isEqualTo(['send', 'Order']);
- name: Purchase - from transaction object - GA4
  code: "let passedData = [];\nmock('createArgumentsQueue', function(name, queue)\
    \ {\n  assertThat(name).isEqualTo('heureka');\n  assertThat(queue).isEqualTo('heureka.q');\n\
    \  \n  return function(command) {\n    passedData[passedData.length] = arguments;\n\
    \  };\n});\n\nrunCode(mockDataObject);\n\nassertThat(passedData[0]).isEqualTo(['authenticate',\
    \ 'ABCDEFGH12345NOPQRS1111123456789']);\nassertThat(passedData[1]).isEqualTo(['set_order_id',\
    \ 'T_12345']);\nassertThat(passedData[2]).isEqualTo(['add_product', 'SKU_12345',\
    \ 'Stan and Friends Tee', '10.01', '3']);\nassertThat(passedData[3]).isEqualTo(['add_product',\
    \ 'SKU_12346', 'Google Grey Women\\'s Tee', '21.01', '2']);\nassertThat(passedData[4]).isEqualTo(['set_total_vat',\
    \ '72.05']);\nassertThat(passedData[5]).isEqualTo(['set_currency', 'USD']);\n\
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);"
- name: Purchase - from transaction object - UA
  code: |-
    mockDataObject = {
      'id': 'ABCDEFGH12345NOPQRS1111123456789',
      'code_type': 'thank_you',
      'country': 'cz',
      'order': {
        actionField: {
          transaction_id: "T_12345",
          value: 72.05,
          voucher: -3,
          tax: 3.60,
          shipping: 5.99,
          payment: 1.50,
          currency: "USD",
          coupon: "SUMMER_SALE"
        },
        products: [
         {
          item_id: "SKU_12345",
          item_name: "Stan and Friends Tee",
          affiliation: "Google Merchandise Store",
          coupon: "SUMMER_FUN",
          discount: 2.22,
          index: 0,
          item_brand: "Google",
          item_category: "Apparel",
          item_category2: "Adult",
          item_category3: "Shirts",
          item_category4: "Crew",
          item_category5: "Short sleeve",
          item_list_id: "related_products",
          item_list_name: "Related Products",
          item_variant: "green",
          location_id: "ChIJIQBpAG2ahYAR_6128GcTUEo",
          price: 10.01,
          quantity: 3
        },
        {
          item_id: "SKU_12346",
          item_name: "Google Grey Women's Tee",
          affiliation: "Google Merchandise Store",
          coupon: "SUMMER_FUN",
          discount: 3.33,
          index: 1,
          item_brand: "Google",
          item_category: "Apparel",
          item_category2: "Adult",
          item_category3: "Shirts",
          item_category4: "Crew",
          item_category5: "Short sleeve",
          item_list_id: "related_products",
          item_list_name: "Related Products",
          item_variant: "gray",
          location_id: "ChIJIQBpAG2ahYAR_6128GcTUEo",
          price: 21.01,
          promotion_id: "P_12345",
          promotion_name: "Summer Sale",
          quantity: 2
        }]
      }
    };






    let passedData = [];
    mock('createArgumentsQueue', function(name, queue) {
      return function(command) {
        passedData[passedData.length] = arguments;
      };
    });

    runCode(mockDataObject);

    assertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);
    assertThat(passedData[1]).isEqualTo(['set_order_id', 'T_12345']);
    assertThat(passedData[2]).isEqualTo(['add_product', 'SKU_12345', 'Stan and Friends Tee', '10.01', '3']);
    assertThat(passedData[3]).isEqualTo(['add_product', 'SKU_12346', 'Google Grey Women\'s Tee', '21.01', '2']);
    assertThat(passedData[4]).isEqualTo(['set_total_vat', '72.05']);
    assertThat(passedData[5]).isEqualTo(['set_currency', 'USD']);
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);
- name: Purchase - from transaction object - with additional items
  code: "mockDataObject.load_additional_items_from_object = true;\nmockDataObject.order.value\
    \ = 80.14;\n\nlet passedData = [];\nmock('createArgumentsQueue', function(name,\
    \ queue) {\n  assertThat(name).isEqualTo('heureka');\n  assertThat(queue).isEqualTo('heureka.q');\n\
    \  \n  return function(command) {\n    passedData[passedData.length] = arguments;\n\
    \  };\n});\n\nrunCode(mockDataObject);\n\nassertThat(passedData[0]).isEqualTo(['authenticate',\
    \ 'ABCDEFGH12345NOPQRS1111123456789']);\nassertThat(passedData[1]).isEqualTo(['set_order_id',\
    \ 'T_12345']);\nassertThat(passedData[2]).isEqualTo(['add_product', 'SKU_12345',\
    \ 'Stan and Friends Tee', '10.01', '3']);\nassertThat(passedData[3]).isEqualTo(['add_product',\
    \ 'SKU_12346', 'Google Grey Women\\'s Tee', '21.01', '2']);\n\nassertThat(passedData[4]).isEqualTo(['add_additional_item',\
    \ 'shipping', '5.99', '1']);\nassertThat(passedData[5]).isEqualTo(['add_additional_item',\
    \ 'payment', '1.50', '1']);\nassertThat(passedData[6]).isEqualTo(['add_additional_item',\
    \ 'tax', '3.60', '1']);\nassertThat(passedData[7]).isEqualTo(['add_additional_item',\
    \ 'voucher', '-3.00', '1']);\n\nassertThat(passedData[8]).isEqualTo(['set_total_vat',\
    \ '80.14']);\nassertThat(passedData[9]).isEqualTo(['set_currency', 'USD']);\n\
    assertThat(passedData[10]).isEqualTo(['send', 'Order']);"
- name: Purchase - from transaction object - with invalid additional items
  code: |-
    mockDataObject.load_additional_items_from_object = true;
    mockDataObject.order.value = 78.64;
    mockDataObject.order.payment = 'by card';

    let passedData = [];
    mock('createArgumentsQueue', function(name, queue) {
      return function(command) {
        passedData[passedData.length] = arguments;
      };
    });
    runCode(mockDataObject);

    assertThat(passedData[4]).isEqualTo(['add_additional_item', 'shipping', '5.99', '1']);
    assertThat(passedData[5]).isEqualTo(['add_additional_item', 'tax', '3.60', '1']);
    assertThat(passedData[6]).isEqualTo(['add_additional_item', 'voucher', '-3.00', '1']);

    assertThat(passedData[7]).isEqualTo(['set_total_vat', '78.64']);
- name: Purchase - from rows - item price is rounded
  code: "mockData.products[0].price = 21.0012345;\n\n\nlet passedData = [];\nmock('createArgumentsQueue',\
    \ function(name, queue) {  \n  return function(command) {\n    passedData[passedData.length]\
    \ = arguments;\n  };\n});\n\n\nrunCode(mockData);\n\nassertThat(passedData[0]).isEqualTo(['authenticate',\
    \ 'ABCDEFGH12345NOPQRS1111123456789']);\nassertThat(passedData[1]).isEqualTo(['set_order_id',\
    \ '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product', '123', 'Okurka',\
    \ '21.00', '1']);\nassertThat(passedData[3]).isEqualTo(['add_product', '456',\
    \ 'Brambora', '3.50', '5']);\nassertThat(passedData[4]).isEqualTo(['set_total_vat',\
    \ '38.50']);\nassertThat(passedData[5]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);"
- name: Error - Purchase - Products with same ID
  code: |
    mockData = {
      'id': 'ABCDEFGH12345NOPQRS1111123456789',
      'code_type': 'thank_you',
      'order_id': 12345,
      'order_revenue': 130,
      'currency_code': 'CZK',
      'products': [{
          id: 12345,
          ean: "",
          name: "Okurka",
          price: "30.00",
          fullPrice: "30.00",
          quantity: 3,
          priceFull: "30.00",
          pocketPrice: "30.00",
          discount: "0.00"
        }, {
          id: 12345,
          ean: "",
          name: "Okurka",
          price: "20.00",
          fullPrice: "20.00",
          quantity: 2,
          priceFull: "20.00",
          pocketPrice: "20.00",
          discount: "10.00"
        }
      ],
      'country': 'cz'
    };

    let passedData = [];
    mock('createArgumentsQueue', function(name, queue) {
      return function(command) {
        passedData[passedData.length] = arguments;
      };
    });


    runCode(mockData);


    assertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);
    assertThat(passedData[2]).isEqualTo(['add_product', '12345', 'Okurka', '26.00', '5']);
    assertThat(passedData[3]).isEqualTo(['set_total_vat', '130.00']);
    assertThat(passedData[4]).isEqualTo(['set_currency', 'CZK']);
    assertThat(passedData[5]).isEqualTo(['send', 'Order']);
- name: Error - Purchase - Products with empty IDs
  code: |
    mockData = {
      'id': 'ABCDEFGH12345NOPQRS1111123456789',
      'code_type': 'thank_you',
      'order_id': 12345,
      'order_revenue': 130,
      'currency_code': 'CZK',
      'products': [{
          id: false,
          ean: "",
          name: "Okurka",
          price: "30.00",
          fullPrice: "30.00",
          quantity: 3,
          priceFull: "30.00",
          pocketPrice: "30.00",
          discount: "0.00"
        }, {
          id: '',
          ean: "",
          name: "Okurka",
          price: "20.00",
          fullPrice: "20.00",
          quantity: 2,
          priceFull: "20.00",
          pocketPrice: "20.00",
          discount: "10.00"
        }
      ],
      'country': 'cz'
    };

    let passedData = [];
    mock('createArgumentsQueue', function(name, queue) {
      return function(command) {
        passedData[passedData.length] = arguments;
      };
    });


    runCode(mockData);


    assertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);
    assertThat(passedData[2]).isEqualTo(['add_product', '', 'Okurka', '30.00', '3']);
    assertThat(passedData[3]).isEqualTo(['add_product', '', 'Okurka', '20.00', '2']);
    assertThat(passedData[4]).isEqualTo(['set_total_vat', '130.00']);
    assertThat(passedData[5]).isEqualTo(['set_currency', 'CZK']);
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);
- name: Error - Missing order ID
  code: "/**\n * Do not send order data if order ID is missing\n * \n * This fixes\
    \ a bug when a lot of errors are sent during a GTM publishing\n */ \nmockData\
    \ = {\n    'code_type': 'thank_you',\n};\n\nrunCode(mockData);\nassertApi('injectScript').wasNotCalled();\n\
    assertApi('gtmOnSuccess').wasNotCalled();"
- name: Error - Order with product price = 0 CZK
  code: |
    mockData = {
      'id': 'ABCDEFGH12345NOPQRS1111123456789',
      'code_type': 'thank_you',
      'order_id': 12345,
      'order_revenue': 1369,
      'currency_code': 'CZK',
      'products': [{
          id: 12345,
          ean: "",
          name: "Okurka",
          price: "1369.00",
          fullPrice: 1369,
          quantity: 1,
          priceFull: "1369.00",
          pocketPrice: "1369.00",
          discount: "0.00"
        }, {
          id: 23456,
          ean: "987654329876543",
          name: "Nab�dka",
          price: 0,
          fullPrice: 0,
          quantity: 1,
          priceFull: "0.00",
          pocketPrice: "0.00",
          discount: "0.00"
        }, {
          id: 34567,
          ean: "9876787654876576",
          name: "D�rek zdarma",
          price: 0,
          fullPrice: 0,
          tax: 0,
          quantity: 1,
          priceFull: "0.00",
          pocketPrice: "0.00",
          discount: "0.00"
        }
      ],
      'country': 'cz'
    };

    let passedData = [];
    mock('createArgumentsQueue', function(name, queue) {
      return function(command) {
        passedData[passedData.length] = arguments;
      };
    });


    runCode(mockData);


    assertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);
    assertThat(passedData[2]).isEqualTo(['add_product', '12345', 'Okurka', '1369.00', '1']);
    assertThat(passedData[3]).isEqualTo(['add_product', '23456', 'Nab�dka', '0.00', '1']);
    assertThat(passedData[4]).isEqualTo(['add_product', '34567', 'D�rek zdarma', '0.00', '1']);
    assertThat(passedData[5]).isEqualTo(['set_total_vat', '1369.00']);
    assertThat(passedData[6]).isEqualTo(['set_currency', 'CZK']);
    assertThat(passedData[7]).isEqualTo(['send', 'Order']);
- name: Error - Product with wrongly formated price
  code: |
    mockData = {
      'id': 'ABCDEFGH12345NOPQRS1111123456789',
      'code_type': 'thank_you',
      'order_id': 12345,
      'order_revenue': 1369,
      'currency_code': 'CZK',
      'products': [{
          id: 12345,
          ean: "",
          name: "Okurka",
          price: "1 369.00",
          fullPrice: "1 369.00",
          quantity: 1,
          priceFull: "1 369.00",
          pocketPrice: "1 369.00",
          discount: "0.00"
        }, {
          id: 23456,
          ean: "987654329876543",
          name: "Nab�dka",
          price: 0,
          fullPrice: 0,
          quantity: 1,
          priceFull: "0.00",
          pocketPrice: "0.00",
          discount: "0.00"
        }, {
          id: 34567,
          ean: "9876787654876576",
          name: "D�rek zdarma",
          price: 0,
          fullPrice: 0,
          tax: 0,
          quantity: 1,
          priceFull: "0.00",
          pocketPrice: "0.00",
          discount: "0.00"
        }
      ],
      'country': 'cz'
    };

    let passedData = [];
    mock('createArgumentsQueue', function(name, queue) {
      return function(command) {
        passedData[passedData.length] = arguments;
      };
    });


    runCode(mockData);


    assertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);
    assertThat(passedData[2]).isEqualTo(['add_product', '12345', 'Okurka', '1369.00', '1']);
    assertThat(passedData[3]).isEqualTo(['add_product', '23456', 'Nab�dka', '0.00', '1']);
    assertThat(passedData[4]).isEqualTo(['add_product', '34567', 'D�rek zdarma', '0.00', '1']);
    assertThat(passedData[5]).isEqualTo(['set_total_vat', '1369.00']);
    assertThat(passedData[6]).isEqualTo(['set_currency', 'CZK']);
    assertThat(passedData[7]).isEqualTo(['send', 'Order']);
- name: SK version
  code: |-
    expected_url = 'https://www.heureka.sk/ocm/sdk.js?version=2&page=thank_you';
    mockData.country = 'sk';
    // Call runCode to run the template's code.
    runCode(mockData);
    assertApi('setInWindow').wasCalledWith('heureka.c', 'sk', true);
setup: |-
  let mockData = {
    'id': 'ABCDEFGH12345NOPQRS1111123456789',
    'code_type': 'thank_you',
    'order_id': 12345,
    'order_revenue': 38.50,
    'currency_code': 'CZK',
    'products': [{
      'id': 123,
      'name': 'Okurka',
      'price': 21.0,
      'quantity': 1
    }, {
      'id': 456,
      'name': 'Brambora',
      'price': 3.5,
      'quantity': 5
    }],
    'country': 'cz'
  };

  // object from documentation
  // @see https://developers.google.com/analytics/devguides/collection/ga4/ecommerce?client_type=gtag#make_a_purchase_or_issue_a_refund
  let mockDataObject = {
    'id': 'ABCDEFGH12345NOPQRS1111123456789',
    'code_type': 'thank_you',
    'country': 'cz',
    'order': {
      transaction_id: "T_12345",
      // Sum of (price * quantity) for all items.
      value: 72.05,
      voucher: -3,
      tax: 3.60,
      shipping: 5.99,
      payment: 1.50,
      currency: "USD",
      coupon: "SUMMER_SALE",
      items: [
       {
        item_id: "SKU_12345",
        item_name: "Stan and Friends Tee",
        affiliation: "Google Merchandise Store",
        coupon: "SUMMER_FUN",
        discount: 2.22,
        index: 0,
        item_brand: "Google",
        item_category: "Apparel",
        item_category2: "Adult",
        item_category3: "Shirts",
        item_category4: "Crew",
        item_category5: "Short sleeve",
        item_list_id: "related_products",
        item_list_name: "Related Products",
        item_variant: "green",
        location_id: "ChIJIQBpAG2ahYAR_6128GcTUEo",
        price: 10.01,
        quantity: 3
      },
      {
        item_id: "SKU_12346",
        item_name: "Google Grey Women's Tee",
        affiliation: "Google Merchandise Store",
        coupon: "SUMMER_FUN",
        discount: 3.33,
        index: 1,
        item_brand: "Google",
        item_category: "Apparel",
        item_category2: "Adult",
        item_category3: "Shirts",
        item_category4: "Crew",
        item_category5: "Short sleeve",
        item_list_id: "related_products",
        item_list_name: "Related Products",
        item_variant: "gray",
        location_id: "ChIJIQBpAG2ahYAR_6128GcTUEo",
        price: 21.01,
        promotion_id: "P_12345",
        promotion_name: "Summer Sale",
        quantity: 2
      }]
    }
  };


  let script_load_success = true;
  let expected_url = 'https://www.heureka.cz/ocm/sdk.js?version=2&page=thank_you';

  mock('injectScript', function(url, onSuccess, onFailure) {
    assertThat(url).isEqualTo(expected_url);
    if (script_load_success) onSuccess();
    else onFailure();
  });


___NOTES___

Created on 30. 5. 2024 9:59:24


