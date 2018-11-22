global class Cust_apexdataprovider implements docmCharts.IDOCMDataProvider {
    public String getJSONData(){
        String data='[{"name": "North","data": "[5, 7, 10, 15, 20, 18, 12, 15, 18, 20]"},{"name": "East","data": "[3, 5, 4, 7, 8, 9, 7, 6, 7, 8]"},{"name": "West","data": "[4, 3, 2, 3, 4, 3, 4, 5, 6, 7]"},{"name": "South","data": "[2, 6, 7, 9, 9, 9, 3, 8, 9, 6]"}]';
        return data;
       	}
}