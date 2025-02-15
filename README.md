# Troubleshoot create-resource-account-and-publish-package

I wonder: why does `account::create_resource_address` and `aptos move create-resource-account-and-publish-package` produce different resource address?

```
➜  troubleshoot-create-resource-account git:(main) aptos move test --named-addresses example=0x2
INCLUDING DEPENDENCY AptosFramework
INCLUDING DEPENDENCY AptosStdlib
INCLUDING DEPENDENCY MoveStdlib
BUILDING example
Running Move unit tests
[debug] "Derived Resource Address"
[debug] @0xe279a702e4aca7bce93900a3d324dd9ffb4eaa6dd3f3ff78caf8c314fb997b7e
[ PASS    ] 0x2::example::print_derived_resource_address
Test result: OK. Total tests: 1; passed: 1; failed: 0
{
  "Result": "Success"
}

➜  troubleshoot-create-resource-account git:(main) aptos move create-resource-account-and-publish-package --seed example_seed --address-name example
Compiling, may take a little while to download git dependencies...
UPDATING GIT DEPENDENCY https://github.com/aptos-labs/aptos-core.git
INCLUDING DEPENDENCY AptosFramework
INCLUDING DEPENDENCY AptosStdlib
INCLUDING DEPENDENCY MoveStdlib
BUILDING example
Do you want to publish this package under the resource account's address 7a53caaa16aa43ef8ce0a9d7ae5905e1415473ff2053c4c6014fd856a3a4e424? [yes/no] >
^C
```

Obviously `0xe279a702e4aca7bce93900a3d324dd9ffb4eaa6dd3f3ff78caf8c314fb997b7e` is different from `7a53caaa16aa43ef8ce0a9d7ae5905e1415473ff2053c4c6014fd856a3a4e424`.

**Note**: devnet account and private key is attached so that this can be easily reproduced.
