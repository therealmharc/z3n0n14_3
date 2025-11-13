.class public Lcom/feelingk/iap/net/IAPBase;
.super Lcom/feelingk/iap/net/IAPNet;
.source "IAPBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/net/IAPBase$CallItemAuth;,
        Lcom/feelingk/iap/net/IAPBase$CallItemInfo;,
        Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;,
        Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;,
        Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;,
        Lcom/feelingk/iap/net/IAPBase$CallItemQuery;,
        Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;,
        Lcom/feelingk/iap/net/IAPBase$CallMembership;,
        Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;,
        Lcom/feelingk/iap/net/IAPBase$CallSendBPData;,
        Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "IAPBase"


# instance fields
.field public APPLICATION_ID:Ljava/lang/String;

.field public BP_SERVER_IP:Ljava/lang/String;

.field public BP_SERVER_PORT:I

.field public MDN:Ljava/lang/String;

.field public errMsg:Ljava/lang/String;

.field private initCfm:Lcom/feelingk/iap/net/InitConfirm;

.field public isWifi:Z

.field private itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field private itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

.field private itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

.field public mContext:Landroid/content/Context;

.field private mEncJuminNumer:Ljava/lang/String;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mNetworkHandler:Landroid/os/Handler;

.field public mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field private msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

.field public subErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "setting"    # Lcom/feelingk/iap/IAPLibSetting;
    .param p4, "mdn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/feelingk/iap/net/IAPNet;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    .line 58
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    .line 67
    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MAIN:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 85
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    .line 88
    iget-object v0, p3, Lcom/feelingk/iap/IAPLibSetting;->AppID:Ljava/lang/String;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 89
    iget-object v0, p3, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 90
    iget v0, p3, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 91
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 93
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 94
    return-void
.end method

.method private SendMessageToNetwork(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageID"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "messageH":Landroid/os/Message;
    iget v1, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 126
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    return-void
.end method

.method static synthetic access$1(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    return-object v0
.end method

.method static synthetic access$2(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemInfoConfirm;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-void
.end method

.method static synthetic access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method static synthetic access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemWholeAuthConfirm;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-void
.end method

.method static synthetic access$7(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-object v0
.end method

.method static synthetic access$8(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemUseConfirm;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-void
.end method

.method static synthetic access$9(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-object v0
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapClose(Z)I

    .line 148
    return-void
.end method

.method private resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    .locals 5
    .param p1, "result"    # Lcom/feelingk/iap/net/MsgConfirm;

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    const-string v2, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ DEBUG ]  Network ErrorCode :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v2

    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 173
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v3

    const-string v4, "MS949"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    .line 175
    const-string v2, "flybbird"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network Message :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_ERROR:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 197
    :goto_1
    return v1

    .line 178
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetUserMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetUserMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetDumpMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetDumpMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 196
    :cond_3
    iput v1, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 197
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public ItemAuth(ILjava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "pID"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;

    invoke-direct {v1, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 663
    return-void
.end method

.method public ItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pTelecom"    # I
    .param p2, "PID"    # Ljava/lang/String;
    .param p3, "PNAME"    # Ljava/lang/String;
    .param p4, "pTID"    # Ljava/lang/String;
    .param p5, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 214
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "PID"    # Ljava/lang/String;
    .param p2, "PNAME"    # Ljava/lang/String;
    .param p3, "TCASH"    # Ljava/lang/Boolean;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 418
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "PID"    # Ljava/lang/String;
    .param p2, "PNAME"    # Ljava/lang/String;
    .param p3, "TID"    # Ljava/lang/String;
    .param p4, "BPINFO"    # Ljava/lang/String;
    .param p5, "TCASH"    # Ljava/lang/Boolean;

    .prologue
    .line 421
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 422
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9
    .param p1, "PID"    # Ljava/lang/String;
    .param p2, "PNAME"    # Ljava/lang/String;
    .param p3, "TID"    # Ljava/lang/String;
    .param p4, "BPINFO"    # Ljava/lang/String;
    .param p5, "TCASH"    # Ljava/lang/Boolean;
    .param p6, "useBPProtocol"    # Ljava/lang/Boolean;

    .prologue
    .line 426
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 427
    return-void
.end method

.method public ItemPurchaseDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 11
    .param p1, "mdn"    # Ljava/lang/String;
    .param p2, "pID"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "pCarrier"    # I
    .param p5, "TID"    # Ljava/lang/String;
    .param p6, "BPInfo"    # Ljava/lang/String;
    .param p7, "bTCash"    # Ljava/lang/Boolean;
    .param p8, "encJumin"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 495
    return-void
.end method

.method public ItemQuery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "telecom"    # I
    .param p2, "PID"    # Ljava/lang/String;
    .param p3, "PName"    # Ljava/lang/String;
    .param p4, "PTID"    # Ljava/lang/String;
    .param p5, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 347
    return-void
.end method

.method public ItemQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "PID"    # Ljava/lang/String;
    .param p2, "PName"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;

    invoke-direct {v1, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 344
    return-void
.end method

.method public ItemUse(ILjava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "PID"    # Ljava/lang/String;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;

    invoke-direct {v1, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 609
    return-void
.end method

.method public ItemWholeAuth(I)V
    .locals 2
    .param p1, "telecom"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;-><init>(Lcom/feelingk/iap/net/IAPBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 562
    return-void
.end method

.method public Membership(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "telecom"    # I
    .param p2, "pMdn"    # Ljava/lang/String;
    .param p3, "PID"    # Ljava/lang/String;
    .param p4, "PNAME"    # Ljava/lang/String;
    .param p5, "pTID"    # Ljava/lang/String;
    .param p6, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 818
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallMembership;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPBase$CallMembership;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 819
    return-void
.end method

.method public PurchaseDismiss(ILjava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "PID"    # Ljava/lang/String;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;

    invoke-direct {v1, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 898
    return-void
.end method

.method public Reset()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 137
    :cond_0
    return-void
.end method

.method public StopService()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 143
    :cond_0
    return-void
.end method

.method connect(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "pTelecom"    # I
    .param p2, "pID"    # Ljava/lang/String;
    .param p3, "pTID"    # Ljava/lang/String;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 955
    .local v10, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 956
    .local v11, "mobile":Landroid/net/NetworkInfo;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 959
    .local v12, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    .line 977
    :goto_0
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IAPBase) IAPNet Wifi = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  /  Connect= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->isConnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->isConnect()Z

    move-result v0

    if-nez v0, :cond_4

    .line 980
    const-string v0, "IAPBase"

    const-string v1, "G/W Connect and Success !!! "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    if-eqz v0, :cond_3

    .line 983
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 984
    new-instance v0, Lcom/feelingk/iap/net/ServerInfo;

    const-string v1, "iapdev.tstore.co.kr"

    const/16 v2, 0x1d56

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 986
    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 987
    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 990
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 991
    const/4 v9, 0x0

    move v1, p1

    move-object v6, p2

    move-object/from16 v7, p3

    .line 984
    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    .line 1011
    :goto_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    if-nez v0, :cond_5

    .line 1012
    const/4 v0, 0x0

    .line 1044
    :goto_2
    return v0

    .line 962
    :cond_0
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    goto :goto_0

    .line 966
    :cond_1
    if-nez p2, :cond_2

    .line 967
    const/4 v0, -0x1

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 968
    const/16 v0, 0x7d0

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c\uac00 \uc5f0\uacb0\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 973
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 971
    :cond_2
    const/16 v0, 0x7d7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_3

    .line 994
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 995
    new-instance v0, Lcom/feelingk/iap/net/ServerInfo;

    const-string v1, "iapdev.tstore.co.kr"

    const/16 v2, 0x1cf2

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 997
    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 998
    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 1001
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 1002
    const/4 v9, 0x0

    move v1, p1

    move-object v6, p2

    move-object/from16 v7, p3

    .line 995
    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    goto :goto_1

    .line 1007
    :cond_4
    const-string v0, "IAPBase"

    const-string v1, "G/W Re Connect + Auth"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    move v0, p1

    move-object v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPNet;->iapReAuth(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    goto :goto_1

    .line 1014
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {p0, v0}, Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1016
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_6

    .line 1017
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_6

    .line 1018
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_7

    .line 1021
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1022
    const/16 v0, 0x7d8

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1041
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1024
    :cond_7
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1028
    sget-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_SKT_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1029
    const/16 v0, 0x461

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1031
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1034
    :cond_8
    if-nez p2, :cond_9

    .line 1035
    const/16 v0, 0x7d0

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_4

    .line 1038
    :cond_9
    const/16 v0, 0x7d7

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_4

    .line 1044
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method public getInitConfirmMessage()Lcom/feelingk/iap/net/InitConfirm;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    return-object v0
.end method

.method public getItemInfoConfirmMessage()Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method public getItemUseConfirmMessage()Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-object v0
.end method

.method public getItemWholeAuthConfirmMessage()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-object v0
.end method

.method public sendBPData([BI)[B
    .locals 8
    .param p1, "data"    # [B
    .param p2, "telecom"    # I

    .prologue
    const/16 v7, 0x7d5

    const/4 v4, 0x0

    .line 700
    move-object v2, v4

    check-cast v2, [B

    .line 702
    .local v2, "returnData":[B
    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;

    invoke-direct {v6, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;-><init>(Lcom/feelingk/iap/net/IAPBase;[BI)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 705
    .local v3, "service":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 714
    :goto_0
    return-object v2

    .line 706
    :catch_0
    move-exception v1

    .line 707
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0, v7, v4}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 708
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 709
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 710
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-direct {p0, v7, v4}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 711
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBaseEncodeJuminNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "jumin"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 115
    return-void
.end method
