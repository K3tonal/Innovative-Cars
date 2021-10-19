// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);


// Vehicle__c vehicle1 = new Vehicle__c(Brand__c='Test Vehicle1');
// Vehicle__c vehicle2 = new Vehicle__c(Brand__c='Test Vehicle2');
// insert vehicle1;
// insert vehicle2;

// Telemetry__c tele1 = new Telemetry__c(Vehicle__c=vehicle1.Id);
// Telemetry__c tele2 = new Telemetry__c(Vehicle__c=vehicle1.Id);
// Telemetry__c tele3 = new Telemetry__c(Vehicle__c=vehicle1.Id);
// insert tele1;
// insert tele2;
// insert tele3;


// Telemetry__c tele5 = new Telemetry__c(Vehicle__c=vehicle2.Id);
// insert tele5;



// List<Vehicle__c> vehicleList = new List<Vehicle__c>();
// vehicleList.add(vehicle1);
// vehicleList.add(vehicle2);
// System.debug('############' + vehicleList);
// delete vehicleList;


//VehicleDataFactory.createVehiclesWithTelemetry(2,3);

// Task task = new Task(Subject='Other', Priority='Normal',Status='Open Task',Description='test');
// insert task;
       
        List<Vehicle__c> vehicleList = VehicleDataFactory.createVehiclesWithTelemetry(2,3);
        
       
        Database.delete(vehicleList,false);

        // Todo__c todo = new Todo__c(Status__c='New', Description__c = 'Please check Env after Vehicle deletion.');
        // insert todo;
      