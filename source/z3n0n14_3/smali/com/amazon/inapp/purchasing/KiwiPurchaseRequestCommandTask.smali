.class final Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;
.super Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;
.source "KiwiPurchaseRequestCommandTask.java"


# static fields
.field private static final COMMAND_NAME:Ljava/lang/String; = "purchase_item"

.field private static final COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiPurchaseRequestCommandTask"


# instance fields
.field private final _sku:Ljava/lang/String;

.field private contextMgr:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private taskManager:Lcom/amazon/android/framework/task/TaskManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "purchase_item"

    const-string v1, "1.0"

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->_sku:Ljava/lang/String;

    .line 41
    const-string v0, "sku"

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->_sku:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->addCommandData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;)Lcom/amazon/android/framework/context/ContextManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->contextMgr:Lcom/amazon/android/framework/context/ContextManager;

    return-object v0
.end method


# virtual methods
.method protected onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 5
    .param p1, "result"    # Lcom/amazon/venezia/command/SuccessResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "KiwiPurchaseRequestCommandTask"

    const-string v3, "onSuccess"

    invoke-static {v2, v3}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v0

    .line 56
    .local v0, "data":Ljava/util/Map;
    const-string v2, "purchaseItemIntent"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "KiwiPurchaseRequestCommandTask"

    const-string v3, "found intent"

    invoke-static {v2, v3}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    const-string v2, "purchaseItemIntent"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v3, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    new-instance v4, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;

    invoke-direct {v4, p0, v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;Landroid/content/Intent;)V

    invoke-interface {v2, v3, v4}, Lcom/amazon/android/framework/task/TaskManager;->enqueueAtFront(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    .line 87
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const-string v2, "KiwiPurchaseRequestCommandTask"

    const-string v3, "did not find intent"

    invoke-static {v2, v3}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
