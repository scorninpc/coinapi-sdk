# OMS - REST API
#
# OMS Project
#
# The version of the OpenAPI document: v1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Orders operations
#' @description openapi.Orders
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ V1OrdersCancelAllPost } \emph{ Cancel all order }
#' Cancel all existing order.
#'
#' \itemize{
#' \item \emph{ @param } cancel.all.order \link{CancelAllOrder}
#' \item \emph{ @returnType } \link{MessagesOk} \cr
#'
#'
#' \item status code : 200 | Result
#'
#' \item return type : MessagesOk 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ V1OrdersCancelPost } \emph{ Cancel order }
#' Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
#'
#' \itemize{
#' \item \emph{ @param } cancel.order \link{CancelOrder}
#' \item \emph{ @returnType } \link{OrderLive} \cr
#'
#'
#' \item status code : 200 | Canceled order
#'
#' \item return type : OrderLive 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Validation errors
#'
#' \item return type : CreateOrder400 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 490 | Exchange not registered
#'
#' \item return type : Messages 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ V1OrdersGet } \emph{ Get orders }
#' List your current open orders.
#'
#' \itemize{
#' \item \emph{ @param } exchange.id character
#' \item \emph{ @returnType } list( \link{order} ) \cr
#'
#'
#' \item status code : 200 | Ok
#'
#' \item return type : array[Order] 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ V1OrdersPost } \emph{ Create new order }
#' You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
#'
#' \itemize{
#' \item \emph{ @param } new.order \link{NewOrder}
#' \item \emph{ @returnType } \link{OrderLive} \cr
#'
#'
#' \item status code : 200 | Created
#'
#' \item return type : OrderLive 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Validation errors
#'
#' \item return type : CreateOrder400 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 490 | Exchange not registered
#'
#' \item return type : Messages 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  V1OrdersCancelAllPost  ####################
#'
#' library(openapi)
#' var.cancel.all.order <- CancelAllOrder$new() # CancelAllOrder | 
#'
#' #Cancel all order
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersCancelAllPost(var.cancel.all.order)
#'
#'
#' ####################  V1OrdersCancelPost  ####################
#'
#' library(openapi)
#' var.cancel.order <- CancelOrder$new() # CancelOrder | 
#'
#' #Cancel order
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersCancelPost(var.cancel.order)
#'
#'
#' ####################  V1OrdersGet  ####################
#'
#' library(openapi)
#' var.exchange.id <- 'KRAKEN' # character | Exchange name
#'
#' #Get orders
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersGet(exchange.id=var.exchange.id)
#'
#'
#' ####################  V1OrdersPost  ####################
#'
#' library(openapi)
#' var.new.order <- NewOrder$new() # NewOrder | 
#'
#' #Create new order
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersPost(var.new.order)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom caTools base64encode
#' @export
OrdersApi <- R6::R6Class(
  'OrdersApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    V1OrdersCancelAllPost = function(cancel.all.order, ...){
      apiResponse <- self$V1OrdersCancelAllPostWithHttpInfo(cancel.all.order, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersCancelAllPostWithHttpInfo = function(cancel.all.order, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`cancel.all.order`)) {
        stop("Missing required parameter `cancel.all.order`.")
      }

      if (!missing(`cancel.all.order`)) {
        body <- `cancel.all.order`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/v1/orders/cancel/all"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "MessagesOk", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    V1OrdersCancelPost = function(cancel.order, ...){
      apiResponse <- self$V1OrdersCancelPostWithHttpInfo(cancel.order, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersCancelPostWithHttpInfo = function(cancel.order, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`cancel.order`)) {
        stop("Missing required parameter `cancel.order`.")
      }

      if (!missing(`cancel.order`)) {
        body <- `cancel.order`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/v1/orders/cancel"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "OrderLive", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    V1OrdersGet = function(exchange.id=NULL, ...){
      apiResponse <- self$V1OrdersGetWithHttpInfo(exchange.id, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersGetWithHttpInfo = function(exchange.id=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      queryParams['exchange_id'] <- exchange.id

      urlPath <- "/v1/orders"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "array[Order]", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    V1OrdersPost = function(new.order, ...){
      apiResponse <- self$V1OrdersPostWithHttpInfo(new.order, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersPostWithHttpInfo = function(new.order, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`new.order`)) {
        stop("Missing required parameter `new.order`.")
      }

      if (!missing(`new.order`)) {
        body <- `new.order`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/v1/orders"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "OrderLive", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)