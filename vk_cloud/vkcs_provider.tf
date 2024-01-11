terraform {
    required_providers {
        vkcs = {
            source = "vk-cs/vkcs"
            version = "~> 0.5.2" 
        }
    }
}

provider "vkcs" {
    # Your user account.
    username = "r.gabdullin@innopolis.university"

    # The password of the account
    password = "Wyfg2MM#dNz$e!@"

    # The tenant token can be taken from the project Settings tab - > API keys.
    # Project ID will be our token.
    project_id = "10b9c89ee1994ed899e6dee534e31b9f"
    
    # Region name
    region = "RegionOne"
    
    auth_url = "https://infra.mail.ru:35357/v3/" 
}
