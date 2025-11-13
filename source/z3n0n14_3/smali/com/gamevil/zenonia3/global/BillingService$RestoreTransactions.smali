.class public Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;
.super Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/gamevil/zenonia3/global/BillingService;


# direct methods
.method public constructor <init>(Lcom/gamevil/zenonia3/global/BillingService;)V
    .locals 1

    .prologue
    .line 322
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;->this$0:Lcom/gamevil/zenonia3/global/BillingService;

    .line 321
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;-><init>(Lcom/gamevil/zenonia3/global/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 339
    iget-wide v0, p0, Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/gamevil/zenonia3/global/Security;->removeNonce(J)V

    .line 340
    return-void
.end method

.method protected responseCodeReceived(Lcom/gamevil/zenonia3/global/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/gamevil/zenonia3/global/Consts$ResponseCode;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;->this$0:Lcom/gamevil/zenonia3/global/BillingService;

    invoke-static {v0, p0, p1}, Lcom/gamevil/zenonia3/global/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;Lcom/gamevil/zenonia3/global/Consts$ResponseCode;)V

    .line 345
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
    .line 326
    invoke-static {}, Lcom/gamevil/zenonia3/global/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;->mNonce:J

    .line 328
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 329
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 330
    invoke-static {}, Lcom/gamevil/zenonia3/global/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 331
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/gamevil/zenonia3/global/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 332
    const-string v2, "REQUEST_ID"

    .line 333
    sget-wide v3, Lcom/gamevil/zenonia3/global/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 332
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
