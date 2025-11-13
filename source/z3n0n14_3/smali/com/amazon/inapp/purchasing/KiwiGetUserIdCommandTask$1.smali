.class Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask$1;
.super Ljava/lang/Object;
.source "KiwiGetUserIdCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask;->onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask;

.field private final synthetic val$getUserIdResponse:Lcom/amazon/inapp/purchasing/GetUserIdResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask;Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask$1;->val$getUserIdResponse:Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    .line 52
    .local v0, "sdkObserver":Lcom/amazon/inapp/purchasing/PurchasingObserver;
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiGetUserIdCommandTask$1;->val$getUserIdResponse:Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V

    .line 55
    :cond_0
    return-void
.end method
