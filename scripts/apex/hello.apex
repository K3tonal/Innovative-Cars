// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents


        Account acc = new Account(Name='Test Account');    
        insert acc;

        List<Dealership__c> dealerships = new List<Dealership__c>{
            new Dealership__c(Name='Test Dealer 1', Account__c = acc.Id),
            new Dealership__c(Name='Test Dealer 2', Account__c = acc.Id)};        
        insert dealerships;

        Vehicle__c vehicle = new Vehicle__c(Brand__c='Test Vehicle');
        insert vehicle;
        
    //     List<Car_Offer__c> carOffers = new List<Car_Offer__c> {
    //        new Car_Offer__c(Vehicle__c = vehicle.Id, Dealership__c = dealerships.get(0).Id, Offer_Type__c = 'physical'),
    //        new Car_Offer__c(Vehicle__c = vehicle.Id, Dealership__c = dealerships.get(1).Id, Offer_Type__c = 'physical')
    //    }; 
        
        for(Dealership__c dealer : dealerships){
            Car_Offer__c carOffer = new Car_Offer__c(Vehicle__c=vehicle.id, Dealership__c = dealer.Id, Offer_Type__c='physical');
            insert carOffer;
        }
       
    //    insert carOffer1;
    //    insert carOffer2;


    
    //    List<Dealership__c> dealerships = CarOfferDataFactory.createDealersWithAccount(2);
    //    insert dealerships;
       

    //    Vehicle__c vehicle = new Vehicle__c(Brand__c='Test Vehicle');
    //    insert vehicle;

    //    List<Car_Offer__c> carOffers = new List<Car_Offer__c> {
    //        new Car_Offer__c(Vehicle__c = vehicle.Id, Dealership__c = dealerships.get(0).Id, Offer_Type__c = 'physical'),
    //        new Car_Offer__c(Vehicle__c = vehicle.Id, Dealership__c = dealerships.get(1).Id, Offer_Type__c = 'physical')
    //    };
    //    System.debug('###################' + carOffers);

    //    Database.insert(carOffers,false);