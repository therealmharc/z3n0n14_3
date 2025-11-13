.class Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;
.super Ljava/lang/Object;
.source "KiwiPurchaseResponseCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

.field private final synthetic val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v1

    .line 90
    .local v1, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    if-eqz v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v1, v2}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    .line 92
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;

    move-result-object v0

    .line 93
    .local v0, "requestHandler":Lcom/amazon/inapp/purchasing/RequestHandler;
    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendPurchaseResponseReceivedRequest(Ljava/lang/String;)V

    .line 95
    .end local v0    # "requestHandler":Lcom/amazon/inapp/purchasing/RequestHandler;
    :cond_0
    return-void
.end method
