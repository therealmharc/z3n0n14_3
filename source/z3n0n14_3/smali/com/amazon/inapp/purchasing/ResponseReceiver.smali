.class public final Lcom/amazon/inapp/purchasing/ResponseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResponseReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getResponseHandler()Lcom/amazon/inapp/purchasing/ResponseHandler;

    move-result-object v0

    .line 37
    .local v0, "responseHandler":Lcom/amazon/inapp/purchasing/ResponseHandler;
    invoke-interface {v0, p1, p2}, Lcom/amazon/inapp/purchasing/ResponseHandler;->handleResponse(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    return-void
.end method
