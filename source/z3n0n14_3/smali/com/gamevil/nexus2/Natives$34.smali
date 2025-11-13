.class Lcom/gamevil/nexus2/Natives$34;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->showMenuComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field OFFSET_LEFTMARGIN_ZEN:I

.field OFFSET_TOPMARGIN:I

.field OFFSET_TOPMARGIN_ZEN:I

.field OFFSET_WIDTH:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3689
    const/16 v0, 0x47

    iput v0, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_TOPMARGIN:I

    .line 3690
    const/16 v0, 0x190

    iput v0, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_WIDTH:I

    .line 3691
    const/16 v0, 0x142

    iput v0, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_LEFTMARGIN_ZEN:I

    .line 3693
    const/16 v0, 0xa

    iput v0, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_TOPMARGIN_ZEN:I

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x500

    const/16 v9, 0x400

    const/16 v8, 0x14a

    const/4 v7, 0x0

    .line 3701
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v6, 0x244

    if-lt v5, v6, :cond_5

    .line 3703
    iput v8, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_LEFTMARGIN_ZEN:I

    .line 3704
    const/16 v5, 0x3d

    iput v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_TOPMARGIN:I

    .line 3705
    const/16 v5, 0x18f

    iput v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_WIDTH:I

    .line 3714
    :cond_0
    :goto_0
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-lt v5, v9, :cond_1

    .line 3717
    const/4 v5, -0x1

    iput v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_TOPMARGIN_ZEN:I

    .line 3721
    :cond_1
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3722
    const v6, 0x7f080020

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3721
    check-cast v0, Landroid/widget/ImageView;

    .line 3724
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3726
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3727
    const v6, 0x7f080021

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3726
    check-cast v1, Landroid/widget/ImageView;

    .line 3729
    .local v1, "img2":Landroid/widget/ImageView;
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3730
    const v6, 0x7f080022

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3729
    check-cast v3, Landroid/widget/ImageView;

    .line 3733
    .local v3, "zen":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3732
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3736
    .local v2, "img2Layout":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_TOPMARGIN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xf0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3737
    iget v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_WIDTH:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x190

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3740
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-lt v5, v10, :cond_2

    .line 3742
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v5, v5, 0x50

    div-int/lit16 v5, v5, 0xf0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3746
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3747
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3750
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3749
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 3752
    .local v4, "zenLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_TOPMARGIN_ZEN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xf0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3753
    iget v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_LEFTMARGIN_ZEN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x190

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 3756
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-lt v5, v9, :cond_3

    .line 3758
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v5, v5, 0x32

    div-int/lit16 v5, v5, 0xf0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3759
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v5, v5, 0x32

    div-int/lit16 v5, v5, 0x190

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3763
    :cond_3
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_4

    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-ne v5, v10, :cond_4

    .line 3765
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v5, v5, 0x46

    div-int/lit16 v5, v5, 0xf0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3766
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v5, v5, 0x46

    div-int/lit16 v5, v5, 0x190

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3768
    iget v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_TOPMARGIN_ZEN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xf0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3769
    iget v5, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_LEFTMARGIN_ZEN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x190

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 3774
    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3775
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3777
    new-instance v5, Lcom/gamevil/nexus2/Natives$34$1;

    invoke-direct {v5, p0}, Lcom/gamevil/nexus2/Natives$34$1;-><init>(Lcom/gamevil/nexus2/Natives$34;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3797
    const/4 v5, 0x3

    const/16 v6, -0x63

    invoke-static {v5, v6, v7, v7}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 3798
    return-void

    .line 3707
    .end local v0    # "img":Landroid/widget/ImageView;
    .end local v1    # "img2":Landroid/widget/ImageView;
    .end local v2    # "img2Layout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "zen":Landroid/widget/ImageView;
    .end local v4    # "zenLayout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v6, 0x356

    if-ne v5, v6, :cond_0

    .line 3709
    iput v8, p0, Lcom/gamevil/nexus2/Natives$34;->OFFSET_LEFTMARGIN_ZEN:I

    goto/16 :goto_0
.end method
