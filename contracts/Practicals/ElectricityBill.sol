// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract ElectricityBill {
    // Define a struct to represent a consumer
    struct Consumer {
        string name;
        string Address;
        uint256 consumerID;
        uint256 units;
        uint256 amount;
    }

    // Create a mapping to store consumers by consumer ID
    mapping(uint256 => Consumer) public consumers;

    // Function to calculate the electricity bill
    function calculateBill(uint256 _units) internal pure returns (uint256) {
        uint256 bill;

        // Calculate the bill for the first 50 units
        if (_units <= 50) {
            bill = _units * 50; // Rs. 0.50/unit
        } else {
            bill = 50 * 50; // Rs. 0.50/unit for the first 50 units

            // Calculate the bill for the next 100 units
            uint256 remainingUnits = _units - 50;
            if (remainingUnits <= 100) {
                bill += remainingUnits * 75; // Rs. 0.75/unit
            } else {
                bill += 100 * 75; // Rs. 0.75/unit for the next 100 units

                // Calculate the bill for the next 100 units
                remainingUnits -= 100;
                if (remainingUnits <= 100) {
                    bill += remainingUnits * 120; // Rs. 1.20/unit
                } else {
                    bill += 100 * 120; // Rs. 1.20/unit for the next 100 units

                    // Calculate the bill for units above 250
                    remainingUnits -= 100;
                    bill += remainingUnits * 1500; // Rs. 15.00/unit
                }
            }
        }

        // Add a 20% surcharge to the bill
        bill += (bill * 20) / 100;

        return bill;
    }

    // Function to add a consumer
    function addConsumer(string memory _name, string memory _address, uint256 _consumerID, uint256 _units) public {
        // Check if the consumer already exists
        require(consumers[_consumerID].consumerID == 0, "Consumer already exists");

        // Calculate the electricity bill
        uint256 amount = calculateBill(_units);

        // Create a new consumer and add it to the mapping
        consumers[_consumerID] = Consumer(_name, _address, _consumerID, _units, amount);
    }

    // Function to display consumer information
    function displayConsumer(uint256 _consumerID) public view returns (string memory, string memory, uint256, uint256, uint256) {
        // Check if the consumer exists
        require(consumers[_consumerID].consumerID != 0, "Consumer not found");

        // Return the consumer information
        return (consumers[_consumerID].name, consumers[_consumerID].Address, consumers[_consumerID].consumerID, consumers[_consumerID].units, consumers[_consumerID].amount);
    }

    // Function to display all consumers
    function displayAllConsumers() public view returns (string[] memory, string[] memory, uint256[] memory, uint256[] memory, uint256[] memory) {
        // Create arrays to store the consumer information
        string[] memory names = new string[](5);
        string[] memory addresses = new string[](5);
        uint256[] memory consumerIDs = new uint256[](5);
        uint256[] memory units = new uint256[](5);
        uint256[] memory amounts = new uint256[](5);

        // Iterate over the consumers and add their information to the arrays
        uint256 count = 0;
        for (uint256 i = 1; i <= 5; i++) {
            if (consumers[i].consumerID != 0) {
                names[count] = consumers[i].name;
                addresses[count] = consumers[i].Address;
                consumerIDs[count] = consumers[i].consumerID;
                units[count] = consumers[i].units;
                amounts[count] = consumers[i].amount;
                count++;
            }
        }

        // Return the consumer information
        return (names, addresses, consumerIDs, units, amounts);
    }
}