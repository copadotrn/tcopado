<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>HKT_MASTER_DATA_Update_Reference_ID</fullName>
        <description>Update Unique Reference ID on HKT Master Data when record being modified</description>
        <field>Reference_Id__c</field>
        <formula>RecordType.DeveloperName + &quot; &quot; + Name</formula>
        <name>HKT_MASTER_DATA Update Reference ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>HKT_MASTER_DATA Create Reference ID</fullName>
        <actions>
            <name>HKT_MASTER_DATA_Update_Reference_ID</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Business_Model_Configuration__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Create Unique Reference ID on HKT Master Data by Record Type + Name</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>