param location string = resourceGroup().location

module storage './modules/storage.bicep' = {
  name: 'storage-account'
}
