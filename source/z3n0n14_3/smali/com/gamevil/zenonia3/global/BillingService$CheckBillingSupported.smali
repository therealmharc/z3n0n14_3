.class public Lcom/gamevil/zenonia3/global/BillingService$CheckBillingSupported;
.super Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/BillingService;


# direct methods
.method public constructor <init>(Lcom/gamevil/zenonia3/global/BillingService;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/BillingService$CheckBillingSupported;->this$0:Lcom/gamevil/zenonia3/global/BillingService;

    .line 191
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;-><init>(Lcom/gamevil/zenonia3/global/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lcom/gamevil/zenonia3/global/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 197
    .local v1, "request":Landroid/os/Bundle;
    invoke-static {}, Lcom/gamevil/zenonia3/global/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 198
    .local v2, "response":Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 200
    .local v3, "responseCode":I
    const-string v4, "#BillingService#"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CheckBillingSupported response code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-static {v3}, Lcom/gamevil/zenonia3/global/Consts$ResponseCode;->valueOf(I)Lcom/gamevil/zenonia3/global/Consts$ResponseCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v4, Lcom/gamevil/zenonia3/global/Consts$ResponseCode;->RESULT_OK:Lcom/gamevil/zenonia3/global/Consts$ResponseCode;

    invoke-virtual {v4}, Lcom/gamevil/zenonia3/global/Consts$ResponseCode;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 204
    .local v0, "billingSupported":Z
    :goto_0
    invoke-static {v0}, Lcom/gamevil/zenonia3/global/ResponseHandler;->checkBillingSupportedResponse(Z)V

    .line 205
    sget-wide v4, Lcom/gamevil/zenonia3/global/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 203
    .end local v0    # "billingSupported":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
