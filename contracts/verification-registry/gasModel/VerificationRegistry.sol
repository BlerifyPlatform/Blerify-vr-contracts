//SPDX-License-Identifier: MIT
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
        bytes memory bytesSender;
        bool success;
        (success, bytesSender) = trustedForwarder.staticcall(
            abi.encodeWithSignature("getMsgSender()")
        );

        require(success, "SCF");

        return abi.decode(bytesSender, (address));
    }
}
