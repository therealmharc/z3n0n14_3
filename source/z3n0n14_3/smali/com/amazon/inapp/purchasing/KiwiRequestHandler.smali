.class final Lcom/amazon/inapp/purchasing/KiwiRequestHandler;
.super Ljava/lang/Object;
.source "KiwiRequestHandler.java"

# interfaces
.implements Lcom/amazon/inapp/purchasing/RequestHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "KiwiRequestHandler"


# instance fields
.field private final _handler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KiwiRequestHandlerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Landroid/os/Handler;

    .line 26
    return-void
.end method


# virtual methods
.method public sendContentDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method public sendGetUserIdRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "KiwiRequestHandler"

    const-string v2, "sendGetUserIdRequest"

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/lang/String;)V

    .line 42
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
.end method

.method public sendItemDataRequest(Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
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
    .line 64
    .local p1, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "KiwiRequestHandler"

    const-string v2, "sendItemDataRequest"

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$3;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/util/Set;Ljava/lang/String;)V

    .line 76
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public sendPurchaseRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "KiwiRequestHandler"

    const-string v2, "sendPurchaseRequest"

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public sendPurchaseResponseReceivedRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "KiwiRequestHandler"

    const-string v2, "sendPurchaseResponseReceivedRequest"

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$5;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/lang/String;)V

    .line 116
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public sendPurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V
    .locals 3
    .param p1, "offset"    # Lcom/amazon/inapp/purchasing/Offset;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "KiwiRequestHandler"

    const-string v2, "sendPurchaseUpdatesRequest"

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V

    .line 99
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method
