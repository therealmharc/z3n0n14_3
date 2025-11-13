.class Lcom/feelingk/iap/net/IAPBase$CallItemQuery;
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
    name = "CallItemQuery"
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

.field private pName:Ljava/lang/String;

.field private pTID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "telecom"    # I
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "pTID"    # Ljava/lang/String;
    .param p6, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-direct {p0, p1, p3, p4}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTelecom:I

    .line 374
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTID:Ljava/lang/String;

    .line 375
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pBPInfo:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 361
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTelecom:I

    .line 352
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pID:Ljava/lang/String;

    .line 353
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pName:Ljava/lang/String;

    .line 354
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTID:Ljava/lang/String;

    .line 355
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pBPInfo:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pID:Ljava/lang/String;

    .line 360
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pName:Ljava/lang/String;

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
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 379
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 380
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTelecom:I

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTID:Ljava/lang/String;

    invoke-virtual {v0, v1, v6, v2}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pName:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTID:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pBPInfo:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$0(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 387
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 389
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$1(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$2(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_2

    .line 391
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_2

    .line 392
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_3

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 396
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 400
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d2

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 404
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x451

    invoke-static {v0, v1, v6}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 406
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
