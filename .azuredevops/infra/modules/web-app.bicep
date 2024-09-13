param location string

param appPlanId string

resource webApplication 'Microsoft.Web/sites@2023-12-01' = {
  name: 'shapers-site'
  location: location
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/appServicePlan': 'Resource'
  }
  properties: {
    serverFarmId: appPlanId
    httpsOnly: true
  }
}

// Output the site url
output siteUrl string = webApplication.properties.hostNames[0]
