import 'dart:html';
import 'dart:js' as js;
import 'dart:convert';

void main() {
  print('Dart code is running!');

  final jsonData = {
    "device_id": "sensor_01",
    "ip": "192.168.0.12",
    "timestamp": "2025-09-26T12:00:00Z",
    "req_per_sec": 120,
    "status": "normal",
    "cpu_usage": "75%",
    "memory_usage": "60%"
  };

  // Parse the JSON data
  final deviceId = jsonData['device_id'];
  final ipAddress = jsonData['ip'];
  final timestamp = jsonData['timestamp'];
  final reqPerSec = jsonData['req_per_sec'];
  final status = jsonData['status'];
  final cpuUsage = jsonData['cpu_usage'];
  final memoryUsage = jsonData['memory_usage'];

  // Update the HTML elements
  document.querySelector('#deviceData').innerHtml = '''
    <p>Device ID: $deviceId</p>
    <p>IP Address: $ipAddress</p>
    <p>Timestamp: $timestamp</p>
    <p>Requests per second: $reqPerSec</p>
    <p>Status: $status</p>
    <p>CPU Usage: $cpuUsage</p>
    <p>Memory Usage: $memoryUsage</p>
  ''';
}
