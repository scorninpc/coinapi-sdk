/*
 * OMS - REST API ...@
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * OASOrder
 */
public class OASOrder implements OAS.MappedProperties {
    /**
     * null
     * @return r_type
     */
    public String r_type { get; set; }

    /**
     * Exchange name
     * @return exchangeName
     */
    public String exchangeName { get; set; }

    /**
     * Orders array
     * @return data
     */
    public List<OASOrderData> data { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'type' => 'r_type',
        'exchange_name' => 'exchangeName'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public OASOrder() {
        data = new List<OASOrderData>();
    }

    public static OASOrder getExample() {
        OASOrder order = new OASOrder();
          order.r_type = 'snapshotOrders';
          order.exchangeName = 'KRAKEN';
          order.data = new List<OASOrderData>{OASOrderData.getExample()};
        return order;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASOrder) {           
            OASOrder order = (OASOrder) obj;
            return this.r_type == order.r_type
                && this.exchangeName == order.exchangeName
                && this.data == order.data;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (r_type == null ? 0 : System.hashCode(r_type));
        hashCode = (17 * hashCode) + (exchangeName == null ? 0 : System.hashCode(exchangeName));
        hashCode = (17 * hashCode) + (data == null ? 0 : System.hashCode(data));
        return hashCode;
    }
}
