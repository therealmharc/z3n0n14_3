.class Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest$1;
.super Ljava/lang/Object;
.source "PurchaseUpdatesRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;->getRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;

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
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;->access$0(Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;)Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendPurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V

    .line 24
    return-void
.end method
