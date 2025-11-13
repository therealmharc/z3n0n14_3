.class public Lcom/gamevil/nexus2/NexusTouch$Vertex;
.super Ljava/lang/Object;
.source "NexusTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/nexus2/NexusTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field draw:Z

.field final synthetic this$0:Lcom/gamevil/nexus2/NexusTouch;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/NexusTouch;FFZ)V
    .locals 0
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "draw"    # Z

    .prologue
    .line 122
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusTouch$Vertex;->this$0:Lcom/gamevil/nexus2/NexusTouch;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p2, p0, Lcom/gamevil/nexus2/NexusTouch$Vertex;->x:F

    .line 126
    iput p3, p0, Lcom/gamevil/nexus2/NexusTouch$Vertex;->y:F

    .line 127
    iput-boolean p4, p0, Lcom/gamevil/nexus2/NexusTouch$Vertex;->draw:Z

    .line 128
    return-void
.end method
