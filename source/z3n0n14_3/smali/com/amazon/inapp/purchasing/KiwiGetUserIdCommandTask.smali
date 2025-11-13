.class final Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask;
.super Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;
.source "KiwiGetUserIdCommandTask.java"


# static fields
.field private static final COMMAND_NAME:Ljava/lang/String; = "get_userId"

.field private static final COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiGetUserIdCommandTask"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "get_userId"

    const-string v1, "1.0"

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
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
    .line 64
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "KiwiGetUserIdCommandTask"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 7
    .param p1, "result"    # Lcom/amazon/venezia/command/SuccessResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    const-string v5, "KiwiGetUserIdCommandTask"

    const-string v6, "onSuccess"

    invoke-static {v5, v6}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v0

    .line 42
    .local v0, "data":Ljava/util/Map;
    const-string v5, "userId"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 45
    .local v4, "userId":Ljava/lang/String;
    new-instance v1, Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    invoke-direct {v1, v5, v6, v4}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;-><init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;Ljava/lang/String;)V

    .line 47
    .local v1, "getUserIdResponse":Lcom/amazon/inapp/purchasing/GetUserIdResponse;
    new-instance v2, Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask;Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V

    .line 58
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v3

    .line 59
    .local v3, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method
