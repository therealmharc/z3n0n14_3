.class Lcom/feelingk/iap/net/IAPBase$CallItemInfo;
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
    name = "CallItemInfo"
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
    .line 226
    invoke-direct {p0, p1, p3, p4}, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTelecom:I

    .line 230
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    .line 231
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pBPInfo:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 245
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTelecom:I

    .line 219
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    .line 220
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pName:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    .line 222
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pBPInfo:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, -0xc

    const/16 v8, -0xd

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 251
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTelecom:I

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v2}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_VALID_USER:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 258
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pName:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pBPInfo:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$0(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 259
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 260
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$1(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$2(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_2

    .line 263
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_2

    .line 264
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v8, :cond_3

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 268
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 282
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v6, :cond_4

    .line 274
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_USER_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 275
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x45f

    invoke-static {v0, v1, v7}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 277
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d2

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemInfoQuery(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 288
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 290
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$2(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 291
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_6

    .line 292
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_6

    .line 293
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v8, :cond_7

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 297
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 330
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 303
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 304
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc815\uc2dd\ud310 \uc804\ud658\uc6a9 - subErrorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmFinalVersionCheck(Z)V

    .line 309
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_FINAL_VERSION_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 310
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x45d

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 311
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 316
    :cond_8
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 319
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAutoPurchaseCheck(Z)V

    .line 321
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 322
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 324
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 328
    :cond_9
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d1

    invoke-static {v0, v1, v7}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 333
    :cond_a
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 334
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 335
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
