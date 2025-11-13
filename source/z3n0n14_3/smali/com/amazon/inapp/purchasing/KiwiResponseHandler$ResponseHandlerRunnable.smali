.class abstract Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;
.super Ljava/lang/Object;
.source "KiwiResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/inapp/purchasing/KiwiResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ResponseHandlerRunnable"
.end annotation


# instance fields
.field private final _context:Landroid/content/Context;

.field private final _intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiResponseHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/inapp/purchasing/KiwiResponseHandler;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->this$0:Lcom/amazon/inapp/purchasing/KiwiResponseHandler;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->_context:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->_intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->_context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->_intent:Landroid/content/Intent;

    return-object v0
.end method
