import CoreData

@objc(WeatherModel)
public class WeatherModel: NSManagedObject {
    @NSManaged public var temperature: Double
    @NSManaged public var humidity: Double
    @NSManaged public var timestamp: Date
    @NSManaged public var location: String
}

extension WeatherModel {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<WeatherModel> {
        return NSFetchRequest<WeatherModel>(entityName: "WeatherModel")
    }
}
