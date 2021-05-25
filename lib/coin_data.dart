import 'package:bitcoin_ticker/apikey.dart';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD';

class CoinData {
  Future<String> getCoinData() async {
    final response = await http.get(
      Uri.parse(coinAPIURL + '?apikey=' + kAPIKey),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load the rate');
    }
  }
}
