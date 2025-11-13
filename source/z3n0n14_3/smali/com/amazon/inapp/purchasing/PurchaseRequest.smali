.class Lcom/amazon/inapp/purchasing/PurchaseRequest;
.super Lcom/amazon/inapp/purchasing/Request;
.source "PurchaseRequest.java"


# instance fields
.field private final _sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/Request;-><init>()V

    .line 14
    const-string v0, "sku"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseRequest;->_sku:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/amazon/inapp/purchasing/PurchaseRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseRequest;->_sku:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/PurchaseRequest$1;-><init>(Lcom/amazon/inapp/purchasing/PurchaseRequest;)V

    return-object v0
.end method
