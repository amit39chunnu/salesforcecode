/* 
 * Message : 
 * 1. It is a predefined apex class .
 * 2. It is defined under the namespace of the Apexpages.
 * 3. This class is used to define messages in the VF pages 
 * 4. syntax : 
 * 			Apexpages.Message(Apexpages.Severity.Type,Message)
 * 			SeverityType" CONFIRM
 * 						: ERROR 
 * 						: WARNING
 * 						: INFO 
 * 						: 
 * Note: After creating the message add them to the page
 */ 
public class Apex_Messages_Example {
    public Apex_Messages_Example(){
        Apexpages.Message msg1 =new Apexpages.Message(Apexpages.Severity.CONFIRM,'Success');
		Apexpages.Message msg2 =new Apexpages.Message(Apexpages.Severity.ERROR,'Error Message');
		Apexpages.Message msg3 =new Apexpages.Message(Apexpages.Severity.INFO,'Info Message');
        Apexpages.addMessage(msg1);
        Apexpages.addMessage(msg2);
        Apexpages.addMessage(msg3);
    }
}