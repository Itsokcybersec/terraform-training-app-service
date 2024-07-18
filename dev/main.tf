resource "azurerm_resource_group" "rg" {
  name     = "${var.environment}-rg"
  location = var.location
}

module "app-service" {
    source = "../modules/webapp"
    app_service_name = "${var.environment}-main-app-service"
    app_service_plan_name = "app_service_plan"
    resource_group_name = "rg"
    resource_group_location = "Canada Central"

}