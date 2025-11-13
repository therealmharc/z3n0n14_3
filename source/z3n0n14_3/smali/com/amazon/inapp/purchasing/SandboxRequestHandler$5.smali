.class Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;
.super Ljava/lang/Object;
.source "SandboxRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->sendPurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

.field private final synthetic val$offset:Lcom/amazon/inapp/purchasing/Offset;

.field private final synthetic val$response:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Lcom/amazon/inapp/purchasing/Offset;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->this$0:Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->val$offset:Lcom/amazon/inapp/purchasing/Offset;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->val$response:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 581
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const-string v1, "SandboxRequestHandler"

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Running runnable for sendPurchaseUpdatesRequest with offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->val$offset:Lcom/amazon/inapp/purchasing/Offset;

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    .line 587
    .local v0, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    if-eqz v0, :cond_1

    .line 588
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->val$response:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V

    .line 590
    :cond_1
    return-void
.end method
