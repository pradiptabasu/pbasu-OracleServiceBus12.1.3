xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "HelloWorld_Schema.xsd" ::)

declare variable $requestPayload as element() (:: schema-element(ns1:requestElement) ::) external;

declare function local:generatePersonalisedWelcomeGreetings($requestPayload as element() (:: schema-element(ns1:requestElement) ::)) as element() (:: schema-element(ns1:responseElement) ::) {
    <ns1:responseElement>
        <ns1:greetings>{fn:concat("Hello ",$requestPayload/ns1:name/text()," !!!")}</ns1:greetings>
    </ns1:responseElement>
};

local:generatePersonalisedWelcomeGreetings($requestPayload)
