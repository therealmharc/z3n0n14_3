.class final Lcom/amazon/inapp/purchasing/ContentDownloadRequest;
.super Lcom/amazon/inapp/purchasing/Request;
.source "ContentDownloadRequest.java"


# instance fields
.field private final _location:Ljava/lang/String;

.field private final _sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/Request;-><init>()V

    .line 15
    const-string v0, "sku"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->_sku:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->_location:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->_sku:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->_location:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;-><init>(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)V

    return-object v0
.end method
