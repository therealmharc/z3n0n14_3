.class final enum Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
.super Ljava/lang/Enum;
.source "KiwiResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/inapp/purchasing/KiwiResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

.field public static final enum purchase_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    const-string v1, "purchase_response"

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->purchase_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    sget-object v1, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->purchase_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->ENUM$VALUES:[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    return-object v0
.end method

.method public static values()[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->ENUM$VALUES:[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    array-length v1, v0

    new-array v2, v1, [Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
