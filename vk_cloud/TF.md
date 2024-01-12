```terraform show```:
# data.vkcs_compute_flavor.compute:
data "vkcs_compute_flavor" "compute" {
    disk         = 0
    extra_specs  = {
        "agg_common"         = "true"
        "filter:cascadelake" = "true"
        "hw:cpu_sockets"     = "1"
        "mcs:cpu_generation" = "cascadelake-v1"
        "mcs:cpu_type"       = "standard"
    }
    flavor_id    = "3be73bcf-72d8-4853-bb33-c8cbaa8a8480"
    id           = "3be73bcf-72d8-4853-bb33-c8cbaa8a8480"
    is_public    = true
    name         = "STD2-2-4"
    ram          = 4096
    rx_tx_factor = 1
    swap         = 0
    vcpus        = 2
}

# data.vkcs_images_image.compute:
data "vkcs_images_image" "compute" {
    checksum         = "6d4ade04c95ed136e8c0f2832ee31cd2"
    container_format = "bare"
    created_at       = "2022-08-15T14:12:15Z"
    disk_format      = "raw"
    file             = "/v2/images/b75595ca-4e1d-47e0-8e95-7a02edc0e242/file"
    id               = "b75595ca-4e1d-47e0-8e95-7a02edc0e242"
    metadata         = {}
    min_disk_gb      = 0
    min_ram_mb       = 0
    most_recent      = false
    name             = "Ubuntu-22.04-202208"
    owner            = "9d013ed7c41e4bf38dd91f899e40185a"
    protected        = false
    region           = "RegionOne"
    schema           = "/v2/schemas/image"
    size_bytes       = 3758096384
    tags             = []
    updated_at       = "2022-08-16T06:01:24Z"
    visibility       = "public"
}

# data.vkcs_networking_network.extnet:
data "vkcs_networking_network" "extnet" {
    admin_state_up       = "true"
    all_tags             = [
        "dm.semenov",
        "rivalsec123qwerty",
    ]
    external             = true
    id                   = "298117ae-3fa4-4109-9e08-8be5602be5a2"
    name                 = "ext-net"
    private_dns_domain   = "openstacklocal."
    region               = "RegionOne"
    sdn                  = "neutron"
    shared               = "true"
    subnets              = [
        "62a77e13-ccc0-44b7-8cac-0567163a8a3b",
        "1e68063b-96e0-45bc-b010-579e9aabb485",
        "9ec13002-fb52-4e00-ac69-84d86a75d807",
        "cbd9c937-5339-42df-b0a7-edfb2ccfee59",
        "13b6afaa-a0da-4ffb-8061-f7b28d318fdf",
        "be9cabcf-c5f8-4e88-9e27-c5ba80f4a638",
        "c6fafdba-deb7-4ad0-83fd-ec893dedfb69",
        "489f81ad-2a0c-449d-8aed-1876ddbd7840",
        "41d17c6b-d2cf-4bd2-8784-f8a846656c3b",
        "0ee9cc75-6c0f-410e-acd8-3b443d3e6cc9",
        "be8539d5-eeff-4eaa-8048-9f7c3dbc8804",
        "01009166-1de2-413d-995c-8c2272f1bc19",
        "b2298251-6be3-444b-b213-59c66e25346b",
        "8e0ea385-3662-4b18-a078-48b2bbf14423",
        "b1911f6b-9185-45fd-a0c2-424b0c9155ce",
        "d5f70b09-6d49-445b-99f1-184d366decf6",
        "888682e5-abdd-4274-853f-b091115cce84",
        "2267f99b-83a5-49b6-ba19-e0cbac642583",
        "d10ef821-cba1-476c-bcfd-582632939e80",
        "191efdda-cd5a-4327-987d-1eb1b5b32b4d",
        "c4f89da6-529f-4a08-9df1-6b95842a07b9",
        "9731d617-c480-4b69-93e3-3b18e4640e9b",
        "5a66e4b1-1676-444e-94cf-eb37ac80d464",
        "0dbaf324-1c17-4c51-ab6f-817a2223a097",
        "b5502dbd-18c7-4f44-857a-5819265bbbdc",
        "94640c6b-6298-40d0-8c71-6aab8716d48f",
        "ec5d4a62-5039-460c-833f-7084a19794d2",
        "7f876978-01fe-43ab-8c77-7e6e32cd28c4",
        "1ea7f321-4ed0-4ae7-a136-a0226b9c5969",
        "aa2689f9-a208-4bf2-bed0-c20dab001467",
        "389a5241-76e3-48b9-89f5-5b0a938cf8b3",
    ]
    tenant_id            = "c9fe9505fdde4de680679748c7cfee7e"
    vkcs_services_access = false
}

# vkcs_compute_floatingip_associate.fip:
resource "vkcs_compute_floatingip_associate" "fip" {
    floating_ip = "89.208.223.22"
    id          = "89.208.223.22/e010336e-3d2d-4b6d-a83c-908bf18117bc/"
    instance_id = "e010336e-3d2d-4b6d-a83c-908bf18117bc"
    region      = "RegionOne"
}

# vkcs_compute_instance.compute:
resource "vkcs_compute_instance" "compute" {
    access_ip_v4        = "192.168.199.26"
    all_metadata        = {}
    all_tags            = []
    availability_zone   = "MS1"
    flavor_id           = "3be73bcf-72d8-4853-bb33-c8cbaa8a8480"
    flavor_name         = "STD2-2-4"
    force_delete        = false
    id                  = "e010336e-3d2d-4b6d-a83c-908bf18117bc"
    image_id            = "Attempt to boot from volume - no image supplied"
    key_pair            = "lab4"
    name                = "compute-instance"
    power_state         = "active"
    region              = "RegionOne"
    security_groups     = [
        "default",
        "security_group",
    ]
    stop_before_destroy = false

    block_device {
        boot_index            = 0
        delete_on_termination = true
        destination_type      = "volume"
        source_type           = "image"
        uuid                  = "b75595ca-4e1d-47e0-8e95-7a02edc0e242"
        volume_size           = 8
        volume_type           = "ceph-ssd"
    }

    network {
        access_network = false
        fixed_ip_v4    = "192.168.199.26"
        mac            = "fa:16:3e:42:c0:ae"
        name           = "net"
        uuid           = "79a1793a-9d8a-4805-99cc-a7140064668c"
    }
}

# vkcs_networking_floatingip.fip:
resource "vkcs_networking_floatingip" "fip" {
    address = "89.208.223.22"
    id      = "4bc63f15-6a3f-4438-8be4-d2b83f4815de"
    pool    = "ext-net"
    region  = "RegionOne"
    sdn     = "neutron"
}

# vkcs_networking_network.network:
resource "vkcs_networking_network" "network" {
    admin_state_up        = true
    all_tags              = []
    id                    = "79a1793a-9d8a-4805-99cc-a7140064668c"
    name                  = "net"
    port_security_enabled = true
    private_dns_domain    = "mcs.local."
    region                = "RegionOne"
    sdn                   = "neutron"
    tags                  = []
    vkcs_services_access  = false
}

# vkcs_networking_port.port:
resource "vkcs_networking_port" "port" {
    admin_state_up         = true
    all_fixed_ips          = [
        "192.168.199.23",
    ]
    all_security_group_ids = [
        "31d26839-ecb8-449b-af19-1374f29278df",
        "706c71a1-6df7-4ebe-b3ca-e202e3373261",
    ]
    all_tags               = []
    dns_assignment         = [
        {
            "hostname"   = "host-192-168-199-23"
            "ip_address" = "192.168.199.23"
        },
    ]
    id                     = "2e912800-bc3e-42dc-9ab1-bab456d01fec"
    mac_address            = "fa:16:3e:7f:e5:02"
    name                   = "port_1"
    network_id             = "79a1793a-9d8a-4805-99cc-a7140064668c"
    port_security_enabled  = true
    region                 = "RegionOne"
    sdn                    = "neutron"
    tags                   = []

    fixed_ip {
        ip_address = "192.168.199.23"
        subnet_id  = "001f535f-baac-4026-b687-06af30b3f07b"
    }
}

# vkcs_networking_port_secgroup_associate.port:
resource "vkcs_networking_port_secgroup_associate" "port" {
    all_security_group_ids = [
        "31d26839-ecb8-449b-af19-1374f29278df",
        "706c71a1-6df7-4ebe-b3ca-e202e3373261",
    ]
    enforce                = false
    id                     = "2e912800-bc3e-42dc-9ab1-bab456d01fec"
    port_id                = "2e912800-bc3e-42dc-9ab1-bab456d01fec"
    region                 = "RegionOne"
    sdn                    = "neutron"
    security_group_ids     = [
        "31d26839-ecb8-449b-af19-1374f29278df",
    ]
}

# vkcs_networking_router.router:
resource "vkcs_networking_router" "router" {
    admin_state_up      = true
    all_tags            = []
    external_network_id = "298117ae-3fa4-4109-9e08-8be5602be5a2"
    id                  = "6dcf8bc6-6f68-4f19-8996-de473c6696a4"
    name                = "router"
    region              = "RegionOne"
    sdn                 = "neutron"
    tags                = []
}

# vkcs_networking_router_interface.db:
resource "vkcs_networking_router_interface" "db" {
    id        = "e505c378-a8d0-497e-af9d-22fc62fdec92"
    port_id   = "e505c378-a8d0-497e-af9d-22fc62fdec92"
    region    = "RegionOne"
    router_id = "6dcf8bc6-6f68-4f19-8996-de473c6696a4"
    sdn       = "all"
    subnet_id = "001f535f-baac-4026-b687-06af30b3f07b"
}

# vkcs_networking_secgroup.secgroup:
resource "vkcs_networking_secgroup" "secgroup" {
    all_tags    = []
    description = "terraform security group"
    id          = "31d26839-ecb8-449b-af19-1374f29278df"
    name        = "security_group"
    region      = "RegionOne"
    sdn         = "neutron"
    tags        = []
}

# vkcs_networking_secgroup_rule.secgroup_rule_1:
resource "vkcs_networking_secgroup_rule" "secgroup_rule_1" {
    description       = "secgroup_rule_1"
    direction         = "ingress"
    ethertype         = "IPv4"
    id                = "fb889381-bbff-4525-b525-2c56ad0f0bba"
    port_range_max    = 22
    port_range_min    = 22
    protocol          = "tcp"
    region            = "RegionOne"
    remote_ip_prefix  = "0.0.0.0/0"
    sdn               = "neutron"
    security_group_id = "31d26839-ecb8-449b-af19-1374f29278df"
}

# vkcs_networking_secgroup_rule.secgroup_rule_2:
resource "vkcs_networking_secgroup_rule" "secgroup_rule_2" {
    direction         = "ingress"
    ethertype         = "IPv4"
    id                = "2ce02377-b6ef-4349-af9e-d14f46423908"
    port_range_max    = 3389
    port_range_min    = 3389
    protocol          = "tcp"
    region            = "RegionOne"
    remote_ip_prefix  = "0.0.0.0/0"
    sdn               = "neutron"
    security_group_id = "31d26839-ecb8-449b-af19-1374f29278df"
}

# vkcs_networking_subnet.subnetwork:
resource "vkcs_networking_subnet" "subnetwork" {
    all_tags        = []
    cidr            = "192.168.199.0/24"
    dns_nameservers = []
    enable_dhcp     = true
    gateway_ip      = "192.168.199.1"
    id              = "001f535f-baac-4026-b687-06af30b3f07b"
    name            = "subnet_1"
    network_id      = "79a1793a-9d8a-4805-99cc-a7140064668c"
    no_gateway      = false
    region          = "RegionOne"
    sdn             = "neutron"
    tags            = []

    allocation_pool {
        end   = "192.168.199.254"
        start = "192.168.199.2"
    }
}


Outputs:

instance_fip = "89.208.223.22"


```terraform state list```:
data.vkcs_compute_flavor.compute
data.vkcs_images_image.compute
data.vkcs_networking_network.extnet
vkcs_compute_floatingip_associate.fip
vkcs_compute_instance.compute
vkcs_networking_floatingip.fip
vkcs_networking_network.network
vkcs_networking_port.port
vkcs_networking_port_secgroup_associate.port
vkcs_networking_router.router
vkcs_networking_router_interface.db
vkcs_networking_secgroup.secgroup
vkcs_networking_secgroup_rule.secgroup_rule_1
vkcs_networking_secgroup_rule.secgroup_rule_2
vkcs_networking_subnet.subnetwork

```terraform output```:
instance_fip = "89.208.223.22"
