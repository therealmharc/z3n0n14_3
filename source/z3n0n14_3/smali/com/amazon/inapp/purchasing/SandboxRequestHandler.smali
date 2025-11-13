.class final Lcom/amazon/inapp/purchasing/SandboxRequestHandler;
.super Ljava/lang/Object;
.source "SandboxRequestHandler.java"

# interfaces
.implements Lcom/amazon/inapp/purchasing/RequestHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTENT_DOWNLOAD_RESPONSES:Ljava/lang/String; = "contentDownloadResponses"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final END_DATE:Ljava/lang/String; = "endDate"

.field private static final GET_USER_ID_RESPONSE:Ljava/lang/String; = "getUserIdResponse"

.field private static final IS_MORE:Ljava/lang/String; = "isMore"

.field private static final ITEM_DATA_RESPONSES:Ljava/lang/String; = "itemDataResponses"

.field private static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field private static final JSON_FILE_LOCATION:Ljava/lang/String;

.field private static final OFFSET:Ljava/lang/String; = "offset"

.field private static final PRICE:Ljava/lang/String; = "price"

.field private static final PURCHASE_RESPONSES:Ljava/lang/String; = "purchaseResponses"

.field private static final PURCHASE_UPDATES_RESPONSES:Ljava/lang/String; = "purchaseUpdatesResponses"

.field private static final RECEIPT:Ljava/lang/String; = "receipt"

.field private static final RECEIPTS:Ljava/lang/String; = "receipts"

.field private static final REQUEST_STATUS:Ljava/lang/String; = "requestStatus"

.field private static final REVOKED_SKUS:Ljava/lang/String; = "revokedSkus"

.field private static final SKU:Ljava/lang/String; = "sku"

.field private static final SMALL_ICON_URL:Ljava/lang/String; = "smallIconUrl"

.field private static final START_DATE:Ljava/lang/String; = "startDate"

.field private static final STATUS_FAILED:Ljava/lang/String; = "FAILED"

.field private static final SUBSCRIPTION_PERIOD:Ljava/lang/String; = "subscriptionPeriod"

.field private static final TAG:Ljava/lang/String; = "SandboxRequestHandler"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final TOKEN:Ljava/lang/String; = "token"

.field private static final USER_ID:Ljava/lang/String; = "userId"

.field private static volatile mainLooperHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v1, "/InAppSDK-SandboxData.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->JSON_FILE_LOCATION:Ljava/lang/String;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private getContentDownloadResponsesFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/inapp/purchasing/ContentDownloadResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    .line 407
    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getJsonData()Lorg/json/JSONObject;

    move-result-object v2

    .line 408
    .local v2, "json":Lorg/json/JSONObject;
    const-string v8, "contentDownloadResponses"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 409
    .local v0, "contentDownloadResponses":Lorg/json/JSONObject;
    sget-boolean v8, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez v0, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 411
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v6, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/inapp/purchasing/ContentDownloadResponse;>;"
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 416
    new-instance v5, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;

    sget-object v8, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    invoke-direct {v5, p2, v9, v8}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;-><init>(Ljava/lang/String;ILcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;)V

    .line 418
    .local v5, "response":Lcom/amazon/inapp/purchasing/ContentDownloadResponse;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v5    # "response":Lcom/amazon/inapp/purchasing/ContentDownloadResponse;
    :cond_1
    :goto_0
    return-object v6

    .line 421
    :cond_2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 422
    .local v5, "response":Lorg/json/JSONObject;
    const-string v8, "requestStatus"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "requestStatus":Ljava/lang/String;
    invoke-static {v4}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    move-result-object v7

    .line 426
    .local v7, "status":Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
    sget-object v8, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->IN_PROGRESS:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    if-ne v8, v7, :cond_3

    .line 428
    new-instance v8, Lcom/amazon/inapp/purchasing/SandboxException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "requestStatus \"IN_PROGRESS\" not allowed for SKU "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 429
    :cond_3
    sget-object v8, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->COMPLETE:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    if-ne v8, v7, :cond_5

    .line 432
    const/16 v3, 0xa

    .local v3, "percentComplete":I
    :goto_1
    if-gt v3, v10, :cond_1

    .line 434
    if-ge v3, v10, :cond_4

    sget-object v1, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->IN_PROGRESS:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    .line 437
    .local v1, "currentStatus":Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
    :goto_2
    new-instance v8, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;

    invoke-direct {v8, p2, v3, v1}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;-><init>(Ljava/lang/String;ILcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 435
    .end local v1    # "currentStatus":Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
    :cond_4
    sget-object v1, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->COMPLETE:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    goto :goto_2

    .line 441
    .end local v3    # "percentComplete":I
    :cond_5
    new-instance v8, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;

    invoke-direct {v8, p2, v9, v7}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;-><init>(Ljava/lang/String;ILcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getDateFromDateString(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p1, "dateString"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    const-string v5, "null"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    :cond_0
    const/4 v5, 0x0

    .line 161
    :goto_0
    return-object v5

    .line 153
    :cond_1
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "parts":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 155
    .local v4, "year":I
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 156
    .local v2, "month":I
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 158
    .local v1, "date":I
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 159
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v2, v1}, Ljava/util/Calendar;->set(III)V

    .line 161
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    goto :goto_0
.end method

.method private getGetUserIdResponseFromJson(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/GetUserIdResponse;
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getJsonData()Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "getUserIdResponse"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 167
    .local v1, "getUserIdResponse":Lorg/json/JSONObject;
    const-string v4, "getUserIdResponses"

    invoke-static {v1, v4}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    .line 171
    .local v0, "getUserIdRequestStatus":Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;
    const-string v4, "requestStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const-string v4, "requestStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v0

    .line 175
    :cond_0
    const-string v4, "userId"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "userId":Ljava/lang/String;
    sget-object v4, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v4, v0, :cond_1

    .line 178
    const-string v4, "userId"

    invoke-static {v3, v4}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    :goto_0
    new-instance v4, Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    invoke-direct {v4, p1, v0, v3}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;-><init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;Ljava/lang/String;)V

    return-object v4

    .line 180
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getHandler(Landroid/content/Context;)Landroid/os/Handler;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->mainLooperHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 118
    const-class v1, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->mainLooperHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->mainLooperHandler:Landroid/os/Handler;

    .line 118
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->mainLooperHandler:Landroid/os/Handler;

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getItemDataResponseFromJson(Ljava/util/Set;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/ItemDataResponse;
    .locals 20
    .param p2, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/inapp/purchasing/ItemDataResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getJsonData()Lorg/json/JSONObject;

    move-result-object v13

    .line 323
    .local v13, "json":Lorg/json/JSONObject;
    const-string v17, "itemDataResponses"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 324
    .local v12, "itemDataResponses":Lorg/json/JSONObject;
    sget-boolean v17, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez v12, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 326
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v11, "itemData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v16, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 362
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_5

    sget-object v14, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    .line 365
    .local v14, "requestStatus":Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
    :goto_1
    new-instance v15, Lcom/amazon/inapp/purchasing/ItemDataResponse;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1, v14, v11}, Lcom/amazon/inapp/purchasing/ItemDataResponse;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;Ljava/util/Map;)V

    .line 367
    .end local v14    # "requestStatus":Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
    :goto_2
    return-object v15

    .line 330
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 331
    .local v5, "sku":Ljava/lang/String;
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 332
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 336
    .local v15, "response":Lorg/json/JSONObject;
    const-string v18, "requestStatus"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 338
    const-string v17, "requestStatus"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 340
    .local v14, "requestStatus":Ljava/lang/String;
    const-string v17, "FAILED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 341
    new-instance v15, Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .end local v15    # "response":Lorg/json/JSONObject;
    const/16 v17, 0x0

    sget-object v18, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/amazon/inapp/purchasing/ItemDataResponse;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;Ljava/util/Map;)V

    goto :goto_2

    .line 343
    .restart local v15    # "response":Lorg/json/JSONObject;
    :cond_3
    new-instance v17, Lcom/amazon/inapp/purchasing/SandboxException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Found invalid requestStatus \""

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    const-string v19, "requestStatus"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" for SKU \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" in itemDataResponses"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 343
    invoke-direct/range {v17 .. v18}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 348
    .end local v14    # "requestStatus":Ljava/lang/String;
    :cond_4
    const-string v18, "itemType"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazon/inapp/purchasing/Item$ItemType;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v7

    .line 349
    .local v7, "itemType":Lcom/amazon/inapp/purchasing/Item$ItemType;
    const-string v18, "price"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "price":Ljava/lang/String;
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "title":Ljava/lang/String;
    const-string v18, "description"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 352
    .local v9, "description":Ljava/lang/String;
    const-string v18, "smallIconUrl"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 354
    .local v10, "smallIconUrl":Ljava/lang/String;
    new-instance v4, Lcom/amazon/inapp/purchasing/Item;

    invoke-direct/range {v4 .. v10}, Lcom/amazon/inapp/purchasing/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .local v4, "item":Lcom/amazon/inapp/purchasing/Item;
    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 363
    .end local v4    # "item":Lcom/amazon/inapp/purchasing/Item;
    .end local v5    # "sku":Ljava/lang/String;
    .end local v6    # "price":Ljava/lang/String;
    .end local v7    # "itemType":Lcom/amazon/inapp/purchasing/Item$ItemType;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "smallIconUrl":Ljava/lang/String;
    .end local v15    # "response":Lorg/json/JSONObject;
    :cond_5
    sget-object v14, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    goto/16 :goto_1
.end method

.method private getJsonData()Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 87
    .local v0, "data":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->JSON_FILE_LOCATION:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 90
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    .end local v0    # "data":Ljava/lang/StringBuffer;
    .local v1, "data":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 97
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 104
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v6

    .line 94
    :cond_0
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 98
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 99
    .end local v1    # "data":Ljava/lang/StringBuffer;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "data":Ljava/lang/StringBuffer;
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    new-instance v6, Lcom/amazon/inapp/purchasing/SandboxException;

    invoke-direct {v6, v2}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 105
    .end local v0    # "data":Ljava/lang/StringBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "data":Ljava/lang/StringBuffer;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 106
    .local v2, "e":Lorg/json/JSONException;
    new-instance v6, Lcom/amazon/inapp/purchasing/SandboxException;

    invoke-direct {v6, v2}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 109
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v6, Lcom/amazon/inapp/purchasing/SandboxException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No sandbox data found in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->JSON_FILE_LOCATION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    .end local v1    # "data":Ljava/lang/StringBuffer;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "data":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private getPurchaseResponseFromJson(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseResponse;
    .locals 11
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 250
    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    .line 251
    .local v0, "json":Lorg/json/JSONObject;
    const-string v8, "purchaseResponses"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 252
    .local v1, "purchaseResponses":Lorg/json/JSONObject;
    const-string v8, "purchaseResponses"

    invoke-static {v1, v8}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 255
    new-instance v8, Lcom/amazon/inapp/purchasing/PurchaseResponse;

    sget-object v9, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-direct {v8, p2, v10, v10, v9}, Lcom/amazon/inapp/purchasing/PurchaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;)V

    .line 279
    :goto_0
    return-object v8

    .line 257
    :cond_0
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 259
    .local v5, "response":Lorg/json/JSONObject;
    const-string v8, "requestStatus"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 260
    const-string v8, "requestStatus"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "requestStatus":Ljava/lang/String;
    const-string v8, "FAILED"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 263
    new-instance v8, Lcom/amazon/inapp/purchasing/PurchaseResponse;

    sget-object v9, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-direct {v8, p2, v10, v10, v9}, Lcom/amazon/inapp/purchasing/PurchaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;)V

    goto :goto_0

    .line 265
    :cond_1
    new-instance v8, Lcom/amazon/inapp/purchasing/SandboxException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found invalid requestStatus \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "requestStatus"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 266
    const-string v10, "\" for SKU \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" in purchaseResponses"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 265
    invoke-direct {v8, v9}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 270
    .end local v4    # "requestStatus":Ljava/lang/String;
    :cond_2
    const-string v8, "receipt"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 272
    .local v6, "responseReceipt":Lorg/json/JSONObject;
    const-string v8, "sku"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "sku"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "purchasedSku":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v6, v2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getReceiptFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v3

    .line 276
    .local v3, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    const-string v8, "userId"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "userId":Ljava/lang/String;
    new-instance v8, Lcom/amazon/inapp/purchasing/PurchaseResponse;

    sget-object v9, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-direct {v8, p2, v7, v3, v9}, Lcom/amazon/inapp/purchasing/PurchaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;)V

    goto :goto_0

    .end local v2    # "purchasedSku":Ljava/lang/String;
    .end local v3    # "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    .end local v7    # "userId":Ljava/lang/String;
    :cond_3
    move-object v2, p1

    .line 272
    goto :goto_1
.end method

.method private getPurchaseUpdatesResponseFromJson(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    .locals 22
    .param p1, "offset"    # Lcom/amazon/inapp/purchasing/Offset;
    .param p2, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getJsonData()Lorg/json/JSONObject;

    move-result-object v13

    .line 506
    .local v13, "json":Lorg/json/JSONObject;
    const-string v3, "purchaseUpdatesResponses"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 508
    .local v14, "purchaseUpdatesResponses":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v11

    .line 510
    .local v11, "encodedOffset":Ljava/lang/String;
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    new-instance v3, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    const/4 v5, 0x0

    sget-object v6, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 513
    sget-object v9, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    const/4 v10, 0x1

    move-object/from16 v4, p2

    .line 512
    invoke-direct/range {v3 .. v10}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/inapp/purchasing/Offset;Z)V

    .line 563
    :goto_0
    return-object v3

    .line 516
    :cond_0
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 518
    .local v16, "response":Lorg/json/JSONObject;
    const-string v3, "requestStatus"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    const-string v3, "requestStatus"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 522
    .local v15, "requestStatus":Ljava/lang/String;
    const-string v3, "FAILED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    new-instance v3, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    const/4 v5, 0x0

    sget-object v6, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    const/4 v7, 0x0

    .line 524
    const/4 v8, 0x0

    sget-object v9, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    const/4 v10, 0x1

    move-object/from16 v4, p2

    .line 523
    invoke-direct/range {v3 .. v10}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/inapp/purchasing/Offset;Z)V

    goto :goto_0

    .line 526
    :cond_1
    new-instance v3, Lcom/amazon/inapp/purchasing/SandboxException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Found invalid requestStatus \""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "requestStatus"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 527
    const-string v6, "\" for Offset \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" in purchaseUpdatesResponses"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-direct {v3, v4}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 533
    .end local v15    # "requestStatus":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 535
    .local v7, "receipts":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/inapp/purchasing/Receipt;>;"
    const-string v3, "receipts"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 537
    .local v19, "responseReceipts":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v12, v3, :cond_4

    .line 544
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 546
    .local v8, "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "revokedSkus"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 548
    .local v20, "responseRevokedSkus":Lorg/json/JSONArray;
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v12, v3, :cond_5

    .line 552
    sget-object v9, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    .line 554
    .local v9, "nextOffset":Lcom/amazon/inapp/purchasing/Offset;
    const-string v3, "isMore"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 556
    .local v10, "isMore":Z
    if-eqz v10, :cond_3

    .line 557
    const-string v3, "offset"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 558
    .local v17, "responseOffset":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/amazon/inapp/purchasing/Offset;->fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v9

    .line 561
    .end local v17    # "responseOffset":Ljava/lang/String;
    :cond_3
    const-string v3, "userId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "userId":Ljava/lang/String;
    new-instance v3, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    sget-object v6, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v10}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/inapp/purchasing/Offset;Z)V

    goto/16 :goto_0

    .line 538
    .end local v5    # "userId":Ljava/lang/String;
    .end local v8    # "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "nextOffset":Lcom/amazon/inapp/purchasing/Offset;
    .end local v10    # "isMore":Z
    .end local v20    # "responseRevokedSkus":Lorg/json/JSONArray;
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 539
    .local v18, "responseReceipt":Lorg/json/JSONObject;
    const-string v3, "sku"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 540
    .local v21, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getReceiptFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 549
    .end local v18    # "responseReceipt":Lorg/json/JSONObject;
    .end local v21    # "sku":Ljava/lang/String;
    .restart local v8    # "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "responseRevokedSkus":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method private getReceiptFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Receipt;
    .locals 11
    .param p1, "responseReceipt"    # Lorg/json/JSONObject;
    .param p2, "sku"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v4, 0x0

    .line 222
    .local v4, "subscriptionPeriod":Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    const-string v1, "subscriptionPeriod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "subscriptionPeriod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 225
    .local v8, "responsePeriod":Lorg/json/JSONObject;
    const-string v1, "startDate"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, "startDateString":Ljava/lang/String;
    const-string v1, "endDate"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "endDateString":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getDateFromDateString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 229
    .local v9, "startDate":Ljava/util/Date;
    invoke-direct {p0, v7}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getDateFromDateString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 231
    .local v6, "endDate":Ljava/util/Date;
    if-eqz v9, :cond_0

    .line 232
    new-instance v4, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    .end local v4    # "subscriptionPeriod":Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    invoke-direct {v4, v9, v6}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 236
    .end local v6    # "endDate":Ljava/util/Date;
    .end local v7    # "endDateString":Ljava/lang/String;
    .end local v8    # "responsePeriod":Lorg/json/JSONObject;
    .end local v9    # "startDate":Ljava/util/Date;
    .end local v10    # "startDateString":Ljava/lang/String;
    .restart local v4    # "subscriptionPeriod":Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    :cond_0
    const/4 v3, 0x0

    .line 237
    .local v3, "isContentAvailable":Z
    const-string v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "token":Ljava/lang/String;
    const-string v1, "itemType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/Item$ItemType;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v2

    .line 240
    .local v2, "itemType":Lcom/amazon/inapp/purchasing/Item$ItemType;
    new-instance v0, Lcom/amazon/inapp/purchasing/Receipt;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/inapp/purchasing/Receipt;-><init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;ZLcom/amazon/inapp/purchasing/SubscriptionPeriod;Ljava/lang/String;)V

    .line 242
    .local v0, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    return-object v0
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getObserverContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    .line 140
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public sendContentDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    const-string v5, "SandboxRequestHandler"

    const-string v6, "sendContentDownloadRequest"

    invoke-static {v5, v6}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    const/4 v3, 0x0

    .line 457
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/inapp/purchasing/ContentDownloadResponse;>;"
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getContentDownloadResponsesFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 462
    sget-boolean v5, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/amazon/inapp/purchasing/SandboxException;

    invoke-direct {v5, v0}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 463
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    sget-boolean v5, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 466
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 496
    return-void

    .line 467
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;

    .line 469
    .local v2, "response":Lcom/amazon/inapp/purchasing/ContentDownloadResponse;
    new-instance v4, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$4;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$4;-><init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/ContentDownloadResponse;)V

    .line 485
    .local v4, "runnable":Ljava/lang/Runnable;
    invoke-direct {p0, v4}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->post(Ljava/lang/Runnable;)V

    .line 488
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 490
    const-wide/16 v5, 0x1f4

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public sendGetUserIdRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-string v3, "SandboxRequestHandler"

    const-string v4, "sendGetUserIdRequest"

    invoke-static {v3, v4}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getGetUserIdResponseFromJson(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    move-result-object v1

    .line 195
    .local v1, "response":Lcom/amazon/inapp/purchasing/GetUserIdResponse;
    new-instance v2, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$1;-><init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Ljava/lang/String;Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V

    .line 210
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-direct {p0, v2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-void

    .line 211
    .end local v1    # "response":Lcom/amazon/inapp/purchasing/GetUserIdResponse;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/amazon/inapp/purchasing/SandboxException;

    invoke-direct {v3, v0}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendItemDataRequest(Ljava/util/Set;Ljava/lang/String;)V
    .locals 5
    .param p2, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    const-string v3, "SandboxRequestHandler"

    const-string v4, "sendItemDataRequest"

    invoke-static {v3, v4}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getItemDataResponseFromJson(Ljava/util/Set;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/ItemDataResponse;

    move-result-object v1

    .line 379
    .local v1, "response":Lcom/amazon/inapp/purchasing/ItemDataResponse;
    new-instance v2, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$3;-><init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    .line 394
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-direct {p0, v2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    return-void

    .line 395
    .end local v1    # "response":Lcom/amazon/inapp/purchasing/ItemDataResponse;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/amazon/inapp/purchasing/SandboxException;

    invoke-direct {v3, v0}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendPurchaseRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const-string v3, "SandboxRequestHandler"

    const-string v4, "sendPurchaseRequest"

    invoke-static {v3, v4}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getPurchaseResponseFromJson(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseResponse;

    move-result-object v1

    .line 293
    .local v1, "response":Lcom/amazon/inapp/purchasing/PurchaseResponse;
    new-instance v2, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;-><init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    .line 309
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-direct {p0, v2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    return-void

    .line 310
    .end local v1    # "response":Lcom/amazon/inapp/purchasing/PurchaseResponse;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/amazon/inapp/purchasing/SandboxException;

    invoke-direct {v3, v0}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendPurchaseResponseReceivedRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 602
    return-void
.end method

.method public sendPurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V
    .locals 5
    .param p1, "offset"    # Lcom/amazon/inapp/purchasing/Offset;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    const-string v3, "SandboxRequestHandler"

    const-string v4, "sendPurchaseUpdatesRequest"

    invoke-static {v3, v4}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->getPurchaseUpdatesResponseFromJson(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    move-result-object v1

    .line 578
    .local v1, "response":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    new-instance v2, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;

    invoke-direct {v2, p0, p1, v1}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;-><init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Lcom/amazon/inapp/purchasing/Offset;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V

    .line 593
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-direct {p0, v2}, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    return-void

    .line 594
    .end local v1    # "response":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/amazon/inapp/purchasing/SandboxException;

    invoke-direct {v3, v0}, Lcom/amazon/inapp/purchasing/SandboxException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
