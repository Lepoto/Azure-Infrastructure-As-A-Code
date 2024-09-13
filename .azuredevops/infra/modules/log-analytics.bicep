param location string = resourceGroup().location

resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2020-10-01' = {
  name: 'shapers-logsAnalytics'
  location: location
  properties: {
    sku: {
      name: 'Free'
    }
  }
}
