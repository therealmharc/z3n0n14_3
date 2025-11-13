.class final enum Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;
.super Ljava/lang/Enum;
.source "Zenonia3Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/Zenonia3Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Managed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

.field public static final enum MANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

.field public static final enum UNMANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 697
    new-instance v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    const-string v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;->MANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    new-instance v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    const-string v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;->UNMANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;->MANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;->UNMANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    aput-object v1, v0, v3

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;->ENUM$VALUES:[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    return-object v0
.end method

.method public static values()[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;->ENUM$VALUES:[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
