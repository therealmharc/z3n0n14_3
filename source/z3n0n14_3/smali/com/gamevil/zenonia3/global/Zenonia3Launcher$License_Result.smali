.class public final enum Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;
.super Ljava/lang/Enum;
.source "Zenonia3Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/Zenonia3Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "License_Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

.field public static final enum RESULT_INVALID_PACKAGE_NAME:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

.field public static final enum RESULT_NETWORK_ERROR:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

.field public static final enum RESULT_NON_MATCHING_UID:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

.field public static final enum RESULT_NOT_LICENSED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

.field public static final enum RESULT_NOT_MARKET_MANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 447
    new-instance v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    const-string v1, "RESULT_NOT_LICENSED"

    invoke-direct {v0, v1, v2}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NOT_LICENSED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    .line 448
    new-instance v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    const-string v1, "RESULT_INVALID_PACKAGE_NAME"

    invoke-direct {v0, v1, v3}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_INVALID_PACKAGE_NAME:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    .line 449
    new-instance v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    const-string v1, "RESULT_NON_MATCHING_UID"

    invoke-direct {v0, v1, v4}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NON_MATCHING_UID:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    .line 450
    new-instance v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    const-string v1, "RESULT_NOT_MARKET_MANAGED"

    invoke-direct {v0, v1, v5}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NOT_MARKET_MANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    .line 451
    new-instance v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    const-string v1, "RESULT_NETWORK_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NETWORK_ERROR:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    .line 445
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NOT_LICENSED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_INVALID_PACKAGE_NAME:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NON_MATCHING_UID:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NOT_MARKET_MANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NETWORK_ERROR:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->ENUM$VALUES:[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    return-object v0
.end method

.method public static values()[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->ENUM$VALUES:[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
