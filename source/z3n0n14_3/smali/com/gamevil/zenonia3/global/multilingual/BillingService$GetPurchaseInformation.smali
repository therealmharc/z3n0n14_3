.class public Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;
.super Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/multilingual/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/gamevil/zenonia3/global/multilingual/BillingService;


# direct methods
.method public constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "startId"    # I
    .param p3, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->this$0:Lcom/gamevil/zenonia3/global/multilingual/BillingService;

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;-><init>(Lcom/gamevil/zenonia3/global/multilingual/BillingService;I)V

    .line 288
    iput-object p3, p0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 307
    iget-wide v0, p0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Security;->removeNonce(J)V

    .line 308
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/gamevil/zenonia3/global/multilingual/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->mNonce:J

    .line 295
    const-string v2, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 296
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    const-string v2, "NOTIFY_IDS"

    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 299
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "getPurchaseInformation"

    invoke-virtual {p0, v2, v1}, Lcom/gamevil/zenonia3/global/multilingual/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 300
    const-string v2, "REQUEST_ID"

    .line 301
    sget-wide v3, Lcom/gamevil/zenonia3/global/multilingual/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 300
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
