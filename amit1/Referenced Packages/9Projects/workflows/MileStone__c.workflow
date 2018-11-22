<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>MilestoneApprovalAlert</fullName>
        <description>Milestone approval Alert</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>amit1@capinfo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NineProjects_Email_Templates/MilestoneApproved</template>
    </alerts>
    <alerts>
        <fullName>MilestoneRejectionAlert</fullName>
        <description>Milestone Rejection Alert</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>amit1@capinfo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NineProjects_Email_Templates/MilestoneRejected</template>
    </alerts>
</Workflow>
