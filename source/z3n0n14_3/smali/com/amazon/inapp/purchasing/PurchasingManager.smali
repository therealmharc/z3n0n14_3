.class public final Lcom/amazon/inapp/purchasing/PurchasingManager;
.super Ljava/lang/Object;
.source "PurchasingManager.java"


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field public static final ITEM_DATA_REQUEST_MAX_SKUS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PurchasingManager"

.field private static registeredPurchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PurchasingManagerHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/amazon/inapp/purchasing/PurchasingManager;->HANDLER:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/amazon/inapp/purchasing/PurchasingManager$1;

    invoke-direct {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager$1;-><init>()V

    .line 48
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/amazon/inapp/purchasing/PurchasingManager;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static checkObserverRegistered()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/amazon/inapp/purchasing/PurchasingManager;->registeredPurchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must register a PurchasingObserver before invoking this operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method static getObserverContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/amazon/inapp/purchasing/PurchasingManager;->registeredPurchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/inapp/purchasing/PurchasingManager;->registeredPurchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method static getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/amazon/inapp/purchasing/PurchasingManager;->registeredPurchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;

    return-object v0
.end method

.method static initiateContentDownloadRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->checkObserverRegistered()V

    .line 169
    new-instance v0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;

    invoke-direct {v0, p0, p1}, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateRequest(Lcom/amazon/inapp/purchasing/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initiateGetUseridRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->checkObserverRegistered()V

    .line 124
    new-instance v0, Lcom/amazon/inapp/purchasing/GetUserIdRequest;

    invoke-direct {v0}, Lcom/amazon/inapp/purchasing/GetUserIdRequest;-><init>()V

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateRequest(Lcom/amazon/inapp/purchasing/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initiateItemDataRequest(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->checkObserverRegistered()V

    .line 152
    new-instance v0, Lcom/amazon/inapp/purchasing/ItemDataRequest;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/ItemDataRequest;-><init>(Ljava/util/Set;)V

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateRequest(Lcom/amazon/inapp/purchasing/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->checkObserverRegistered()V

    .line 138
    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseRequest;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/PurchaseRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateRequest(Lcom/amazon/inapp/purchasing/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;
    .locals 1
    .param p0, "offset"    # Lcom/amazon/inapp/purchasing/Offset;

    .prologue
    .line 190
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->checkObserverRegistered()V

    .line 191
    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;-><init>(Lcom/amazon/inapp/purchasing/Offset;)V

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateRequest(Lcom/amazon/inapp/purchasing/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initiateRequest(Lcom/amazon/inapp/purchasing/Request;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lcom/amazon/inapp/purchasing/Request;

    .prologue
    .line 114
    sget-object v0, Lcom/amazon/inapp/purchasing/PurchasingManager;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/Request;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/Request;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V
    .locals 3
    .param p0, "purchasingObserver"    # Lcom/amazon/inapp/purchasing/PurchasingObserver;

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided PurchasingObserver must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    sput-object p0, Lcom/amazon/inapp/purchasing/PurchasingManager;->registeredPurchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;

    .line 95
    new-instance v0, Lcom/amazon/inapp/purchasing/PurchasingManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/PurchasingManager$2;-><init>(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 107
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchasingManager;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method
