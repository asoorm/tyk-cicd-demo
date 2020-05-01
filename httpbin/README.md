# HttpBin OAS Import

```
diff ./httpbin/spec1.json ./httpbin/spec2.json 
14c14
<     "version": "v1"
---
>     "version": "v2"
1729c1729
<           "application/xml"
---
>           "application/json"
1733c1733
<             "description": "An XML document."
---
>             "description": "A JSON Document."
1736c1736
<         "summary": "Returns a simple XML document.",
---
>         "summary": "Returns an XML to JSON document.",
```
