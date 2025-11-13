.class public Lcom/gamevil/zenonia3/global/multilingual/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;,
        Lcom/gamevil/zenonia3/global/multilingual/BillingService$CheckBillingSupported;,
        Lcom/gamevil/zenonia3/global/multilingual/BillingService$ConfirmNotifications;,
        Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;,
        Lcom/gamevil/zenonia3/global/multilingual/BillingService$RequestPurchase;,
        Lcom/gamevil/zenonia3/global/multilingual/BillingService$RestoreTransactions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "#BillingService#"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    sput-object v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mSentRequests:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 350
    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/zenonia3/global/multilingual/BillingService;)Z
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/vending/billing/IMarketBillingService;)V
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 408
    :try_start_0
    const-string v3, "#BillingService#"

    const-string v4, "binding to Market billing service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    const-string v4, "com.android.vending"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const/4 v4, 0x1

    .line 410
    invoke-virtual {p0, v3, p0, v4}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 415
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    .line 423
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 418
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string v2, "#BillingService#"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "#BillingService#"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Security exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;

    .prologue
    .line 533
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;

    .line 534
    .local v0, "request":Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 536
    const-string v1, "#BillingService#"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v0, p3}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;->responseCodeReceived(Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;)V

    .line 540
    :cond_0
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 471
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$ConfirmNotifications;-><init>(Lcom/gamevil/zenonia3/global/multilingual/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 488
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;-><init>(Lcom/gamevil/zenonia3/global/multilingual/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {p2, p3}, Lcom/gamevil/zenonia3/global/multilingual/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 502
    .local v9, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;>;"
    if-nez v9, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v8, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 514
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 516
    .local v7, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 507
    .end local v7    # "notifyIds":[Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;

    .line 508
    .local v10, "vp":Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;
    iget-object v0, v10, Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 509
    iget-object v0, v10, Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_3
    iget-object v1, v10, Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;->purchaseState:Lcom/gamevil/zenonia3/global/multilingual/Consts$PurchaseState;

    iget-object v2, v10, Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 512
    iget-object v3, v10, Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v10, Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v10, Lcom/gamevil/zenonia3/global/multilingual/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    .line 511
    invoke-static/range {v0 .. v6}, Lcom/gamevil/zenonia3/global/multilingual/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/gamevil/zenonia3/global/multilingual/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private runPendingRequests()V
    .locals 5

    .prologue
    .line 548
    const/4 v0, -0x1

    .line 550
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;

    .local v1, "request":Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;
    if-nez v1, :cond_2

    .line 571
    if-ltz v0, :cond_1

    .line 573
    const-string v2, "#BillingService#"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopping service, startId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->stopSelf(I)V

    .line 577
    :cond_1
    :goto_1
    return-void

    .line 551
    :cond_2
    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 553
    sget-object v2, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 557
    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 558
    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 563
    :cond_3
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->bindToMarketBillingService()Z

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$CheckBillingSupported;-><init>(Lcom/gamevil/zenonia3/global/multilingual/BillingService;)V

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 376
    if-nez p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "action":Ljava/lang/String;
    const-string v9, "#BillingService#"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "handleCommand() action: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v9, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 382
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 384
    .end local v2    # "notifyIds":[Ljava/lang/String;
    :cond_2
    const-string v9, "com.gamevil.nexus2.billing.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 385
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "notifyId":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 387
    .end local v1    # "notifyId":Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 388
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, "signedData":Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 390
    .local v7, "signature":Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :cond_4
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 392
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 393
    .local v3, "requestId":J
    const-string v9, "response_code"

    .line 394
    sget-object v10, Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;->RESULT_ERROR:Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;

    invoke-virtual {v10}, Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;->ordinal()I

    move-result v10

    .line 393
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 395
    .local v6, "responseCodeIndex":I
    invoke-static {v6}, Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;->valueOf(I)Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;

    move-result-object v5

    .line 396
    .local v5, "responseCode":Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->checkResponseCode(JLcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "BillingService : onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->unbind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 585
    const-string v0, "#BillingService#"

    const-string v1, "Billing service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 588
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->runPendingRequests()V

    .line 589
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 595
    const-string v0, "#BillingService#"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 597
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 367
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 446
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$RequestPurchase;-><init>(Lcom/gamevil/zenonia3/global/multilingual/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 456
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$RestoreTransactions;-><init>(Lcom/gamevil/zenonia3/global/multilingual/BillingService;)V

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 354
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 605
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    goto :goto_0
.end method
