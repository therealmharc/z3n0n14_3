.class Lcom/amazon/inapp/purchasing/KiwiResponseHandler$PurchaseResponseHandlerRunnable;
.super Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;
.source "KiwiResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/inapp/purchasing/KiwiResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseResponseHandlerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiResponseHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/inapp/purchasing/KiwiResponseHandler;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$PurchaseResponseHandlerRunnable;->this$0:Lcom/amazon/inapp/purchasing/KiwiResponseHandler;

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;-><init>(Lcom/amazon/inapp/purchasing/KiwiResponseHandler;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 104
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "KiwiResponseHandler"

    const-string v3, "PurchaseResponseHandlerRunnable.run()"

    invoke-static {v2, v3}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$PurchaseResponseHandlerRunnable;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "requestId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "requestId":Ljava/lang/String;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    const-string v2, "KiwiResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PurchaseResponseHandlerRunnable.run: requestId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

    invoke-direct {v0, v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "command":Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;
    invoke-static {v0}, Lcom/amazon/android/Kiwi;->addCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    .line 116
    return-void
.end method
