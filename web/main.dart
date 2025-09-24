import 'dart:html';
import 'dart:js' as js;

void main() {
  js.context.callMethod('console.log', ['Hello from Dart!']);
  querySelector('#output')?.text = 'Hello from Dart!';

  querySelector('#myButton')?.onClick.listen((event) {
    var inputText = (querySelector('#inputField') as InputElement)?.value;
    querySelector('#textOutput')?.text = inputText;
  });
}
