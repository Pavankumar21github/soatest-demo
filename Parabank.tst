---
parasoftVersion: 2024.2.0
productVersion: 10.7.1
schemaVersion: 1
suite:
  $type: TestSuite
  hasEnvironmentConfig: true
  environmentConfig:
    environments:
    - variables:
      - name: OPENAPI
        value: https://parabank.parasoft.com/parabank/services/bank/openapi.yaml
      - name: BASEURL
        value: https://parabank.parasoft.com/parabank/services/bank
      - name: USERNAME
        value: john
      - name: PASSWORD
        value: demo
      name: New Environment
      active: true
  enabled: true
  name: Test Suite
  rootTestSuite: true
  lastModifiedBy: Admin
  profileMappingID: 0
  maxProfileMappingID: 1
  nextIdentifier: 4
  tests:
  - $type: RESTClientToolTest
    testLogic: true
    testID: 2
    enabled: true
    name: "/login/{username}/{password} - GET"
    performanceGroup: 17
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: Rest client
      outputTools:
      - $type: DiffTool
        iconName: Diff
        name: "Diff control generated on Nov 14, 2024, 2:11:50 PM."
        differs:
        - $type: TextDiffer
        - $type: JSONDiffer
        source:
          controls:
          - keys:
            - ""
            - ""
            row:
              refs:
              - dataSourceName: ""
              last: false
          - |-
            {
                "id" : 12212,
                "firstName" : "John",
                "lastName" : "Smith",
                "address" : {
                    "street" : "1431 Main St",
                    "city" : "Beverly Hills",
                    "state" : "CA",
                    "zipCode" : "90210"
                },
                "phoneNumber" : "310-447-4121",
                "ssn" : "622-11-9999"
            }
        mode: 3
      formJson:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            hash: 1
            localName: root
            bodyType:
              $type: ComplexType
              hash: 2
              attributes:
              - hash: 3
                ns: ""
                name: type
                fixed: object
                contentType:
                  $type: StringType
                  hash: 4
                required: true
              name: rootType
              compositor: true
              compositorObj:
                $type: AllCompositor
                hash: 5
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            attributes:
            - replacedColumn: ""
              value:
                $type: StringValue
                replacedColumn: ""
                value: object
              useValue: true
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
        elementTypeName: root
      hasServiceInfo: true
      serviceInfo:
        serviceDescriptor:
          $type: StandardServiceDescriptor
          location: https://parabank.parasoft.com/parabank/services/bank/openapi.yaml
        serviceName: ""
        versionName: ""
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      schemaURL:
        MessagingClient_SchemaLocation: "${OPENAPI}"
      formInput:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            hash: 1
            localName: ""
            bodyType:
              $type: ComplexType
              hash: 2
              name: anonymous
              compositor: true
              compositorObj:
                $type: SequenceCompositor
                hash: 3
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
      jmsMessageOutputProvider:
        $type: JMSMessageOutputProvider
        jmsOutputProviderRequest:
          $type: JMSOutputProvider
          name: Request Object
          menuName: Object
        jmsOutputProviderResponse:
          $type: JMSOutputProvider
          name: Response Message Object
          menuName: Message Object
      validResponseRange:
        validResponseRange:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            validResponseRange: 200
      router:
        values:
        - $type: ScriptedValue
        fixedValue:
          $type: StringTestValue
          HTTPClient_Endpoint: "${BASEURL}/login/{username}/{password}"
      transportProperties:
        manager:
          protocol: 1
          properties:
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: Accept
                  value:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      value: application/json
            protocol: 1
            keepAlive1_1:
              bool: true
        messageExchangePattern:
          inverted: true
      outputProviders:
        requestHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Request Transport Header
        responseHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Response Transport Header
        xmlRequestOutput:
          $type: NamedXMLToolOutputProvider
          menuName: Traffic
          name: Request Traffic
        trafficOutput:
          m_name: Traffic Stream
        objectOutput:
          $type: ObjectOutputProvider
          outputTools:
          - $type: TrafficViewer
            iconName: TrafficViewer
            name: Traffic Viewer
            showRequestHeaders: true
            showResponseHeaders: true
          name: Traffic Object
      formXML:
        doctype: ""
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: application/json
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: login
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: "{username}"
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: "{password}"
      constrainedPath:
        pathParameters:
        - $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            hash: 1
            localName: username
            bodyType:
              $type: StringType
              hash: 2
          replacedColumn: ""
          values:
          - $type: StringValue
            replacedColumn: ""
            value: "${USERNAME}"
        - $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            hash: 1
            localName: password
            bodyType:
              $type: StringType
              hash: 2
          replacedColumn: ""
          values:
          - $type: StringValue
            replacedColumn: ""
            value: "${PASSWORD}"
      resourceMethod:
        resourceId: "/login/{username}/{password}"
        httpMethod: GET
      resourceMode: 3
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
          value: https://parabank.parasoft.com/parabank/services/bank
        fixedValue:
          $type: StringTestValue
          value: "${BASEURL}"
