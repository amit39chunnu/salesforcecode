global class DonutChartDataProvider implements docmCharts.IDOCMDataProvider {

 public String getJSONData() {
 String jsData = '[{"category": "Test Level 1","value": 43}, {"category": "Test Level 2", "value": 37}, {"category": "Test Level 3","value": 20}]';
 return jsData;
 }
}