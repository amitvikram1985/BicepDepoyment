@description('Specifies the location for resources.')
param location string = 'Australia East'

@description('SKU for the storage account')
@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_ZRS'
  'Premium_LRS'
])
param storageAccountType string = 'Standard_LRS'

resource platformStorage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'stgdevtest1'
  kind: 'BlobStorage'
  sku: {
    name: storageAccountType
  }
location: location
properties: {
  accessTier: 'Cool'
}
}
