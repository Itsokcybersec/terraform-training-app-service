resource "azurerm_resource_group" "laeli_rg_dev" {
  name     = "${var.company_division}-rg-${var.environment}"
  location = "Canada Central" #"West Europe"
}

resource "azurerm_app_service_plan" "xyz-app-service-plan-lab" {
  name                = "${var.company_division}-app-service-plan-${var.environment}"
  location            = azurerm_resource_group.laeli_rg_dev.location
  resource_group_name = azurerm_resource_group.laeli_rg_dev.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "xyz-app-service-lab" {
  name                = "${var.company_division}-app-service-${var.environment}"
  location            = azurerm_resource_group.laeli_rg_dev.location
  resource_group_name = azurerm_resource_group.laeli_rg_dev.name
  app_service_plan_id = azurerm_app_service_plan.xyz-app-service-plan-lab.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}