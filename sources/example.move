module example::example {
    const RESOURCE_ACCOUNT_SEED: vector<u8> = b"example_seed";

    #[test_only]
    use aptos_framework::account;

    #[test]
    fun print_derived_resource_address() {
        std::debug::print(&std::string::utf8(b"Derived Resource Address"));
        std::debug::print(&account::create_resource_address(&@deployer, RESOURCE_ACCOUNT_SEED));
    }
}