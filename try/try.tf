/*
The try() evaluates all [arguments …] expression passed into it, 
and it will return the value of the 1st one that does not return an error. 
At this time, try() is recommended for use in local values variables.
*/

# Try example
data "http" "primary-server" {
  url = "https://ip-ranges.amazonaws.com/ip-ranges.json"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

data "http" "json-body" {
    url = "https://support.oneskyapp.com/hc/en-us/article_attachments/202761627/example_1.json"

    request_headers = {
        Accept = "application/json"
    }
}

locals {
    fruit = try(jsondecode(data.http.json-body.body).fruit, "NO FRUIT AVAILABLE")
    fakeKey = try(jsondecode(data.http.json-body.body).fakeKey, "This key does not exist in JSON")
    # fakeKey = jsondecode(data.http.json-body.body).fakeKey //ugly error when you do not use try

    /*
        Using For loops
        somevar = try(distinct([
        for items in jsondecode(data.http.json-body.body).arrayKey:
        items.arrayKey
        ]), "NO LIST PROVIDED")
    */
}

output "response-json-fruit" {
  value = local.fruit
}
output "response-json-fakeKey" {
    value = local.fakeKey
}


