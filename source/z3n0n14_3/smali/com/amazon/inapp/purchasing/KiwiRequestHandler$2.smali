.class Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;
.super Ljava/lang/Object;
.source "KiwiRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->sendPurchaseRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiRequestHandler;

.field private final synthetic val$requestId:Ljava/lang/String;

.field private final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;->this$0:Lcom/amazon/inapp/purchasing/KiwiRequestHandler;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;->val$requestId:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;->val$sku:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;->val$requestId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, "command":Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;
    invoke-static {v0}, Lcom/amazon/android/Kiwi;->addCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    .line 56
    return-void
.end method
