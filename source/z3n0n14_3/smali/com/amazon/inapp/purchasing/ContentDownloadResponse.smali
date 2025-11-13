.class final Lcom/amazon/inapp/purchasing/ContentDownloadResponse;
.super Ljava/lang/Object;
.source "ContentDownloadResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
    }
.end annotation


# instance fields
.field private final _contentDownloadRequestStatus:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

.field private final _percentComplete:I

.field private final _requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "percentComplete"    # I
    .param p3, "contentDownloadRequestStatus"    # Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string v0, "contentDownloadRequestStatus"

    invoke-static {p3, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_requestId:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_percentComplete:I

    .line 59
    iput-object p3, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_contentDownloadRequestStatus:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    .line 60
    return-void
.end method


# virtual methods
.method public getContentDownloadRequestStatus()Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_contentDownloadRequestStatus:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    return-object v0
.end method

.method public getPercentComplete()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_percentComplete:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_requestId:Ljava/lang/String;

    return-object v0
.end method
