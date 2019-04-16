# pgadmin
Helm chart for pgAdmin, web administration platform for PostgreSQL
# pgadmin
Helm chart for pgAdmin, web administration platform for PostgreSQL



The pgAdmin is accessible through an ingress service customizable by `pgadmin.ingress.host` and an optional second address `pgadmin.ingress.secondHost` 

## notes
Using the pgAdmin, it will be possible to add existing dB instances to administer.
It will be also possible to backup/restore dB using the available menus. However, the backups will be stored within the pod hosting the pgAdmin instance. This means that your backup size is restricted to the size of the `pgadmin.persistence.size` defined within `values.yaml` file.


## Configuration

The following tables lists the most important configurable parameters of the pgAdmin chart and their default values:


#### Parameters:

| Parameter                             | Description                                                                                                                             | Default           |
|---------------------------------------|---------------------------------------------------------------|-------------------------------------|
| `pgadmin.config.email`                | This is the email address used when setting up the initial administrator account to login to pgAdmin.                                   | `nil`                                          |
| `pgadmin.secrets.password`            | This is the password used when setting up the initial administrator account to login to pgAdmin.                                        | `_random 10 character alphanumeric string_`    |
| `pgadmin.persistence.storageClass`    | StorageClass to be used for settings and backups.                                                                                       | `nil`                                          |
| `pgadmin.persistence.size`            | Size assigned to the persistence storage class.                                                                                         | `nil`                                          |
| `pgadmin.persistence.enabled`         | Is the persistence enabled?                                                                                                             | `nil`                                          |
| `pgadmin.ingress.host`                | full host name to access the ingress service (eg: pgadmin.svc-mgmt.ccp01-a.atlantica.admin.ch).                                         | `nil`                                          |
| `pgadmin.ingress.secondHost`          | (optional) second full host name to access the ingress service (eg: pgadmin-cbcd.svc.ccp01-a.atlantica.admin.ch).                                         | `nil`                                          |