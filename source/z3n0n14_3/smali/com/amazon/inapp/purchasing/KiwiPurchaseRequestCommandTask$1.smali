.class Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;
.super Ljava/lang/Object;
.source "KiwiPurchaseRequestCommandTask.java"

# interfaces
.implements Lcom/amazon/android/framework/task/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->val$intent:Landroid/content/Intent;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

    invoke-static {v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->access$0(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;)Lcom/amazon/android/framework/context/ContextManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/framework/context/ContextManager;->getVisible()Landroid/app/Activity;

    move-result-object v0

    .line 69
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 70
    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

    invoke-static {v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->access$0(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;)Lcom/amazon/android/framework/context/ContextManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/framework/context/ContextManager;->getRoot()Landroid/app/Activity;

    move-result-object v0

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "KiwiPurchaseRequestCommandTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in PurchaseItemCommandTask.OnSuccess: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
