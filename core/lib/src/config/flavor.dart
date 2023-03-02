enum Flavor {
  testing,
  prototype,
  staging,
  production,
}

const prototype = 'prototype';
const stg = 'staging';
const prod = 'production';

Flavor getFlavor(String appFlavor) {
  switch (appFlavor) {
    case prototype:
      return Flavor.prototype;
    case stg:
      return Flavor.staging;
    case prod:
      return Flavor.production;
  }
  throw Exception('Unknown App Flavor');
}
