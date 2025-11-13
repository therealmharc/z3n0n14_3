.class Lcom/gamevil/nexus2/NexusTouch$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NexusTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/nexus2/NexusTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/nexus2/NexusTouch;


# direct methods
.method private constructor <init>(Lcom/gamevil/nexus2/NexusTouch;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusTouch$GestureListener;->this$0:Lcom/gamevil/nexus2/NexusTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamevil/nexus2/NexusTouch;Lcom/gamevil/nexus2/NexusTouch$GestureListener;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/gamevil/nexus2/NexusTouch$GestureListener;-><init>(Lcom/gamevil/nexus2/NexusTouch;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 539
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$7()Lcom/gamevil/nexus2/NexusTouch;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/gamevil/nexus2/NexusTouch;->access$9(Lcom/gamevil/nexus2/NexusTouch;II)Z

    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 558
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$7()Lcom/gamevil/nexus2/NexusTouch;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/gamevil/nexus2/NexusTouch;->access$10(Lcom/gamevil/nexus2/NexusTouch;FF)V

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 437
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "****** [NexusTouch][DEBUG] onFling  vX:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    iget-object v3, p0, Lcom/gamevil/nexus2/NexusTouch$GestureListener;->this$0:Lcom/gamevil/nexus2/NexusTouch;

    invoke-static {v3}, Lcom/gamevil/nexus2/NexusTouch;->access$4(Lcom/gamevil/nexus2/NexusTouch;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v2, v3, v4

    .line 445
    .local v2, "m":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 448
    cmpg-float v3, p4, v7

    if-gez v3, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 451
    .local v1, "distY":F
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$5()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$6()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 452
    const/16 v3, 0x2b

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-static {v3, v4, v5, v6}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 482
    .end local v1    # "distY":F
    .end local v2    # "m":F
    :cond_0
    :goto_0
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$7()Lcom/gamevil/nexus2/NexusTouch;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/gamevil/nexus2/NexusTouch;->access$8(Lcom/gamevil/nexus2/NexusTouch;FF)V

    .line 530
    return v6

    .line 457
    .restart local v2    # "m":F
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 458
    .restart local v1    # "distY":F
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$5()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$6()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 459
    const/16 v3, 0x2c

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-static {v3, v4, v5, v6}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    goto :goto_0

    .line 466
    .end local v1    # "distY":F
    :cond_2
    cmpg-float v3, p3, v7

    if-gez v3, :cond_3

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v0, v3, v4

    .line 469
    .local v0, "distX":F
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$5()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$6()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 470
    const/16 v3, 0x29

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-static {v3, v4, v5, v6}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    goto :goto_0

    .line 475
    .end local v0    # "distX":F
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v0, v3, v4

    .line 476
    .restart local v0    # "distX":F
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$5()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$6()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 477
    const/16 v3, 0x2a

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-static {v3, v4, v5, v6}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    goto/16 :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 568
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 583
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$7()Lcom/gamevil/nexus2/NexusTouch;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/gamevil/nexus2/NexusTouch;->access$11(Lcom/gamevil/nexus2/NexusTouch;FF)V

    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 576
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 601
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$7()Lcom/gamevil/nexus2/NexusTouch;

    move-result-object v0

    invoke-static {v0}, Lcom/gamevil/nexus2/NexusTouch;->access$12(Lcom/gamevil/nexus2/NexusTouch;)Z

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 592
    invoke-static {}, Lcom/gamevil/nexus2/NexusTouch;->access$7()Lcom/gamevil/nexus2/NexusTouch;

    move-result-object v0

    invoke-static {v0}, Lcom/gamevil/nexus2/NexusTouch;->access$12(Lcom/gamevil/nexus2/NexusTouch;)Z

    .line 593
    const/4 v0, 0x0

    return v0
.end method
