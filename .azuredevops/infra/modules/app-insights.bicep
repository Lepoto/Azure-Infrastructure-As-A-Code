param location string = resourceGroup().location

param logAnalyticsWS string

resource appInsightsComponents 'Microsoft.Insights/components@2020-02-02' = {
  name: 'shapers-appi-dev'
  location: location
  kind: 'web'
  properties: {
    Application_Type: 'web'
    WorkspaceResourceId: logAnalyticsWS
  }
}
