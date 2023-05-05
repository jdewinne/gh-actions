# CLI: Get a Customer License ID

---
title: CLI get customer license id
---
graph LR
cli_get_customer_license_id["CLI get customer license id"]
replicated_app ---> cli_get_customer_license_id
replicated_api_token ---> cli_get_customer_license_id
customer ---> cli_get_customer_license_id
cli_get_customer_license_id ---> license_id