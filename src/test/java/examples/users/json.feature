Feature: json feature test

Scenario: json reader 

* def jsonObject =
"""
[
{
"name" : "Avi",
"Country" : "India",
"age" : 25
},
{
"name" : "Tom",
"country " : "USA",
"age" : 24
}]
"""
* print jsonObject
* print jsonObject[0]
* print jsonObject[01]
* print jsonObject[1]


Scenario: complex json

* def jsonObject = 
"""
{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}
"""

* print jsonObject
* print jsonObject.menu
* print jsonObject.menu.id
* print jsonObject.id
* print jsonObject.menu.value
* print jsonObject.menu.popup
* print jsonObject.menu.popup.menuitem
