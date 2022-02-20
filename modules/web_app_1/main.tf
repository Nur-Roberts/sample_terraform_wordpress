resource "azurerm_app_service_plan" "service_plan_app_1" {
  name                = "service_plan_app_1"
  location            = "${var.resource_group_location}"
  resource_group_name = "${var.resource_group_name}"
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "devationx-webv-app-2"
  location            = "${var.resource_group_location}"
  resource_group_name = "${var.resource_group_name}"
  app_service_plan_id = azurerm_app_service_plan.service_plan_app_1.id
  site_config {
    app_command_line = ""
    linux_fx_version = "COMPOSE|${filebase64("${path.module}/docker-compose.yml")}"
  }
  
}