#provider
#grabing variable from modules/variable.tf
#modules - Research about modules on remote source on terraform cloud or vcs like ADO repos
#for git
#source = "git::ssh://username@example.com/storage.git"
#https://developer.hashicorp.com/terraform/language/modules
#https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa

module "storage_account1" {
    source       = "./modules/storage-account"
    saname       = "stgacct01"
    rgname       = azurerm_resource_group.rg.name
    location     = azurerm_resource_group.rg.location
}

module "storage_account2" {
    source       = "./modules/storage-account"
    saname       = "stgacct02"
    rgname       = azurerm_resource_group.rg.name
    location     = azurerm_resource_group.rg.location
}