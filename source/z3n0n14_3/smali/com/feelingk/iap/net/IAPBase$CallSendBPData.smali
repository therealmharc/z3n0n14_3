.class Lcom/feelingk/iap/net/IAPBase$CallSendBPData;
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
    name = "CallSendBPData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;"
    }
.end annotation


# instance fields
.field private mData:[B

.field private mTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;[BI)V
    .locals 1
    .param p2, "data"    # [B
    .param p3, "telecom"    # I

    .prologue
    .line 729
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mData:[B

    .line 721
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mTelecom:I

    .line 727
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mData:[B

    .line 728
    iput p3, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mTelecom:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 732
    const/4 v11, 0x0

    .line 734
    .local v11, "init":Lcom/feelingk/iap/net/InitConfirm;
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v0, v0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 735
    .local v10, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 736
    .local v12, "mobile":Landroid/net/NetworkInfo;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 739
    .local v14, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    .line 752
    :goto_0
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallSendBPData Start!!  WifiEnable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-boolean v2, v2, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-boolean v0, v0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    if-eqz v0, :cond_2

    .line 755
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 756
    new-instance v0, Lcom/feelingk/iap/net/ServerInfo;

    const-string v1, "iapdev.tstore.co.kr"

    const/16 v2, 0x1d56

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 757
    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mTelecom:I

    .line 758
    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 759
    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v3, v3, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 760
    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v4, v4, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 761
    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v5, v5, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 762
    const/4 v6, 0x0

    .line 763
    const/4 v7, 0x0

    .line 764
    const/4 v8, 0x0

    .line 765
    const/4 v9, 0x1

    .line 756
    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v11

    .line 779
    :goto_1
    if-nez v11, :cond_3

    .line 780
    const/4 v13, 0x0

    .line 807
    :goto_2
    return-object v13

    .line 742
    :cond_0
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    goto :goto_0

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, -0x1

    iput v1, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 747
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d0

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c\uac00 \uc5f0\uacb0\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 748
    const/4 v13, 0x0

    goto :goto_2

    .line 769
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 770
    new-instance v0, Lcom/feelingk/iap/net/ServerInfo;

    const-string v1, "iapdev.tstore.co.kr"

    const/16 v2, 0x1dba

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 771
    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mTelecom:I

    .line 772
    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 773
    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v3, v3, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 774
    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v4, v4, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 775
    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v5, v5, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 770
    invoke-static/range {v0 .. v5}, Lcom/feelingk/iap/net/IAPNet;->iapConnectBP(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v11

    goto :goto_1

    .line 782
    :cond_3
    const/4 v13, 0x0

    check-cast v13, [B

    .line 783
    .local v13, "returnData":[B
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-boolean v0, v0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    if-nez v0, :cond_7

    .line 785
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v0, v11}, Lcom/feelingk/iap/net/IAPBase;->access$2(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 786
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_4

    .line 787
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_4

    .line 788
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_5

    .line 791
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, 0x0

    iput v1, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 792
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 797
    :goto_3
    const/4 v13, 0x0

    goto :goto_2

    .line 795
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d0

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_3

    .line 800
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mData:[B

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapSendDataBP([B)[B

    move-result-object v13

    .line 801
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapCloseBP(Z)I

    goto/16 :goto_2

    .line 804
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mData:[B

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapSendData([B)[B

    move-result-object v13

    goto/16 :goto_2
.end method
