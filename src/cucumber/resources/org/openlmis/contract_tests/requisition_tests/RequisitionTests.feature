@RequisitionTests
Feature: Requisition Tests


  Scenario: Program Supervisor user should be able to approve a requisition
    Given I have logged in as srmanager1

    When I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 2                     | 3                | 1                 | 2                 | test                         | 5                     |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 2                     | 3                | 1                 | 2                 | test                         | 5                     | 5     |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I logout

    When I have logged in as psupervisor
    And I try update fields in requisition:
      | approvedQuantity |
      | 4                |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | approvedQuantity |
      | 4                |

    When I try to approve a requisition
    Then I should get a requisition with "APPROVED" status
    And I logout


  Scenario: Program Supervisor user should be able to reject authorized requisition
    Given I have logged in as srmanager1

    When I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    And I should get a requisition with "INITIATED" status
    And I should get a requisition without supervisoryNode

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 7                     | 3                | 3                 | 4                 | test                         | 10                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 7                     | 3                | 3                 | 4                 | test                         | 10                    | 10    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout

    When I have logged in as psupervisor
    When I try to reject authorized requisition
    Then I should get a requisition with "INITIATED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout

    
  Scenario: Storeroom Manager user should be able to delete initiated requisition
    Given I have logged in as srmanager1

    When I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    And I should get a requisition with "INITIATED" status
    And I should get a requisition without supervisoryNode

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 7                     | 3                | 3                 | 4                 | test                         | 10                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 7                     | 3                | 3                 | 4                 | test                         | 10                    | 10    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status

    When I try to delete initiated requisition
    Then I should get response of deleted requisition

    When I try to get requisition with id
    Then I should get response of not found
    And I logout


  Scenario: Program Supervisor user should be able to approve emergency requisition
    Given I have logged in as srmanager1

    When I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |

    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 20                    | 5                | 21                | 22                | test                         | 25                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 20                    | 5                | 21                | 22                | test                         | 25                    | 25    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as administrator
    When I try to get period with id:
      | periodId                             |
      | 516ac930-0d28-49f5-a178-64764e22b236 |
    Then I should get response with the period id

    #Now periods in demo data are set to current year.
    #Update period to current date.
    #Period must contains current date.
    When I try update period to current date
    Then I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 15                    | 15               | 6                 | 7                 | test                         | 30                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 15                    | 15               | 6                 | 7                 | test                         | 30                    | 30    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I logout

    When I have logged in as psupervisor
    And I try update fields in requisition:
      | approvedQuantity |
      | 10               |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | approvedQuantity |
      | 10               |

    When I try to approve a requisition
    Then I should get a requisition with "APPROVED" status
    And I logout


  Scenario: Program Supervisor user should be able to reject authorized emergency requisition
    When I have logged in as administrator
    And I try to get period with id:
      | periodId                             |
      | 516ac930-0d28-49f5-a178-64764e22b236 |
    Then I should get response with the period id

    When I try update period to current date
    Then I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    And I should get a requisition with "INITIATED" status
    And I should get a requisition without supervisoryNode

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 12                    | 20               | 8                 | 9                 | test                         | 32                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 12                    | 20               | 8                 | 9                 | test                         | 32                    | 32    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout

    When I have logged in as psupervisor
    When I try to reject authorized requisition
    Then I should get a requisition with "INITIATED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout


  Scenario: Storeroom Manager user should be able to delete initiated emergency requisition
    When I have logged in as administrator
    And I try to get period with id:
      | periodId                             |
      | 516ac930-0d28-49f5-a178-64764e22b236 |
    Then I should get response with the period id

    When I try update period to current date
    Then I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    And I should get a requisition with "INITIATED" status
    And I should get a requisition without supervisoryNode

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 12                    | 20               | 8                 | 9                 | test                         | 32                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 12                    | 20               | 8                 | 9                 | test                         | 32                    | 32    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status

    When I try to delete initiated requisition
    Then I should get response of deleted requisition

    When I try to get requisition with id
    Then I should get response of not found
    And I logout


  Scenario: Storeroom Manager user should get failure response if date outside of period when he creates emergency requisition
    When I have logged in as administrator
    And I try to get period with id:
      | periodId                             |
      | 516ac930-0d28-49f5-a178-64764e22b236 |
    Then I should get response with the period id

    When I try update period to future date
    Then I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    Then I should get response of incorrect period
    And I logout


  Scenario: Program Supervisor user should be able to approve second emergency requisition in the same period
    When I have logged in as administrator
    And I try to get period with id:
      | periodId                             |
      | 516ac930-0d28-49f5-a178-64764e22b236 |
    Then I should get response with the period id

    When I try update period to current date
    Then I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    Then I should get response with the initiated requisition's id
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 1                     | 1                | 16                | 17                | test                         | 2                     |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 1                     | 1                | 16                | 17                | test                         | 2                     | 2     |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I logout

    When I have logged in as psupervisor
    And I try update fields in requisition:
      | approvedQuantity |
      | 1                |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | approvedQuantity |
      | 1                |

    When I try to approve a requisition
    Then I should get a requisition with "APPROVED" status
    And I logout

    When I have logged in as srmanager1
    When I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true     |
    Then I should get response with the initiated requisition's id
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 2                     | 2                | 2                 | 2                 | test                         | 4                     |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 2                     | 2                | 2                 | 2                 | test                         | 4                     | 4     |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I logout

    When I have logged in as psupervisor
    And I try update fields in requisition:
      | approvedQuantity |
      | 2                |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | approvedQuantity |
      | 2                |

    When I try to approve a requisition
    Then I should get a requisition with "APPROVED" status
    And I logout


  Scenario: Warehouse Manager user should be able to convert requisition to order
    Given I have logged in as srmanager1

    When I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 9                     | 2                | 0                 | 5                 | test                         | 11                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 9                     | 2                | 0                 | 5                 | test                         | 11                    | 11    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    When I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I logout

    When I have logged in as psupervisor
    When I try update fields in requisition:
      | approvedQuantity |
      | 4                |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | approvedQuantity |
      | 4                |

    When I try to approve a requisition
    Then I should get a requisition with "APPROVED" status
    And I logout

    When I have logged in as wclerk1
    And I try to convert requisition to order
    Then I logout

    When I have logged in as srmanager1
    And I try to get requisition with id
    Then I should get a requisition with "RELEASED" status
    And I logout


  Scenario: The supervisory node should be assigned to a regular requisition after authorizing it
    Given I have logged in as srmanager1

    When I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    And I should get a requisition with "INITIATED" status
    And I should get a requisition without supervisoryNode

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 9                     | 2                | 0                 | 5                 | test                         | 11                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 9                     | 2                | 0                 | 5                 | test                         | 11                    | 11    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    When I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout


  Scenario: The supervisory node should be assigned to an emergency requisition after authorizing it
    When I have logged in as administrator
    And I try to get period with id:
      | periodId                             |
      | 516ac930-0d28-49f5-a178-64764e22b236 |
    Then I should get response with the period id

    When I try update period to current date
    Then I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | true      |
    And I should get a requisition with "INITIATED" status
    And I should get a requisition without supervisoryNode

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 9                     | 2                | 0                 | 5                 | test                         | 11                    |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity | total |
      | 9                     | 2                | 0                 | 5                 | test                         | 11                    | 11    |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    When I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout


  Scenario: Total cost should be calculated properly and not change after status changes
    Given I have logged in as srmanager1

    When I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 9                     | 2                | 0                 | 432               | test                         | 11                    |
    And I try to get requisition with id
    Then I should get updated requisition with proper total cost

    When I try update fields in requisition:
      | totalReceivedQuantity | beginningBalance | totalStockoutDays | requestedQuantity | requestedQuantityExplanation | totalConsumedQuantity |
      | 9                     | 2                | 0                 | 321               | test                         | 11                    |
    And I try to get requisition with id
    Then I should get updated requisition with proper total cost

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I should get updated requisition with proper total cost
    And I logout

    When I have logged in as smanager1
    When I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get updated requisition with proper total cost
    And I logout

    When I have logged in as psupervisor
    When I try update fields in requisition:
      | approvedQuantity |
      | 430              |
    And I try to get requisition with id
    Then I should get updated requisition with proper total cost

    When I try to approve a requisition
    Then I should get a requisition with "APPROVED" status
    And I should get updated requisition with proper total cost
    And I logout

    When I have logged in as wclerk1
    And I try to convert requisition to order
    Then I logout

    When I have logged in as srmanager1
    And I try to get requisition with id
    Then I should get a requisition with "RELEASED" status
    And I should get updated requisition with proper total cost
    And I logout


  Scenario Outline: Average consumption should be calculated properly (Number of periods to average: <periods>)
    Given I have logged in as administrator
    And I update a requisition template for program dce17f2e-af3e-40ad-8e00-3496adef44c3:
      | numberOfPeriodsToAverage |
      | <periods>                |

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |

    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 516ac930-0d28-49f5-a178-64764e22b236 | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays |
      | 10               | 0                     | 10                    | 30                | we need more                 | 20                |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays | total | adjustedConsumption | averageConsumption |
      | 10               | 0                     | 10                    | 30                | we need more                 | 20                | 10    | 30                  | <average_1>        |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 04ec3c83-a086-4792-b7a3-c46559b7f6cd | false     |

    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 04ec3c83-a086-4792-b7a3-c46559b7f6cd | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays |
      | 0                | 30                    | 20                    | 10                | we need more                 | 0                 |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays | total | adjustedConsumption | averageConsumption |
      | 0                | 30                    | 20                    | 10                | we need more                 | 0                 | 30    | 20                  | <average_2>        |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 61694e82-1be6-40a4-9aaa-bfbb720a0d7d | false     |

    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 61694e82-1be6-40a4-9aaa-bfbb720a0d7d | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays |
      | 10               | 10                    | 0                     | 20                | we need more                 | 0                 |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays | total | adjustedConsumption | averageConsumption |
      | 10               | 10                    | 0                     | 20                | we need more                 | 0                 | 20    | 0                   | <average_3>        |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | c9287c65-67fa-4958-adb6-52069f2b1379 | false     |

    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | c9287c65-67fa-4958-adb6-52069f2b1379 | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays |
      | 20               | 20                    | 15                    | 25                | we need more                 | 0                 |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays | total | adjustedConsumption | averageConsumption |
      | 20               | 20                    | 15                    | 25                | we need more                 | 0                 | 40    | 15                  | <average_4>        |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout

    When I have logged in as srmanager1
    And I try to initiate a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 2d490229-02f8-4235-9be4-1443fd8f7b4f | false     |

    Then I should get response with the initiated requisition's id

    When I try to get requisition with id
    Then I should get a requisition with:
      | programId                            | facilityId                           | periodId                             | emergency |
      | dce17f2e-af3e-40ad-8e00-3496adef44c3 | 176c4276-1fb1-4507-8ad2-cdfba0f47445 | 2d490229-02f8-4235-9be4-1443fd8f7b4f | false     |
    And I should get a requisition with "INITIATED" status

    When I try update fields in requisition:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays |
      | 25               | 25                    | 50                    | 50                | we need more                 | 0                 |
    And I try to get requisition with id
    Then I should get a updated requisition with:
      | beginningBalance | totalReceivedQuantity | totalConsumedQuantity | requestedQuantity | requestedQuantityExplanation | totalStockoutDays | total | adjustedConsumption | averageConsumption |
      | 25               | 25                    | 50                    | 50                | we need more                 | 0                 | 50    | 50                  | <average_5>        |

    When I try to submit a requisition
    Then I should get a requisition with "SUBMITTED" status
    And I logout

    When I have logged in as smanager1
    And I try to authorize a requisition
    Then I should get a requisition with "AUTHORIZED" status
    And I should get a requisition with "fb38bd1c-beeb-4527-8345-900900329c10" supervisoryNode
    And I logout

    Examples:
    | periods | average_1 | average_2 | average_3 | average_4 | average_5 |
    | 2       | 30        | 25        | 10        | 8         | 33        |
    | 3       | 30        | 25        | 17        | 12        | 22        |
    | 4       | 30        | 25        | 17        | 17        | 22        |
