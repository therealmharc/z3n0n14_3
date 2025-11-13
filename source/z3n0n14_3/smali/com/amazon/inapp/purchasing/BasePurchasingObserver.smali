.class public Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.super Lcom/amazon/inapp/purchasing/PurchasingObserver;
.source "BasePurchasingObserver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method onContentDownloadResponse(Lcom/amazon/inapp/purchasing/ContentDownloadResponse;)V
    .locals 0
    .param p1, "contentDownloadResponse"    # Lcom/amazon/inapp/purchasing/ContentDownloadResponse;

    .prologue
    .line 44
    return-void
.end method

.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 0
    .param p1, "getUserIdResponse"    # Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    .line 29
    return-void
.end method

.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 0
    .param p1, "itemDataResponse"    # Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    .line 39
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 0
    .param p1, "purchaseResponse"    # Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    .line 34
    return-void
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 0
    .param p1, "purchaseUpdatesResponse"    # Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    .line 49
    return-void
.end method

.method public onSdkAvailable(Z)V
    .locals 0
    .param p1, "isSandboxMode"    # Z

    .prologue
    .line 24
    return-void
.end method
