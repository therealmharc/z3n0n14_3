.class abstract Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;
.super Lcom/amazon/android/framework/task/command/AbstractCommandTask;
.source "KiwiBaseCommandTask.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy HH:mm:ss"

.field protected static final FALSE:Ljava/lang/String; = "false"

.field protected static final KEY_CURSOR:Ljava/lang/String; = "cursor"

.field protected static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field protected static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field protected static final KEY_HAS_CONTENT:Ljava/lang/String; = "hasContent"

.field protected static final KEY_HAS_MORE:Ljava/lang/String; = "hasMore"

.field protected static final KEY_ICON_URL:Ljava/lang/String; = "iconUrl"

.field protected static final KEY_ITEM_TYPE:Ljava/lang/String; = "itemType"

.field protected static final KEY_ORDER_STATUS:Ljava/lang/String; = "orderStatus"

.field protected static final KEY_PERIOD_DATE_END:Ljava/lang/String; = "endDate"

.field protected static final KEY_PERIOD_DATE_START:Ljava/lang/String; = "startDate"

.field protected static final KEY_PRICE:Ljava/lang/String; = "price"

.field protected static final KEY_PURCHASE_ITEM_INTENT:Ljava/lang/String; = "purchaseItemIntent"

.field protected static final KEY_RECEIPT:Ljava/lang/String; = "receipt"

.field protected static final KEY_RECEIPTS:Ljava/lang/String; = "receipts"

.field protected static final KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field protected static final KEY_REVOCATIONS:Ljava/lang/String; = "revocations"

.field protected static final KEY_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field protected static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field protected static final KEY_SKU:Ljava/lang/String; = "sku"

.field protected static final KEY_SKUS:Ljava/lang/String; = "skus"

.field protected static final KEY_TITLE:Ljava/lang/String; = "title"

.field protected static final KEY_TOKEN:Ljava/lang/String; = "token"

.field protected static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field protected static final SDK_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiBaseCommandTask"

.field protected static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final _commandData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _commandName:Ljava/lang/String;

.field private final _commandVersion:Ljava/lang/String;

.field private final _requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "commandVersion"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;-><init>()V

    .line 71
    iput-object p3, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_requestId:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandName:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandVersion:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandData:Ljava/util/Map;

    .line 76
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandData:Ljava/util/Map;

    const-string v1, "requestId"

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_requestId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandData:Ljava/util/Map;

    const-string v1, "sdkVersion"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method protected addCommandData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method protected getCommandData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandData:Ljava/util/Map;

    return-object v0
.end method

.method protected getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandName:Ljava/lang/String;

    return-object v0
.end method

.method protected getCommandVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_commandVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected getDateFromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "format":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getReceiptFromReceiptJson(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Receipt;
    .locals 7
    .param p1, "receiptJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v0, "sku"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "sku":Ljava/lang/String;
    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/Item$ItemType;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v2

    .line 163
    .local v2, "itemType":Lcom/amazon/inapp/purchasing/Item$ItemType;
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "token":Ljava/lang/String;
    const/4 v6, 0x0

    .line 167
    .local v6, "isContentAvailable":Z
    invoke-virtual {p0, p1}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->getSubscriptionPeriodFromReceiptJson(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    move-result-object v4

    .line 169
    .local v4, "period":Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    new-instance v0, Lcom/amazon/inapp/purchasing/Receipt;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/inapp/purchasing/Receipt;-><init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;ZLcom/amazon/inapp/purchasing/SubscriptionPeriod;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->_requestId:Ljava/lang/String;

    return-object v0
.end method

.method protected getSubscriptionPeriodFromReceiptJson(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    .locals 5
    .param p1, "receiptJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    const-string v4, "startDate"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string v4, "startDate"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "startDateString":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 151
    .local v2, "startDate":Ljava/util/Date;
    const-string v4, "endDate"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "endDateString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    .local v0, "endDate":Ljava/util/Date;
    :goto_1
    new-instance v4, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    invoke-direct {v4, v2, v0}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    move-object v0, v4

    goto :goto_0

    .line 152
    .end local v0    # "endDate":Ljava/util/Date;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1
.end method

.method protected isExecutionNeeded()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFailure(Lcom/amazon/venezia/command/FailureResult;)V
    .locals 2
    .param p1, "result"    # Lcom/amazon/venezia/command/FailureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "KiwiBaseCommandTask"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "purchaseToken"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "signedData":Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/amazon/android/Kiwi;->isSignedByKiwi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
