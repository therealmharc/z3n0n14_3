.class final Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;
.super Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;
.source "KiwiPurchaseUpdatesCommandTask.java"


# static fields
.field private static final COMMAND_NAME:Ljava/lang/String; = "purchase_updates"

.field private static final COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiPurchaseUpdatesCommandTask"


# instance fields
.field private final _offset:Lcom/amazon/inapp/purchasing/Offset;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V
    .locals 3
    .param p1, "offset"    # Lcom/amazon/inapp/purchasing/Offset;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v1, "purchase_updates"

    const-string v2, "1.0"

    invoke-direct {p0, v1, v2, p2}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    .line 38
    sget-object v1, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 39
    .local v0, "cursor":Ljava/lang/String;
    :goto_0
    const-string v1, "cursor"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->addCommandData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void

    .line 38
    .end local v0    # "cursor":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
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
    .line 147
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "KiwiPurchaseUpdatesCommandTask"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 29
    .param p1, "result"    # Lcom/amazon/venezia/command/SuccessResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v3, "KiwiPurchaseUpdatesCommandTask"

    const-string v27, "onSuccess"

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v11

    .line 54
    .local v11, "data":Ljava/util/Map;
    const-string v3, "errorMessage"

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 55
    .local v13, "errorMessage":Ljava/lang/String;
    const-string v3, "userId"

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    .local v4, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const-string v3, "KiwiPurchaseUpdatesCommandTask"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "onSuccess: errorMessage: \""

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v6, "receipts":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/inapp/purchasing/Receipt;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 64
    .local v7, "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    .line 65
    .local v8, "offset":Lcom/amazon/inapp/purchasing/Offset;
    const/4 v9, 0x1

    .line 66
    .local v9, "isMore":Z
    sget-object v5, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    .line 68
    .local v5, "status":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    :try_start_0
    const-string v3, "receipts"

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 72
    .local v19, "receiptsString":Ljava/lang/String;
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 74
    .local v18, "receiptsJson":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v14, v3, :cond_3

    .line 100
    const-string v3, "revocations"

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 101
    .local v21, "revocationsString":Ljava/lang/String;
    new-instance v20, Lorg/json/JSONArray;

    invoke-direct/range {v20 .. v21}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    .local v20, "revocationsJson":Lorg/json/JSONArray;
    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v14, v3, :cond_8

    .line 110
    const-string v3, "cursor"

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 111
    .local v10, "cursor":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v8, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    .line 113
    :goto_2
    const-string v3, "hasMore"

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 114
    .local v15, "isMoreString":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 116
    sget-object v5, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v10    # "cursor":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "isMoreString":Ljava/lang/String;
    .end local v18    # "receiptsJson":Lorg/json/JSONArray;
    .end local v19    # "receiptsString":Ljava/lang/String;
    .end local v20    # "revocationsJson":Lorg/json/JSONArray;
    .end local v21    # "revocationsString":Ljava/lang/String;
    :cond_2
    :goto_3
    new-instance v2, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v2 .. v9}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/inapp/purchasing/Offset;Z)V

    .line 129
    .local v2, "purchaseUpdatesResponse":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    new-instance v23, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V

    .line 140
    .local v23, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v24

    .line 141
    .local v24, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    new-instance v3, Landroid/os/Handler;

    invoke-virtual/range {v24 .. v24}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void

    .line 75
    .end local v2    # "purchaseUpdatesResponse":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    .end local v23    # "runnable":Ljava/lang/Runnable;
    .end local v24    # "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    .restart local v14    # "i":I
    .restart local v18    # "receiptsJson":Lorg/json/JSONArray;
    .restart local v19    # "receiptsString":Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 76
    .local v17, "receiptJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->getReceiptFromReceiptJson(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v16

    .line 79
    .local v16, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 80
    const-string v3, "KiwiPurchaseUpdatesCommandTask"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Validating receipt: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/amazon/inapp/purchasing/Receipt;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_4
    const-string v3, "signature"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 85
    .local v25, "signature":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 87
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v3, v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 89
    .local v26, "signatureVerified":Z
    if-eqz v26, :cond_6

    .line 90
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v26    # "signatureVerified":Z
    :cond_5
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 92
    .restart local v26    # "signatureVerified":Z
    :cond_6
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    const-string v3, "KiwiPurchaseUpdatesCommandTask"

    .line 94
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "signature verification failed for token "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 93
    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/amazon/inapp/purchasing/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 117
    .end local v14    # "i":I
    .end local v16    # "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    .end local v17    # "receiptJson":Lorg/json/JSONObject;
    .end local v18    # "receiptsJson":Lorg/json/JSONArray;
    .end local v19    # "receiptsString":Ljava/lang/String;
    .end local v25    # "signature":Ljava/lang/String;
    .end local v26    # "signatureVerified":Z
    :catch_0
    move-exception v12

    .line 118
    .local v12, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    const-string v3, "KiwiPurchaseUpdatesCommandTask"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Error parsing purchase updates JSON: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/amazon/inapp/purchasing/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_7
    sget-object v5, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    goto/16 :goto_3

    .line 105
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v14    # "i":I
    .restart local v18    # "receiptsJson":Lorg/json/JSONArray;
    .restart local v19    # "receiptsString":Ljava/lang/String;
    .restart local v20    # "revocationsJson":Lorg/json/JSONArray;
    .restart local v21    # "revocationsString":Ljava/lang/String;
    :cond_8
    :try_start_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 106
    .local v22, "revokedSku":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 111
    .end local v22    # "revokedSku":Ljava/lang/String;
    .restart local v10    # "cursor":Ljava/lang/String;
    :cond_9
    invoke-static {v10}, Lcom/amazon/inapp/purchasing/Offset;->fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    goto/16 :goto_2
.end method
