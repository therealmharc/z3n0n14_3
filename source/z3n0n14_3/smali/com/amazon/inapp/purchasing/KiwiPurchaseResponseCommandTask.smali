.class final Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;
.super Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;
.source "KiwiPurchaseResponseCommandTask.java"


# static fields
.field private static final COMMAND_NAME:Ljava/lang/String; = "purchase_response"

.field private static final COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiPurchaseResponseCommandTask"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "purchase_response"

    const-string v1, "1.0"

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 15
    .param p1, "result"    # Lcom/amazon/venezia/command/SuccessResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 39
    const-string v12, "KiwiPurchaseResponseCommandTask"

    const-string v13, "onSuccess"

    invoke-static {v12, v13}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v0

    .line 44
    .local v0, "data":Ljava/util/Map;
    const-string v12, "errorMessage"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v12, "userId"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 46
    .local v11, "userId":Ljava/lang/String;
    const-string v12, "receipt"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 48
    .local v7, "receiptString":Ljava/lang/String;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 49
    const-string v12, "KiwiPurchaseResponseCommandTask"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onSuccess: errorMessage: \""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\" receipt: \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    const/4 v5, 0x0

    .line 53
    .local v5, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    sget-object v10, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    .line 55
    .local v10, "status":Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    invoke-virtual {p0, v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {p0, v7}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 58
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v6, "receiptJson":Lorg/json/JSONObject;
    const-string v12, "orderStatus"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 62
    .local v3, "orderStatus":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 71
    :goto_0
    :try_start_2
    sget-object v12, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v12, v10, :cond_2

    .line 72
    invoke-virtual {p0, v6}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->getReceiptFromReceiptJson(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Receipt;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 83
    .end local v3    # "orderStatus":Ljava/lang/String;
    .end local v6    # "receiptJson":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    new-instance v4, Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12, v11, v5, v10}, Lcom/amazon/inapp/purchasing/PurchaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;)V

    .line 85
    .local v4, "purchaseResponse":Lcom/amazon/inapp/purchasing/PurchaseResponse;
    new-instance v8, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;

    invoke-direct {v8, p0, v4}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    .line 98
    .local v8, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v9

    .line 99
    .local v9, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    new-instance v12, Landroid/os/Handler;

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v12, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void

    .line 63
    .end local v4    # "purchaseResponse":Lcom/amazon/inapp/purchasing/PurchaseResponse;
    .end local v8    # "runnable":Ljava/lang/Runnable;
    .end local v9    # "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    .restart local v3    # "orderStatus":Ljava/lang/String;
    .restart local v6    # "receiptJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 65
    const-string v12, "KiwiPurchaseResponseCommandTask"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Invalid order status "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/amazon/inapp/purchasing/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_3
    sget-object v10, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "orderStatus":Ljava/lang/String;
    .end local v6    # "receiptJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 76
    const-string v12, "KiwiPurchaseResponseCommandTask"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error parsing receipt JSON: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/amazon/inapp/purchasing/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_4
    sget-object v10, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    goto :goto_1
.end method
