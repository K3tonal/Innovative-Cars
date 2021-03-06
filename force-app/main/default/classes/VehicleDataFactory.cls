/*   @author name <wojciech.krasowski@accenture.com> * @date 18/10/2021 * 
* *  @description Vehicle Data Factory Class
* *  @Task: POX-1 
* */
public with sharing class VehicleDataFactory {
    
    /** * @author name <wojciech.krasowski@accenture.com> * @date 18/10/2021 * 
     * *  @description Method creates List of Vehicles and associated Telemetry records
     * *  based on given ammounts
     * *  @Task: POX-1 
     * *  @param numberOfVehicles Number of Vehicle record to create
     * *  @param telemetryPerVeh Number of associated Telemetry record to create
     * *  @return list of vehicles
     * */
    public static List<Vehicle__c> createVehiclesWithTelemetry(Integer numberOfVehicles, Integer telemetryPerVeh){

        List<Vehicle__c> vehicleList = new List<Vehicle__c>();

        for(Integer i = 0; i < numberOfVehicles; i ++){
            Vehicle__c vehicle = new Vehicle__c(Brand__c='TestBrand' +i);
            insert vehicle;

            for( Integer j =0 ; j < telemetryPerVeh; j++){
                Telemetry__c tele = new Telemetry__c(Vehicle__c = vehicle.id);
                insert tele;
            }
            vehicleList.add(vehicle);
        }
        return vehicleList;
    }
}
