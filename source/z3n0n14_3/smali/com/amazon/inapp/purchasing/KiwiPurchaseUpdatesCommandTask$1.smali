.class Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask$1;
.super Ljava/lang/Object;
.source "KiwiPurchaseUpdatesCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;->onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;

.field private final synthetic val$purchaseUpdatesResponse:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask$1;->val$purchaseUpdatesResponse:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    .line 134
    .local v0, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask$1;->val$purchaseUpdatesResponse:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V

    .line 137
    :cond_0
    return-void
.end method
