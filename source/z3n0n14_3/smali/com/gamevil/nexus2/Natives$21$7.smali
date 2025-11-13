.class Lcom/gamevil/nexus2/Natives$21$7;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamevil/nexus2/Natives$21;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/Natives$21;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/Natives$21$7;->this$1:Lcom/gamevil/nexus2/Natives$21;

    .line 2632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 2636
    sget-boolean v0, Lcom/gamevil/nexus2/Natives;->reserveMenu:Z

    if-eqz v0, :cond_0

    .line 2640
    const/16 v0, 0x578

    .line 2638
    invoke-static {v0, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 2648
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2644
    :cond_0
    const/16 v0, 0x1f4

    .line 2643
    invoke-static {v0, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    goto :goto_0
.end method
