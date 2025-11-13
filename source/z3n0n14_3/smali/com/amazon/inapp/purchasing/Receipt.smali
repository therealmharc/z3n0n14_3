.class public final Lcom/amazon/inapp/purchasing/Receipt;
.super Ljava/lang/Object;
.source "Receipt.java"


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, sku: \"%s\", itemType: \"%s\", subscriptionPeriod: %s, purchaseToken: \"%s\")"


# instance fields
.field private final _isContentAvailable:Z

.field private final _itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

.field private final _purchaseToken:Ljava/lang/String;

.field private final _sku:Ljava/lang/String;

.field private final _subscriptionPeriod:Lcom/amazon/inapp/purchasing/SubscriptionPeriod;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;ZLcom/amazon/inapp/purchasing/SubscriptionPeriod;Ljava/lang/String;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "itemType"    # Lcom/amazon/inapp/purchasing/Item$ItemType;
    .param p3, "isContentAvailable"    # Z
    .param p4, "subscriptionPeriod"    # Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    .param p5, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "sku"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v0, "itemType"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v0, "purchaseToken"

    invoke-static {p5, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/Receipt;->_sku:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/amazon/inapp/purchasing/Receipt;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    .line 31
    iput-object p5, p0, Lcom/amazon/inapp/purchasing/Receipt;->_purchaseToken:Ljava/lang/String;

    .line 32
    iput-boolean p3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_isContentAvailable:Z

    .line 33
    iput-object p4, p0, Lcom/amazon/inapp/purchasing/Receipt;->_subscriptionPeriod:Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    .line 34
    return-void
.end method


# virtual methods
.method public getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_sku:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_subscriptionPeriod:Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    return-object v0
.end method

.method isContentAvailable()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_isContentAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "(%s, sku: \"%s\", itemType: \"%s\", subscriptionPeriod: %s, purchaseToken: \"%s\")"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_sku:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_subscriptionPeriod:Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_purchaseToken:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
