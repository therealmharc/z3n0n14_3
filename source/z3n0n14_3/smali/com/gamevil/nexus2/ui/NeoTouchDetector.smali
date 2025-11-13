.class public abstract Lcom/gamevil/nexus2/ui/NeoTouchDetector;
.super Ljava/lang/Object;
.source "NeoTouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;,
        Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;,
        Lcom/gamevil/nexus2/ui/NeoTouchDetector$Froyo;,
        Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1

.field private static mActivePointerId:I


# instance fields
.field mListener:Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->mActivePointerId:I

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 29
    sput p0, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->mActivePointerId:I

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;)Lcom/gamevil/nexus2/ui/NeoTouchDetector;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;

    .prologue
    const/4 v3, 0x0

    .line 45
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 46
    .local v1, "sdkVersion":I
    const/4 v0, 0x0

    .line 47
    .local v0, "detector":Lcom/gamevil/nexus2/ui/NeoTouchDetector;
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 48
    new-instance v0, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;

    .end local v0    # "detector":Lcom/gamevil/nexus2/ui/NeoTouchDetector;
    invoke-direct {v0, v3, v3}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;-><init>(Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;)V

    .line 55
    .restart local v0    # "detector":Lcom/gamevil/nexus2/ui/NeoTouchDetector;
    :goto_0
    iput-object p1, v0, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->mListener:Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;

    .line 56
    return-object v0

    .line 49
    :cond_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 50
    new-instance v0, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;

    .end local v0    # "detector":Lcom/gamevil/nexus2/ui/NeoTouchDetector;
    invoke-direct {v0, v3, v3}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;-><init>(Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;)V

    .restart local v0    # "detector":Lcom/gamevil/nexus2/ui/NeoTouchDetector;
    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Froyo;

    .end local v0    # "detector":Lcom/gamevil/nexus2/ui/NeoTouchDetector;
    invoke-direct {v0, v3}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Froyo;-><init>(Lcom/gamevil/nexus2/ui/NeoTouchDetector$Froyo;)V

    .restart local v0    # "detector":Lcom/gamevil/nexus2/ui/NeoTouchDetector;
    goto :goto_0
.end method


# virtual methods
.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
