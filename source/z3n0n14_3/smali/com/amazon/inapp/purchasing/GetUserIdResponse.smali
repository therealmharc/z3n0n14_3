.class public final Lcom/amazon/inapp/purchasing/GetUserIdResponse;
.super Ljava/lang/Object;
.source "GetUserIdResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;
    }
.end annotation


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, requestId: \"%s\", getUserIdRequestStatus: \"%s\", userId: \"%s\")"


# instance fields
.field private final _getUserIdRequestStatus:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

.field private final _requestId:Ljava/lang/String;

.field private final _userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "getUserIdRequestStatus"    # Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "getUserIdRequestStatus"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v0, p2, :cond_0

    .line 45
    const-string v0, "userId"

    invoke-static {p3, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->_requestId:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->_userId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->_getUserIdRequestStatus:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    .line 51
    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->_requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->_getUserIdRequestStatus:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const-string v0, "(%s, requestId: \"%s\", getUserIdRequestStatus: \"%s\", userId: \"%s\")"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->_requestId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->_getUserIdRequestStatus:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->_userId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
