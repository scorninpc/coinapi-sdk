/*
 * OMS - REST API ...@
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import org.openapitools.client.model.CancelAllOrder;
import org.openapitools.client.model.CancelOrder;
import org.openapitools.client.model.CreateOrder400;
import org.openapitools.client.model.Messages;
import org.openapitools.client.model.MessagesOk;
import org.openapitools.client.model.NewOrder;
import org.openapitools.client.model.Order;
import org.openapitools.client.model.OrderLive;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for OrdersApi
 */
@Ignore
public class OrdersApiTest {

    private final OrdersApi api = new OrdersApi();

    
    /**
     * Cancel all order
     *
     * Cancel all existing order.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersCancelAllPostTest() throws ApiException {
        CancelAllOrder cancelAllOrder = null;
        MessagesOk response = api.v1OrdersCancelAllPost(cancelAllOrder);

        // TODO: test validations
    }
    
    /**
     * Cancel order
     *
     * Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersCancelPostTest() throws ApiException {
        CancelOrder cancelOrder = null;
        OrderLive response = api.v1OrdersCancelPost(cancelOrder);

        // TODO: test validations
    }
    
    /**
     * Get orders
     *
     * List your current open orders.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersGetTest() throws ApiException {
        String exchangeId = null;
        List<Order> response = api.v1OrdersGet(exchangeId);

        // TODO: test validations
    }
    
    /**
     * Create new order
     *
     * You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersPostTest() throws ApiException {
        NewOrder newOrder = null;
        OrderLive response = api.v1OrdersPost(newOrder);

        // TODO: test validations
    }
    
}