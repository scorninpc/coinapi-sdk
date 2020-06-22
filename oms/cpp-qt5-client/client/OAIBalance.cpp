/**
 * OMS - REST API ...@
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIBalance.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIBalance::OAIBalance(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIBalance::OAIBalance() {
    this->initializeModel();
}

OAIBalance::~OAIBalance() {}

void OAIBalance::initializeModel() {

    m_type_isSet = false;
    m_type_isValid = false;

    m_exchange_name_isSet = false;
    m_exchange_name_isValid = false;

    m_data_isSet = false;
    m_data_isValid = false;
}

void OAIBalance::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIBalance::fromJsonObject(QJsonObject json) {

    m_type_isValid = ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_exchange_name_isValid = ::OpenAPI::fromJsonValue(exchange_name, json[QString("exchange_name")]);
    m_exchange_name_isSet = !json[QString("exchange_name")].isNull() && m_exchange_name_isValid;

    m_data_isValid = ::OpenAPI::fromJsonValue(data, json[QString("data")]);
    m_data_isSet = !json[QString("data")].isNull() && m_data_isValid;
}

QString OAIBalance::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIBalance::asJsonObject() const {
    QJsonObject obj;
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
    if (m_exchange_name_isSet) {
        obj.insert(QString("exchange_name"), ::OpenAPI::toJsonValue(exchange_name));
    }
    if (data.size() > 0) {
        obj.insert(QString("data"), ::OpenAPI::toJsonValue(data));
    }
    return obj;
}

QString OAIBalance::getType() const {
    return type;
}
void OAIBalance::setType(const QString &type) {
    this->type = type;
    this->m_type_isSet = true;
}

bool OAIBalance::is_type_Set() const{
    return m_type_isSet;
}

bool OAIBalance::is_type_Valid() const{
    return m_type_isValid;
}

QString OAIBalance::getExchangeName() const {
    return exchange_name;
}
void OAIBalance::setExchangeName(const QString &exchange_name) {
    this->exchange_name = exchange_name;
    this->m_exchange_name_isSet = true;
}

bool OAIBalance::is_exchange_name_Set() const{
    return m_exchange_name_isSet;
}

bool OAIBalance::is_exchange_name_Valid() const{
    return m_exchange_name_isValid;
}

QList<OAIBalance_data> OAIBalance::getData() const {
    return data;
}
void OAIBalance::setData(const QList<OAIBalance_data> &data) {
    this->data = data;
    this->m_data_isSet = true;
}

bool OAIBalance::is_data_Set() const{
    return m_data_isSet;
}

bool OAIBalance::is_data_Valid() const{
    return m_data_isValid;
}

bool OAIBalance::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_exchange_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (data.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIBalance::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI