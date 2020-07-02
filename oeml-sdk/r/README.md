# R API client for openapi

OMS Project

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: v1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RClientCodegen
For more information, please visit [https://www.coinapi.io](https://www.coinapi.io)

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("caTools")
```

### Build the package

```sh
git clone https://github.com/GIT_USER_ID/GIT_REPO_ID
cd GIT_REPO_ID
R CMD build .
R CMD check openapi_1.0.0.tar.gz
R CMD INSTALL openapi_1.0.0.tar.gz
```

### Install the package

```R
install.packages("openapi")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("GIT_USER_ID/GIT_REPO_ID")
```

### Usage

```R
library(openapi)
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3001*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**V1BalancesGet**](docs/BalancesApi.md#V1BalancesGet) | **GET** /v1/balances | Get balances
*OrdersApi* | [**V1OrdersCancelAllPost**](docs/OrdersApi.md#V1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
*OrdersApi* | [**V1OrdersCancelPost**](docs/OrdersApi.md#V1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
*OrdersApi* | [**V1OrdersGet**](docs/OrdersApi.md#V1OrdersGet) | **GET** /v1/orders | Get orders
*OrdersApi* | [**V1OrdersPost**](docs/OrdersApi.md#V1OrdersPost) | **POST** /v1/orders | Create new order
*PositionsApi* | [**V1PositionsGet**](docs/PositionsApi.md#V1PositionsGet) | **GET** /v1/positions | Get positions


## Documentation for Models

 - [Balance](docs/Balance.md)
 - [BalanceData](docs/BalanceData.md)
 - [CancelAllOrder](docs/CancelAllOrder.md)
 - [CancelOrder](docs/CancelOrder.md)
 - [CreateOrder400](docs/CreateOrder400.md)
 - [Messages](docs/Messages.md)
 - [MessagesInfo](docs/MessagesInfo.md)
 - [MessagesOk](docs/MessagesOk.md)
 - [NewOrder](docs/NewOrder.md)
 - [Order](docs/Order.md)
 - [OrderData](docs/OrderData.md)
 - [OrderLive](docs/OrderLive.md)
 - [OrderStatus](docs/OrderStatus.md)
 - [Position](docs/Position.md)
 - [PositionData](docs/PositionData.md)
 - [TimeInForce](docs/TimeInForce.md)


## Documentation for Authorization

 All endpoints do not require authorization.



## Author


