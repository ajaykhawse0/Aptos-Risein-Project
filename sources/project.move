module MyModule::InsurancePolicyAutomation {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    struct Policy has store, key {
        owner: address,   // Owner of the policy
        premium: u64,     // Premium amount
        is_active: bool,  // Status of the policy
    }

    /// Function to create a new insurance policy.
    public fun create_policy(owner: &signer, premium: u64) {
        let policy = Policy {
            owner: signer::address_of(owner),
            premium,
            is_active: true,
        };
        move_to(owner, policy);
    }


}
