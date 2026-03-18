<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
    xmlns:c="http://www.w3.org/ns/xproc-step" version="3.0">
    <p:input port="source">
        <p:inline>
            <doc>Hello XPorc!</doc>
        </p:inline>
    </p:input>
    
    <p:input port="images" sequence="true">
        <p:inline>
            <image src="image-1.png"/>        
        </p:inline>
        <p:inline>
            <image src="image-2.png"/>        
        </p:inline>
    </p:input>
    
    <p:output port="result"/>
    
    <p:add-attribute attribute-name="my-att" 
        attribute-value="my-value"/>
    
</p:declare-step>