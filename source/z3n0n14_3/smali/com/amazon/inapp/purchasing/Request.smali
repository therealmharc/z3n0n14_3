.class abstract Lcom/amazon/inapp/purchasing/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private final _requestId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/inapp/purchasing/Request;->_requestId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Request;->_requestId:Ljava/lang/String;

    return-object v0
.end method

.method abstract getRunnable()Ljava/lang/Runnable;
.end method
