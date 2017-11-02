Place var files in here to be provide site overrides from the ones defined in the roles.  Var files will be dynamically looked up by their file name to include the vars defined within them.  Used for mapping names to identifiers and for providing groups of vars.

Placing a `default.yml` in any of the variable folders will cause that file to be loaded by default if no file exists for the lookup.

Var folders

* images
 * Defines the AMI and vars to be used based on the `image_type` var passed in	
* infinidb_profiles
 * Defines the installation layout to be used based on the `infinidb_install_profile` var passed in
* instance_types
 * Defines variables describing the EC2 instance used based on the `instance_type` var passed in
* keys
 * Defines the AWS keypair to be used based on the `keypair` var passed in
* security_groups
 * Defines the AWS security group name to be used based on the `security_group` var passed in
* ssh_keys
 * The SSH keys available to be provisioned for an user.  Will be found based on the `ssh_authenticated_keys` and `ssh_private_keys` defined in the user var
* subnets
 * Defines the AWS subnet to be used based on the `subnet` var passed in
* validation_vars
 * Allows overriding / extending the variable validation that occurs in the `ec2_common` and `infinidb_common` roles
