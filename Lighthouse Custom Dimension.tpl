___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Lighthouse Custom Dimension",
  "description": "This variable returns the user id from GA tracking that is used in Lighthouse. Using customTaks in the universal analytics pageview tag assign it in the fields to set section.",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "MACRO",
  "version": 1,
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "help": "You will find this number next to the custom dimension on your GA account under the admin settings \u003e property \u003e Custom Definitions \u003e Custom Dimensions.\nIf you do not have it already, you can create it there and paste it\u0027s index number here",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "NUMBER"
      }
    ],
    "displayName": "Custom Dimension Index number",
    "defaultValue": 1,
    "simpleValueType": true,
    "name": "cdIndex",
    "type": "TEXT"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const cdi = data.cdIndex;

return (model) => model.set('dimension' + cdi, model.get('clientId'));


___TESTS___

scenarios: []


___NOTES___

Created on 2/20/2020, 3:27:47 PM


