enum Flavor {
  development,
  production,
}

const dev = 'development';
const prod = 'production';

Flavor getFlavor(String appFlavor) {
  switch (appFlavor) {
    case dev:
      return Flavor.development;
    case prod:
      return Flavor.production;
  }
  throw Exception('Unknown App Flavor');
}
