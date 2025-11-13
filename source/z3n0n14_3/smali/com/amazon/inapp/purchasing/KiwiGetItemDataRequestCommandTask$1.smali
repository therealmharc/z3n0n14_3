.class Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;
.super Ljava/lang/Object;
.source "KiwiGetItemDataRequestCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;

.field private final synthetic val$itemDataResponse:Lcom/amazon/inapp/purchasing/ItemDataResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;->val$itemDataResponse:Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    .line 107
    .local v0, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;->val$itemDataResponse:Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    .line 110
    :cond_0
    return-void
.end method
