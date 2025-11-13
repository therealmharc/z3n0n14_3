.class final Lcom/amazon/inapp/purchasing/SandboxResponseHandler;
.super Ljava/lang/Object;
.source "SandboxResponseHandler.java"

# interfaces
.implements Lcom/amazon/inapp/purchasing/ResponseHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SandboxResponseHandler"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "SandboxResponseHandler"

    const-string v1, "handleResponse"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method
