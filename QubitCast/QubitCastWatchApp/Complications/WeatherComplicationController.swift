import ClockKit

class WeatherComplicationController: NSObject, CLKComplicationDataSource {
    func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void) {
        let descriptor = CLKComplicationDescriptor(identifier: "QubitCastWeather", displayName: "QubitCast", supportedFamilies: CLKComplicationFamily.allCases)
        handler([descriptor])
    }

    func handleSharedComplicationDescriptors(_ complicationDescriptors: [CLKComplicationDescriptor]) {
        // Handle any shared complication descriptors
    }

    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // Provide the current timeline entry
        let template = CLKComplicationTemplateModularSmallSimpleText()
        template.textProvider = CLKSimpleTextProvider(text: "23°C")
        let entry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
        handler(entry)
    }
}
