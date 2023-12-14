// SPDX-License-Identifier: APACHE-2.0
pragma solidity 0.8.18;

import "../../common/BaseRelayRecipient.sol";

import "../generic/VerificationRegistry.sol";

contract VerificationRegistryGM is VerificationRegistry, BaseRelayRecipient {
    constructor(
        address trustedForwarderAddress,
        address didRegistry,
        bytes32 delegateType
    )
        VerificationRegistry(didRegistry, delegateType)
        BaseRelayRecipient(trustedForwarderAddress)
    {}

    /**
     * return the sender of this call.
     * if the call came through our Relay Hub, return the original sender.
     * should be used in the contract anywhere instead of msg.sender
     */
    function _msgSender()
        internal
        view
        override(BaseRelayRecipient, Context)
        returns (address sender)
    {
        return BaseRelayRecipient._msgSender();
    }
}
