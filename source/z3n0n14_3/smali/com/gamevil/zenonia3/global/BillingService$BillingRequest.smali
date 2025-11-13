.class public abstract Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/gamevil/zenonia3/global/BillingService;


# direct methods
.method public constructor <init>(Lcom/gamevil/zenonia3/global/BillingService;I)V
    .locals 0
    .param p2, "startId"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->this$0:Lcom/gamevil/zenonia3/global/BillingService;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p2, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->mStartId:I

    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Bundle;

    .prologue
    .line 176
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    invoke-static {v1}, Lcom/gamevil/zenonia3/global/Consts$ResponseCode;->valueOf(I)Lcom/gamevil/zenonia3/global/Consts$ResponseCode;

    move-result-object v0

    .line 178
    .local v0, "responseCode":Lcom/gamevil/zenonia3/global/Consts$ResponseCode;
    const-string v1, "#BillingService#"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, "request":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->this$0:Lcom/gamevil/zenonia3/global/BillingService;

    invoke-virtual {v2}, Lcom/gamevil/zenonia3/global/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 148
    const-string v0, "#BillingService#"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gamevil/zenonia3/global/BillingService;->access$4(Lcom/android/vending/billing/IMarketBillingService;)V

    .line 150
    return-void
.end method

.method protected responseCodeReceived(Lcom/gamevil/zenonia3/global/Consts$ResponseCode;)V
    .locals 0
    .param p1, "responseCode"    # Lcom/gamevil/zenonia3/global/Consts$ResponseCode;

    .prologue
    .line 164
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 5

    .prologue
    .line 122
    const-string v1, "#BillingService#"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runIfConnected()..  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/gamevil/zenonia3/global/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->mRequestId:J

    .line 128
    const-string v1, "#BillingService#"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->mRequestId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-wide v1, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 131
    invoke-static {}, Lcom/gamevil/zenonia3/global/BillingService;->access$3()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "#BillingService#"

    const-string v2, "runRequest runIfConnected() == true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return v0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/BillingService$BillingRequest;->this$0:Lcom/gamevil/zenonia3/global/BillingService;

    invoke-static {v1}, Lcom/gamevil/zenonia3/global/BillingService;->access$0(Lcom/gamevil/zenonia3/global/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "#BillingService#"

    const-string v2, "runRequest bindToMarketBillingService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/gamevil/zenonia3/global/BillingService;->access$1()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
