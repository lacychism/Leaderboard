object DMEmailChecker: TDMEmailChecker
  OldCreateOrder = False
  Height = 150
  Width = 215
  object EMSProvider1: TEMSProvider
    ApiVersion = '1'
    URLHost = '127.0.0.1'
    URLPort = 8080
    Left = 24
    Top = 16
  end
  object BackendEndpoint1: TBackendEndpoint
    Provider = EMSProvider1
    Params = <
      item
        name = 'item'
      end>
    Resource = 'EmailChecker'
    ResourceSuffix = 'item'
    Response = RESTResponse1
    Left = 144
    Top = 56
  end
  object RESTResponse1: TRESTResponse
    Left = 88
    Top = 56
  end
end
