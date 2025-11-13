.class public final Lcom/amazon/inapp/purchasing/Item;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/inapp/purchasing/Item$ItemType;
    }
.end annotation


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, sku: \"%s\", price: \"%s\", itemType: \"%s\", title: \"%s\", description: \"%s\", smallIconUrl: \"%s\")"


# instance fields
.field private final _description:Ljava/lang/String;

.field private final _itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

.field private final _price:Ljava/lang/String;

.field private final _sku:Ljava/lang/String;

.field private final _smallIconUrl:Ljava/lang/String;

.field private final _title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "itemType"    # Lcom/amazon/inapp/purchasing/Item$ItemType;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "smallIconUrl"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "sku"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v0, "itemType"

    invoke-static {p3, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-string v0, "title"

    invoke-static {p4, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-string v0, "description"

    invoke-static {p5, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-string v0, "smallIconUrl"

    invoke-static {p6, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;

    if-eq v0, p3, :cond_0

    .line 50
    const-string v0, "price"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/Item;->_sku:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/amazon/inapp/purchasing/Item;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    .line 55
    iput-object p2, p0, Lcom/amazon/inapp/purchasing/Item;->_price:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/amazon/inapp/purchasing/Item;->_title:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/amazon/inapp/purchasing/Item;->_description:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/amazon/inapp/purchasing/Item;->_smallIconUrl:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Item;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Item;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Item;->_price:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Item;->_sku:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Item;->_smallIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Item;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string v0, "(%s, sku: \"%s\", price: \"%s\", itemType: \"%s\", title: \"%s\", description: \"%s\", smallIconUrl: \"%s\")"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Item;->_sku:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Item;->_price:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Item;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Item;->_title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Item;->_description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 118
    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Item;->_smallIconUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 117
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
