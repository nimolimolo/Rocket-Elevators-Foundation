# Readme for the Rocket Elevators GraphQL API available with Postman at https://infinite-sea-03807.herokuapp.com/graphiql

* Ruby version : ruby 2.6.6

* Rails version: Rails 5.2.6

* Important Gems: 'graphql', 'graphiql-rails'.

* Databases: The remote MySQL & PostgreSQL databases of the codeboxx servers.

* Example Queries :
- The queries can be modified to exactly the fields needed.

1. Query 1 :
{
  interventionInfo(id:23) {
    id
    startDate
    endDate
    Address{
      NumberAndStreet
      City
      Country
      PostalCode
      TypeOfAddress
    }  
  }
}

2. Query 2 :
{
  buildingInfo(id:23) {
    id
    interventions{
      Report
      Result
      Status
      batteryId
      buildingId
      columnId
      elevatorId
      employeeId
    }
    customerInfo {
      CompanyContactPhone
      CompanyDescription
      CompanyName
      EmailOfTheCompany
      NameOfContact
      NameOfServiceTechAuthority
      TechAuhtorityPhone
      TechManagerServiceEmail
    }
  }
}

3. Query 3 :
{
  employeeInfo(id:2) {
    id
    FirstName
    LastName
    Title
    interventions {
      id
      Report
      Result
      Status
    }
  }
}