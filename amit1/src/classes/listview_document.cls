public class listview_document {
	@AuraEnabled
    public static List<Document> getdoc(){
        List<Document> doc=[Select Id,Name from Document];
        return doc;
    }
}