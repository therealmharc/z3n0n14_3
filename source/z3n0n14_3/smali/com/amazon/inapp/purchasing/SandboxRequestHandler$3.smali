.class Lcom/amazon/inapp/purchasing/SandboxRequestHandler$3;
.super Ljava/lang/Object;
.source "SandboxRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->sendItemDataRequest(Ljava/util/Set;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

.field private final synthetic val$response:Lcom/amazon/inapp/purchasing/ItemDataResponse;

.field private final synthetic val$skus:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$3;->this$0:Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$3;->val$skus:Ljava/util/Set;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$3;->val$response:Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 382
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const-string v1, "SandboxRequestHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Running Runnable for sendItemDataRequest with SKUs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$3;->val$skus:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    .line 388
    .local v0, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$3;->val$response:Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    .line 391
    :cond_1
    return-void
.end method
