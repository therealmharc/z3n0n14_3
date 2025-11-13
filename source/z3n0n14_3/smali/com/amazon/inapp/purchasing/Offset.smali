.class public final Lcom/amazon/inapp/purchasing/Offset;
.super Ljava/lang/Object;
.source "Offset.java"


# static fields
.field public static final BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

.field private static final BEGINNING_ENCODED:Ljava/lang/String; = "BEGINNING"


# instance fields
.field private _encodedOffset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/amazon/inapp/purchasing/Offset;

    const-string v1, "BEGINNING"

    invoke-direct {v0, v1}, Lcom/amazon/inapp/purchasing/Offset;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    .line 7
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodedOffset"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/Offset;->_encodedOffset:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;
    .locals 1
    .param p0, "encodedOffset"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "BEGINNING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/Offset;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/Offset;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Offset;->_encodedOffset:Ljava/lang/String;

    return-object v0
.end method
