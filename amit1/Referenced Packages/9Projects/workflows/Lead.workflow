<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>NewQueryEmailAlert</fullName>
        <ccEmails>jeevanpal@ninehertzindia.com</ccEmails>
        <description>New Query Email Alert(Task or lead assign Alert)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NineProjects_Email_Templates/NewQuery</template>
    </alerts>
    <rules>
        <fullName>LeadAssignmentEmailAlert</fullName>
        <actions>
            <name>NewQueryEmailAlert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.LastName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Email</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Lead.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Email</subject>
    </tasks>
</Workflow>
