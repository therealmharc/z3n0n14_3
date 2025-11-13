.class final Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;
.super Lcom/amazon/inapp/purchasing/Request;
.source "PurchaseUpdatesRequest.java"


# instance fields
.field private final _offset:Lcom/amazon/inapp/purchasing/Offset;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/Offset;)V
    .locals 1
    .param p1, "offset"    # Lcom/amazon/inapp/purchasing/Offset;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/Request;-><init>()V

    .line 14
    const-string v0, "offset"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;)Lcom/amazon/inapp/purchasing/Offset;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    return-object v0
.end method


# virtual methods
.method getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest$1;-><init>(Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;)V

    return-object v0
.end method
