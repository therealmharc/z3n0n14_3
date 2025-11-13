.class final Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;
.super Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;
.source "KiwiGetItemDataRequestCommandTask.java"


# static fields
.field private static final COMMAND_NAME:Ljava/lang/String; = "getItem_data"

.field private static final COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiGetItemDataRequestCommandTask"


# instance fields
.field private final _skus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
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
    .line 36
    .local p1, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "getItem_data"

    const-string v1, "1.0"

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->_skus:Ljava/util/Set;

    .line 38
    const-string v0, "skus"

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->_skus:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->addCommandData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
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
    .line 119
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "KiwiGetItemDataRequestCommandTask"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 26
    .param p1, "result"    # Lcom/amazon/venezia/command/SuccessResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 48
    const-string v22, "KiwiGetItemDataRequestCommandTask"

    const-string v23, "onSuccess"

    invoke-static/range {v22 .. v23}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v10

    .line 53
    .local v10, "data":Ljava/util/Map;
    const-string v22, "errorMessage"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 55
    .local v12, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 56
    const-string v22, "KiwiGetItemDataRequestCommandTask"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "onSuccess: errorMessage: \""

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 60
    .local v21, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v13, "itemData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    sget-object v18, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    .line 64
    .local v18, "requestStatus":Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->_skus:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_4

    .line 96
    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_6

    sget-object v18, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    .line 100
    :goto_1
    new-instance v14, Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v14, v0, v1, v2, v13}, Lcom/amazon/inapp/purchasing/ItemDataResponse;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;Ljava/util/Map;)V

    .line 102
    .local v14, "itemDataResponse":Lcom/amazon/inapp/purchasing/ItemDataResponse;
    new-instance v19, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    .line 113
    .local v19, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v20

    .line 114
    .local v20, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    new-instance v22, Landroid/os/Handler;

    invoke-virtual/range {v20 .. v20}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void

    .line 65
    .end local v14    # "itemDataResponse":Lcom/amazon/inapp/purchasing/ItemDataResponse;
    .end local v19    # "runnable":Ljava/lang/Runnable;
    .end local v20    # "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, "sku":Ljava/lang/String;
    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 67
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_5
    :try_start_0
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 73
    .local v16, "itemString":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v15, "itemJson":Lorg/json/JSONObject;
    const-string v23, "title"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "title":Ljava/lang/String;
    const-string v23, "description"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "description":Ljava/lang/String;
    const-string v23, "iconUrl"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "smallIconUrl":Ljava/lang/String;
    const-string v23, "price"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "price":Ljava/lang/String;
    const-string v23, "itemType"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 81
    .local v17, "itemTypeString":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/amazon/inapp/purchasing/Item$ItemType;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v6

    .line 83
    .local v6, "itemType":Lcom/amazon/inapp/purchasing/Item$ItemType;
    new-instance v3, Lcom/amazon/inapp/purchasing/Item;

    invoke-direct/range {v3 .. v9}, Lcom/amazon/inapp/purchasing/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v3, "item":Lcom/amazon/inapp/purchasing/Item;
    invoke-interface {v13, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 85
    .end local v3    # "item":Lcom/amazon/inapp/purchasing/Item;
    .end local v5    # "price":Ljava/lang/String;
    .end local v6    # "itemType":Lcom/amazon/inapp/purchasing/Item$ItemType;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "description":Ljava/lang/String;
    .end local v9    # "smallIconUrl":Ljava/lang/String;
    .end local v15    # "itemJson":Lorg/json/JSONObject;
    .end local v16    # "itemString":Ljava/lang/String;
    .end local v17    # "itemTypeString":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 86
    .local v11, "e":Lorg/json/JSONException;
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 88
    const-string v23, "KiwiGetItemDataRequestCommandTask"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Error parsing JSON for SKU "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/amazon/inapp/purchasing/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .end local v4    # "sku":Ljava/lang/String;
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_6
    sget-object v18, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    goto/16 :goto_1
.end method
