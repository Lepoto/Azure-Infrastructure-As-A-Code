param location string = resourceGroup().location

module storage 'modules/storage.bicep' = {
  name: 'storage-account'
}

module servicePlan 'modules/app-service-plan.bicep' = {
  name: 'app-service-plan'
  params: {
    location: location
  }
}

module deployWeb 'modules/web-app.bicep' = {
  name: 'website-deployment'
  params: {
    appPlanId: servicePlan.outputs.planId
    location: location
  }
}

output siteURL string = deployWeb.outputs.siteUrl
