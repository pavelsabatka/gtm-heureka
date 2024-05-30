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
    ]
  },
  {
    "type": "SELECT",
    "name": "orderId",
    "displayName": "Order ID",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true,
    "alwaysInSummary": false,
    "notSetText": "Not Set",
    "help": "Unique ID of given order"
  },
  {
    "type": "SELECT",
    "name": "products",
    "displayName": "Products",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true,
    "help": "Array of products. Each product object needs keys \"name\", \"quantity\", \"price\"",
    "notSetText": "Not Set"
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
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const isConsentGranted = require('isConsentGranted');
const addConsentListener = require('addConsentListener');
const injectScript = require('injectScript');
const createQueue = require('createQueue');
const getType = require('getType');




let trackConversion = function() {
  const _hrq_push = createQueue('_hrq');
  _hrq_push(["se"]);
  _hrq_push(['setKey', data.id]);
  if (data.orderId) {
    _hrq_push(['setOrderId', data.orderId]);
  }
  
  let products = data.products || [];
  if (getType(products) !== 'array') {
    log("Heureka Conversion: passing non-array value", products);
    products = [];
  }
  for (let i = 0; i < products.length; i++) {
    _hrq_push(['addProduct', products[i].name, products[i].price, products[i].quantity]);
  }
  
  let url = 'https://im9.cz/js/ext/1-roi-async.js';
  if (data.country === 'sk') {
    url = 'https://im9.cz/sk/js/ext/2-roi-async.js';
  }
  const countryCode = (data.country === 'sk') ? 'sk/' : '';
  injectScript(url, () => {
    log("Heureka Conversion: SUCCESS", data);
    data.gtmOnSuccess();
  }, () => {
    log("Heureka Conversion: script loading failed", data);
    data.gtmOnFailure();
  });
};



if (isConsentGranted('ad_storage')) {
  trackConversion();
} else {
  let wasCalled = false;
  addConsentListener('ad_storage', (consentType, granted) => {
    if (wasCalled) return;
    if (consentType === 'ad_storage' && granted) {
      wasCalled = true;
      trackConversion();
    }
  });
  data.gtmOnSuccess();
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
            "string": "debug"
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
                "string": "https://im9.cz/js/ext/1-roi-async.js"
              },
              {
                "type": 1,
                "string": "https://im9.cz/sk/js/ext/2-roi-async.js"
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
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
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
                    "string": "_hrq"
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
- name: Has consent
  code: |-
    mock('isConsentGranted', function(consent) {
      return true;
    });
    mock('injectScript', function(url, fnSuccess, fnFailure) {
      assertThat(url).isEqualTo('https://im9.cz/js/ext/1-roi-async.js');
      fnSuccess();
    });

    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
- name: No consent -> adding consent listener
  code: |-
    mock('isConsentGranted', function(consent) {
      return false;
    });

    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('injectScript').wasNotCalled();
- name: SK version
  code: |-
    mockData.country = 'sk';
    mock('injectScript', function(url, fnSuccess, fnFailure) {
      assertThat(url).isEqualTo('https://im9.cz/sk/js/ext/2-roi-async.js');
      fnSuccess();
    });

    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
setup: |-
  let mockData = {
    'id': 'ASDFGHJKL1234567890',
    'orderId': 'O_12345',
    'products': [{
      'name': 'Okurka',
      'price': 21.0,
      'quantity': 1
    }, {
      'name': 'Brambora',
      'price': 3.5,
      'quantity': 5
    }],
    'country': 'cz'
  };


___NOTES___

Created on 30. 5. 2024 9:59:24


