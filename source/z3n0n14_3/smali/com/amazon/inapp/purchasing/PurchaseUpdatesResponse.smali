.class public final Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
.super Ljava/lang/Object;
.source "PurchaseUpdatesResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;
    }
.end annotation


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, requestId: \"%s\", purchaseUpdatesRequestStatus: \"%s\", userId: \"%s\", receipts: %s, revokedSkus: %s, offset: \"%s\", isMore: \"%b\")"


# instance fields
.field private final _isMore:Z

.field private final _offset:Lcom/amazon/inapp/purchasing/Offset;

.field private final _purchaseUpdatesRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

.field private final _receipts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/inapp/purchasing/Receipt;",
            ">;"
        }
    .end annotation
.end field

.field private final _requestId:Ljava/lang/String;

.field private final _revokedSkus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/inapp/purchasing/Offset;Z)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "purchaseUpdatesRequestStatus"    # Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;
    .param p6, "offset"    # Lcom/amazon/inapp/purchasing/Offset;
    .param p7, "isMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/inapp/purchasing/Receipt;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/inapp/purchasing/Offset;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p4, "receipts":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/inapp/purchasing/Receipt;>;"
    .local p5, "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-string v0, "purchaseUpdatesRequestStatus"

    invoke-static {p3, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v0, "offset"

    invoke-static {p6, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    if-ne v0, p3, :cond_0

    .line 56
    const-string v0, "userId"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string v0, "receipts"

    invoke-static {p4, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string v0, "revokedSkus"

    invoke-static {p5, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_requestId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_userId:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_purchaseUpdatesRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    .line 64
    if-eqz p4, :cond_1

    .end local p4    # "receipts":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/inapp/purchasing/Receipt;>;"
    :goto_0
    iput-object p4, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_receipts:Ljava/util/Set;

    .line 65
    if-eqz p5, :cond_2

    .end local p5    # "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    iput-object p5, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_revokedSkus:Ljava/util/Set;

    .line 66
    iput-object p6, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    .line 67
    iput-boolean p7, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_isMore:Z

    .line 68
    return-void

    .line 64
    .restart local p4    # "receipts":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/inapp/purchasing/Receipt;>;"
    .restart local p5    # "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance p4, Ljava/util/HashSet;

    .end local p4    # "receipts":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/inapp/purchasing/Receipt;>;"
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 65
    :cond_2
    new-instance p5, Ljava/util/HashSet;

    .end local p5    # "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public getOffset()Lcom/amazon/inapp/purchasing/Offset;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    return-object v0
.end method

.method public getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_purchaseUpdatesRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    return-object v0
.end method

.method public getReceipts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/inapp/purchasing/Receipt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_receipts:Ljava/util/Set;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRevokedSkus()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_revokedSkus:Ljava/util/Set;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method public isMore()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_isMore:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    const-string v0, "(%s, requestId: \"%s\", purchaseUpdatesRequestStatus: \"%s\", userId: \"%s\", receipts: %s, revokedSkus: %s, offset: \"%s\", isMore: \"%b\")"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_requestId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_purchaseUpdatesRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_userId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 143
    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_receipts:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_revokedSkus:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_isMore:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 142
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
