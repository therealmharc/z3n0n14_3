.class Lcom/feelingk/iap/net/IAPBase$CallMembership;
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
    name = "CallMembership"
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
.field private pBPInfo:Ljava/lang/String;

.field private pID:Ljava/lang/String;

.field private pMdn:Ljava/lang/String;

.field private pName:Ljava/lang/String;

.field private pTID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "telecom"    # I
    .param p3, "mdn"    # Ljava/lang/String;
    .param p4, "productID"    # Ljava/lang/String;
    .param p5, "productName"    # Ljava/lang/String;
    .param p6, "pTID"    # Ljava/lang/String;
    .param p7, "pBPInfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 840
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTelecom:I

    .line 824
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pMdn:Ljava/lang/String;

    .line 825
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pID:Ljava/lang/String;

    .line 826
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pName:Ljava/lang/String;

    .line 827
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTID:Ljava/lang/String;

    .line 828
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pBPInfo:Ljava/lang/String;

    .line 833
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTelecom:I

    .line 834
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pMdn:Ljava/lang/String;

    .line 836
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pID:Ljava/lang/String;

    .line 837
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pName:Ljava/lang/String;

    .line 838
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTID:Ljava/lang/String;

    .line 839
    iput-object p7, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pBPInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 845
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 846
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 884
    :goto_0
    return-object v0

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTelecom:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTelecom:I

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pMdn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPNet;->iapSendDataMembership(ILjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$0(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 856
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MEMBERSHIP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 857
    const-string v0, "IAPBase"

    const-string v1, "CallItemMembership Function "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$1(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$2(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 862
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_2

    .line 863
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_2

    .line 864
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_3

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 868
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    .line 869
    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    .line 868
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 875
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 873
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7db

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 877
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-nez v0, :cond_5

    .line 879
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MEMBERSHIP_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 880
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x460

    .line 881
    new-instance v2, Lcom/feelingk/iap/net/PurchaseParam;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pID:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pName:Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTID:Ljava/lang/String;

    iget-object v6, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pBPInfo:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/feelingk/iap/net/PurchaseParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 884
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallMembership;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
