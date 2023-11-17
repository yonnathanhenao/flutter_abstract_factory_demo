part of com.flutter_abstract_factory_demo.factories;

class FormCountryFactory {
  IFormCountry getFactory(String country) {
    switch (country) {
      case 'CO':
        return ColombiaFactory();
      case 'PE':
        return PeruFactory();
      default:
        throw UnimplementedError();
    }
  }
}
