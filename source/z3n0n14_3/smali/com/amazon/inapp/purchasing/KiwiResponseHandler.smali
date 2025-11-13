.class final Lcom/amazon/inapp/purchasing/KiwiResponseHandler;
.super Ljava/lang/Object;
.source "KiwiResponseHandler.java"

# interfaces
.implements Lcom/amazon/inapp/purchasing/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/inapp/purchasing/KiwiResponseHandler$PurchaseResponseHandlerRunnable;,
        Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;,
        Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType:[I = null

.field static final KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field static final KEY_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field private static final TAG:Ljava/lang/String; = "KiwiResponseHandler"


# instance fields
.field private final _handler:Landroid/os/Handler;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler;->$SWITCH_TABLE$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->values()[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->purchase_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler;->$SWITCH_TABLE$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResponseHandlerImpl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler;->_handler:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public handleResponse(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string v4, "KiwiResponseHandler"

    const-string v5, "handleResponse"

    invoke-static {v4, v5}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "response_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "responseTypeExtra":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 45
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    const-string v4, "KiwiResponseHandler"

    const-string v5, "Invalid response type: null"

    invoke-static {v4, v5}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    const/4 v2, 0x0

    .line 54
    .local v2, "responseType":Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
    :try_start_0
    invoke-static {v3}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    const-string v4, "KiwiResponseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found response type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    const/4 v1, 0x0

    .line 68
    .local v1, "responseRunnable":Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;
    invoke-static {}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler;->$SWITCH_TABLE$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType()[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 74
    :goto_1
    iget-object v4, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler;->_handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 55
    .end local v1    # "responseRunnable":Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    const-string v4, "KiwiResponseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invlid response type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "responseRunnable":Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;
    :pswitch_0
    new-instance v1, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$PurchaseResponseHandlerRunnable;

    .end local v1    # "responseRunnable":Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;
    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$PurchaseResponseHandlerRunnable;-><init>(Lcom/amazon/inapp/purchasing/KiwiResponseHandler;Landroid/content/Context;Landroid/content/Intent;)V

    .restart local v1    # "responseRunnable":Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;
    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
