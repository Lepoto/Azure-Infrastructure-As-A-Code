param skuNam string = 'B1'

param location string = resourceGroup().location

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'shapers-dev-website'
  location: location
  sku: {
    name: skuNam
    capacity: 1
  }
}

output planId string = appServicePlan.id
