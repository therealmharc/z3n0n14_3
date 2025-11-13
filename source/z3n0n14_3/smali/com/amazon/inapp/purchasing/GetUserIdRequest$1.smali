.class Lcom/amazon/inapp/purchasing/GetUserIdRequest$1;
.super Ljava/lang/Object;
.source "GetUserIdRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/GetUserIdRequest;->getRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/GetUserIdRequest;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/GetUserIdRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/GetUserIdRequest$1;->this$0:Lcom/amazon/inapp/purchasing/GetUserIdRequest;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;

    move-result-object v0

    .line 13
    .local v0, "requestHandler":Lcom/amazon/inapp/purchasing/RequestHandler;
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/GetUserIdRequest$1;->this$0:Lcom/amazon/inapp/purchasing/GetUserIdRequest;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/GetUserIdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendGetUserIdRequest(Ljava/lang/String;)V

    .line 14
    return-void
.end method
