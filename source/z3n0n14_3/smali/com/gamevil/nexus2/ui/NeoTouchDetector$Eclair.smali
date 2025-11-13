.class Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;
.super Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;
.source "NeoTouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/nexus2/ui/NeoTouchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Eclair"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;-><init>(Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v7, 0xff00

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 123
    .local v3, "action":I
    and-int/lit16 v6, v3, 0xff

    packed-switch v6, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Cupcake;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 126
    :pswitch_1
    invoke-static {}, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->access$0()I

    move-result v6

    if-ltz v6, :cond_0

    .line 128
    and-int v6, v3, v7

    shr-int/lit8 v5, v6, 0x8

    .line 129
    .local v5, "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 134
    .local v4, "pointerId":I
    invoke-static {}, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->access$0()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->access$1(I)V

    .line 135
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 136
    .local v1, "_x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 137
    .local v2, "_y":F
    iget-object v6, p0, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;->mListener:Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;

    const/16 v7, 0x65

    invoke-interface {v6, v7, v1, v2, v4}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;->onAction(IFFI)V

    goto :goto_0

    .line 149
    .end local v1    # "_x":F
    .end local v2    # "_y":F
    .end local v4    # "pointerId":I
    .end local v5    # "pointerIndex":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/2addr v6, v7

    shr-int/lit8 v5, v6, 0x8

    .line 150
    .restart local v5    # "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 152
    .restart local v4    # "pointerId":I
    invoke-static {}, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->access$0()I

    move-result v6

    if-ltz v6, :cond_0

    .line 154
    const/4 v0, 0x0

    .local v0, "_i":I
    :goto_1
    invoke-static {}, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->access$0()I

    move-result v6

    if-gt v0, v6, :cond_0

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 157
    .restart local v1    # "_x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 158
    .restart local v2    # "_y":F
    iget-object v6, p0, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;->mListener:Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;

    const/16 v7, 0x66

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-interface {v6, v7, v1, v2, v8}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;->onAction(IFFI)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "_i":I
    .end local v1    # "_x":F
    .end local v2    # "_y":F
    .end local v4    # "pointerId":I
    .end local v5    # "pointerIndex":I
    :pswitch_3
    const/4 v6, -0x1

    invoke-static {v6}, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->access$1(I)V

    goto :goto_0

    .line 170
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/2addr v6, v7

    shr-int/lit8 v5, v6, 0x8

    .line 173
    .restart local v5    # "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 176
    .restart local v4    # "pointerId":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 177
    .restart local v1    # "_x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 179
    .restart local v2    # "_y":F
    invoke-static {}, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->access$0()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/gamevil/nexus2/ui/NeoTouchDetector;->access$1(I)V

    .line 180
    iget-object v6, p0, Lcom/gamevil/nexus2/ui/NeoTouchDetector$Eclair;->mListener:Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;

    const/16 v7, 0x64

    invoke-interface {v6, v7, v1, v2, v4}, Lcom/gamevil/nexus2/ui/NeoTouchDetector$OnActionListener;->onAction(IFFI)V

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
