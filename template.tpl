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
    "name": "order_id",
    "displayName": "Order ID",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true,
    "alwaysInSummary": false,
    "notSetText": "Not Set",
    "help": "Unique ID of given order",
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
        "type": "NON_EMPTY"
      },
      {
        "type": "STRING_LENGTH",
        "args": [
          3,
          3
        ]
      }
    ],
    "help": "Currency code like CZK, EUR or USD",
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
    "help": "Array of products. Each product object needs keys \"id\", \"name\", \"quantity\", \"price\"",
    "notSetText": "Not Set",
    "enablingConditions": [
      {
        "paramName": "code_type",
        "paramValue": "thank_you",
        "type": "EQUALS"
      }
    ]
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



if (data.code_type === 'thank_you') {
  add_data = function() {
    log('Heureka '+data.code_type+': adding data');
	heureka('authenticate', data.id);
    log(' - authenticate', data.id);
    let totalRevenue = 0;
    
    if (data.order_id) {
      heureka('set_order_id', makeString(data.order_id));
      log(' - set_order_id', data.order_id);
    } else {
      log('Heureka Error: INVALID_ORDER_ID, got value', data.order_id);
      return 'INVALID_ORDER_ID';
    }
	  
    let products = data.products || [];
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
      totalRevenue += preparedProducts[i].price * preparedProducts[i].quantity;
      
      id = preparedProducts[i].id;
      name = preparedProducts[i].name;
      price = floatToString(preparedProducts[i].price);
      quantity = makeString(preparedProducts[i].quantity);
      
      heureka('add_product', id, name, price, quantity);
      log(' - add_product', id, name, price, quantity);
    }

    totalRevenue = floatToString(totalRevenue);
    heureka('set_total_vat', totalRevenue);
    log(' - set_total_vat', totalRevenue);
    if (totalRevenue != floatToString(data.order_revenue)) {
      log('Heureka Error: PRICE_DONT_MATCH, product price is', totalRevenue, ', order price is', floatToString(data.order_revenue));
    }

    if (!data.currency_code) {
        log('Heureka Error: MISSING_CURRENCY, get currency code', data.currency_code);
    } else if (data.currency_code.length !== 3) {
      log('Heureka Error: INVALID_CURRENCY, get currency code', data.currency_code);
    } else {
      heureka('set_currency', data.currency_code);
      log(' - set_currency', data.currency_code);
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
- name: Product detail page
  code: |-
    expected_url = 'https://www.heureka.cz/ocm/sdk.js?version=2&page=product_detail';
    mockData = {
      'code_type': 'product_detail',
      'country': 'cz'
    };
    runCode(mockData);
    assertApi('injectScript').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Purchase page
  code: "let passedData = [];\nlet i = 0;\n\nmock('createArgumentsQueue', function(name,\
    \ queue) {\n  assertThat(name).isEqualTo('heureka');\n  assertThat(queue).isEqualTo('heureka.q');\n\
    \  \n  return function(command) {\n    passedData[i] = arguments;\n    i++;\n\
    \  };\n});\n\nrunCode(mockData);\n\nassertThat(passedData[0]).isEqualTo(['authenticate',\
    \ 'ABCDEFGH12345NOPQRS1111123456789']);\nassertThat(passedData[1]).isEqualTo(['set_order_id',\
    \ '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product', '123', 'Okurka',\
    \ '21.00', '1']);\nassertThat(passedData[3]).isEqualTo(['add_product', '456',\
    \ 'Brambora', '3.50', '5']);\nassertThat(passedData[4]).isEqualTo(['set_total_vat',\
    \ '38.50']);\nassertThat(passedData[5]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);"
- name: Product page
  code: "let passedData = [];\nmockData.products[0].price = 21.0012345;\nlet i = 0;\n\
    \nmock('createArgumentsQueue', function(name, queue) {\n  assertThat(name).isEqualTo('heureka');\n\
    \  assertThat(queue).isEqualTo('heureka.q');\n  \n  return function(command) {\n\
    \    passedData[i] = arguments;\n    i++;\n  };\n});\n\nrunCode(mockData);\n\n\
    assertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);\n\
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product',\
    \ '123', 'Okurka', '21.00', '1']);\nassertThat(passedData[3]).isEqualTo(['add_product',\
    \ '456', 'Brambora', '3.50', '5']);\nassertThat(passedData[4]).isEqualTo(['set_total_vat',\
    \ '38.50']);\nassertThat(passedData[5]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);"
- name: SK version
  code: |-
    expected_url = 'https://www.heureka.sk/ocm/sdk.js?version=2&page=thank_you';
    mockData.country = 'sk';
    // Call runCode to run the template's code.
    runCode(mockData);
    assertApi('setInWindow').wasCalledWith('heureka.c', 'sk', true);
- name: Missing order ID
  code: "/**\n * Do not send order data if order ID is missing\n * \n * This fixes\
    \ a bug when a lot of errors are sent during a GTM publishing\n */ \nmockData\
    \ = {\n    'code_type': 'thank_you',\n};\n\nrunCode(mockData);\nassertApi('injectScript').wasNotCalled();\n\
    assertApi('gtmOnSuccess').wasNotCalled();"
- name: Order with product price = 0 CZK
  code: "mockData = {\n  'id': 'ABCDEFGH12345NOPQRS1111123456789',\n  'code_type':\
    \ 'thank_you',\n  'order_id': 12345,\n  'order_revenue': 1369,\n  'currency_code':\
    \ 'CZK',\n  'products': [{\n      id: 12345,\n      ean: \"\",\n      name: \"\
    Okurka\",\n      price: \"1369.00\",\n      fullPrice: 1369,\n      quantity:\
    \ 1,\n      priceFull: \"1369.00\",\n      pocketPrice: \"1369.00\",\n      discount:\
    \ \"0.00\"\n    }, {\n      id: 23456,\n      ean: \"987654329876543\",\n    \
    \  name: \"Nab�dka\",\n      price: 0,\n      fullPrice: 0,\n      quantity: 1,\n\
    \      priceFull: \"0.00\",\n      pocketPrice: \"0.00\",\n      discount: \"\
    0.00\"\n    }, {\n      id: 34567,\n      ean: \"9876787654876576\",\n      name:\
    \ \"D�rek zdarma\",\n      price: 0,\n      fullPrice: 0,\n      tax: 0,\n   \
    \   quantity: 1,\n      priceFull: \"0.00\",\n      pocketPrice: \"0.00\",\n \
    \     discount: \"0.00\"\n    }\n  ],\n  'country': 'cz'\n};\n\nlet passedData\
    \ = [];\nlet i = 0;\n\nmock('createArgumentsQueue', function(name, queue) {\n\
    \  assertThat(name).isEqualTo('heureka');\n  assertThat(queue).isEqualTo('heureka.q');\n\
    \  \n  return function(command) {\n    passedData[i] = arguments;\n    i++;\n\
    \  };\n});\n\n\nrunCode(mockData);\n\n\nassertThat(passedData[0]).isEqualTo(['authenticate',\
    \ 'ABCDEFGH12345NOPQRS1111123456789']);\nassertThat(passedData[1]).isEqualTo(['set_order_id',\
    \ '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product', '12345', 'Okurka',\
    \ '1369.00', '1']);\nassertThat(passedData[3]).isEqualTo(['add_product', '23456',\
    \ 'Nab�dka', '0.00', '1']);\nassertThat(passedData[4]).isEqualTo(['add_product',\
    \ '34567', 'D�rek zdarma', '0.00', '1']);\nassertThat(passedData[5]).isEqualTo(['set_total_vat',\
    \ '1369.00']);\nassertThat(passedData[6]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[7]).isEqualTo(['send', 'Order']);\n"
- name: Product with wrongly formated price
  code: "mockData = {\n  'id': 'ABCDEFGH12345NOPQRS1111123456789',\n  'code_type':\
    \ 'thank_you',\n  'order_id': 12345,\n  'order_revenue': 1369,\n  'currency_code':\
    \ 'CZK',\n  'products': [{\n      id: 12345,\n      ean: \"\",\n      name: \"\
    Okurka\",\n      price: \"1 369.00\",\n      fullPrice: \"1 369.00\",\n      quantity:\
    \ 1,\n      priceFull: \"1 369.00\",\n      pocketPrice: \"1 369.00\",\n     \
    \ discount: \"0.00\"\n    }, {\n      id: 23456,\n      ean: \"987654329876543\"\
    ,\n      name: \"Nab�dka\",\n      price: 0,\n      fullPrice: 0,\n      quantity:\
    \ 1,\n      priceFull: \"0.00\",\n      pocketPrice: \"0.00\",\n      discount:\
    \ \"0.00\"\n    }, {\n      id: 34567,\n      ean: \"9876787654876576\",\n   \
    \   name: \"D�rek zdarma\",\n      price: 0,\n      fullPrice: 0,\n      tax:\
    \ 0,\n      quantity: 1,\n      priceFull: \"0.00\",\n      pocketPrice: \"0.00\"\
    ,\n      discount: \"0.00\"\n    }\n  ],\n  'country': 'cz'\n};\n\nlet passedData\
    \ = [];\nlet i = 0;\n\nmock('createArgumentsQueue', function(name, queue) {\n\
    \  assertThat(name).isEqualTo('heureka');\n  assertThat(queue).isEqualTo('heureka.q');\n\
    \  \n  return function(command) {\n    passedData[i] = arguments;\n    i++;\n\
    \  };\n});\n\n\nrunCode(mockData);\n\n\nassertThat(passedData[0]).isEqualTo(['authenticate',\
    \ 'ABCDEFGH12345NOPQRS1111123456789']);\nassertThat(passedData[1]).isEqualTo(['set_order_id',\
    \ '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product', '12345', 'Okurka',\
    \ '1369.00', '1']);\nassertThat(passedData[3]).isEqualTo(['add_product', '23456',\
    \ 'Nab�dka', '0.00', '1']);\nassertThat(passedData[4]).isEqualTo(['add_product',\
    \ '34567', 'D�rek zdarma', '0.00', '1']);\nassertThat(passedData[5]).isEqualTo(['set_total_vat',\
    \ '1369.00']);\nassertThat(passedData[6]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[7]).isEqualTo(['send', 'Order']);\n"
- name: Products with same ID
  code: "mockData = {\n  'id': 'ABCDEFGH12345NOPQRS1111123456789',\n  'code_type':\
    \ 'thank_you',\n  'order_id': 12345,\n  'order_revenue': 1369,\n  'currency_code':\
    \ 'CZK',\n  'products': [{\n      id: 12345,\n      ean: \"\",\n      name: \"\
    Okurka\",\n      price: \"30.00\",\n      fullPrice: \"30.00\",\n      quantity:\
    \ 3,\n      priceFull: \"30.00\",\n      pocketPrice: \"30.00\",\n      discount:\
    \ \"0.00\"\n    }, {\n      id: 12345,\n      ean: \"\",\n      name: \"Okurka\"\
    ,\n      price: \"20.00\",\n      fullPrice: \"20.00\",\n      quantity: 2,\n\
    \      priceFull: \"20.00\",\n      pocketPrice: \"20.00\",\n      discount: \"\
    10.00\"\n    }\n  ],\n  'country': 'cz'\n};\n\nlet passedData = [];\nlet i = 0;\n\
    \nmock('createArgumentsQueue', function(name, queue) {\n  assertThat(name).isEqualTo('heureka');\n\
    \  assertThat(queue).isEqualTo('heureka.q');\n  \n  return function(command) {\n\
    \    passedData[i] = arguments;\n    i++;\n  };\n});\n\n\nrunCode(mockData);\n\
    \n\nassertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);\n\
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product',\
    \ '12345', 'Okurka', '26.00', '5']);\nassertThat(passedData[3]).isEqualTo(['set_total_vat',\
    \ '130.00']);\nassertThat(passedData[4]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[5]).isEqualTo(['send', 'Order']);\n"
- name: Products with empty IDs
  code: "mockData = {\n  'id': 'ABCDEFGH12345NOPQRS1111123456789',\n  'code_type':\
    \ 'thank_you',\n  'order_id': 12345,\n  'order_revenue': 1369,\n  'currency_code':\
    \ 'CZK',\n  'products': [{\n      id: false,\n      ean: \"\",\n      name: \"\
    Okurka\",\n      price: \"30.00\",\n      fullPrice: \"30.00\",\n      quantity:\
    \ 3,\n      priceFull: \"30.00\",\n      pocketPrice: \"30.00\",\n      discount:\
    \ \"0.00\"\n    }, {\n      id: '',\n      ean: \"\",\n      name: \"Okurka\"\
    ,\n      price: \"20.00\",\n      fullPrice: \"20.00\",\n      quantity: 2,\n\
    \      priceFull: \"20.00\",\n      pocketPrice: \"20.00\",\n      discount: \"\
    10.00\"\n    }\n  ],\n  'country': 'cz'\n};\n\nlet passedData = [];\nlet i = 0;\n\
    \nmock('createArgumentsQueue', function(name, queue) {\n  assertThat(name).isEqualTo('heureka');\n\
    \  assertThat(queue).isEqualTo('heureka.q');\n  \n  return function(command) {\n\
    \    passedData[i] = arguments;\n    i++;\n  };\n});\n\n\nrunCode(mockData);\n\
    \n\nassertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);\n\
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product',\
    \ '', 'Okurka', '30.00', '3']);\nassertThat(passedData[3]).isEqualTo(['add_product',\
    \ '', 'Okurka', '20.00', '2']);\nassertThat(passedData[4]).isEqualTo(['set_total_vat',\
    \ '130.00']);\nassertThat(passedData[5]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);\n"
- name: Multiple products
  code: "mockData = {\n  'id': 'ABCDEFGH12345NOPQRS1111123456789',\n  'code_type':\
    \ 'thank_you',\n  'order_id': 12345,\n  'order_revenue': 1369,\n  'currency_code':\
    \ 'CZK',\n  'products': [{\n      id: 12345,\n      ean: \"\",\n      name: \"\
    Okurka\",\n      price: \"30.00\",\n      fullPrice: \"30.00\",\n      quantity:\
    \ 3,\n      priceFull: \"30.00\",\n      pocketPrice: \"30.00\",\n      discount:\
    \ \"0.00\"\n    }, {\n      id: 67890,\n      ean: \"\",\n      name: \"Ban�n\"\
    ,\n      price: \"20.00\",\n      fullPrice: \"20.00\",\n      quantity: 2,\n\
    \      priceFull: \"20.00\",\n      pocketPrice: \"20.00\",\n      discount: \"\
    10.00\"\n    }\n  ],\n  'country': 'cz'\n};\n\nlet passedData = [];\nlet i = 0;\n\
    \nmock('createArgumentsQueue', function(name, queue) {\n  assertThat(name).isEqualTo('heureka');\n\
    \  assertThat(queue).isEqualTo('heureka.q');\n  \n  return function(command) {\n\
    \    passedData[i] = arguments;\n    i++;\n  };\n});\n\n\nrunCode(mockData);\n\
    \n\nassertThat(passedData[0]).isEqualTo(['authenticate', 'ABCDEFGH12345NOPQRS1111123456789']);\n\
    assertThat(passedData[1]).isEqualTo(['set_order_id', '12345']);\nassertThat(passedData[2]).isEqualTo(['add_product',\
    \ '12345', 'Okurka', '30.00', '3']);\nassertThat(passedData[3]).isEqualTo(['add_product',\
    \ '67890', 'Ban�n', '20.00', '2']);\nassertThat(passedData[4]).isEqualTo(['set_total_vat',\
    \ '130.00']);\nassertThat(passedData[5]).isEqualTo(['set_currency', 'CZK']);\n\
    assertThat(passedData[6]).isEqualTo(['send', 'Order']);\n"
setup: |-
  let mockData = {
    'id': 'ABCDEFGH12345NOPQRS1111123456789',
    'code_type': 'thank_you',
    'order_id': 12345,
    'order_revenue': 99.90,
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

  let script_load_success = true;
  let expected_url = 'https://www.heureka.cz/ocm/sdk.js?version=2&page=thank_you';

  mock('injectScript', function(url, onSuccess, onFailure) {
    assertThat(url).isEqualTo(expected_url);
    if (script_load_success) onSuccess();
    else onFailure();
  });


___NOTES___

Created on 30. 5. 2024 9:59:24


