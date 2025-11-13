.class final enum Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;
.super Ljava/lang/Enum;
.source "NexusSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/nexus2/sensor/NexusSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OrientationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

.field public static final enum ORIENTATION_ABSOLUTE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

.field public static final enum ORIENTATION_RELATIVE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    const-string v1, "ORIENTATION_ABSOLUTE"

    invoke-direct {v0, v1, v2}, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_ABSOLUTE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    .line 91
    new-instance v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    const-string v1, "ORIENTATION_RELATIVE"

    invoke-direct {v0, v1, v3}, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_RELATIVE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_ABSOLUTE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_RELATIVE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ENUM$VALUES:[Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    return-object v0
.end method

.method public static values()[Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ENUM$VALUES:[Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
