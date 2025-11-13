.class Lcom/amazon/inapp/purchasing/PurchaseRequest$1;
.super Ljava/lang/Object;
.source "PurchaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/PurchaseRequest;->getRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/PurchaseRequest;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/PurchaseRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseRequest;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;

    move-result-object v0

    .line 23
    .local v0, "requestHandler":Lcom/amazon/inapp/purchasing/RequestHandler;
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/PurchaseRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseRequest;

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchaseRequest;->access$0(Lcom/amazon/inapp/purchasing/PurchaseRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/PurchaseRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseRequest;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendPurchaseRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method
