.class Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;
.super Ljava/lang/Object;
.source "IAPBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/net/IAPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallItemItemUse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private pID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V
    .locals 1
    .param p2, "telecom"    # I
    .param p3, "productID"    # Ljava/lang/String;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->pID:Ljava/lang/String;

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->pTelecom:I

    .line 616
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->pTelecom:I

    .line 617
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->pID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 622
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 623
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 650
    :goto_0
    return-object v0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->pTelecom:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->pID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemUse(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemUseConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$8(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemUseConfirm;)V

    .line 632
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 633
    const-string v0, "IAPBase"

    const-string v1, "CallItemItemUse Function "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$9(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemUseConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$2(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 635
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_2

    .line 636
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_2

    .line 637
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_3

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 641
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 645
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d6

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 648
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 649
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x454

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 650
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
