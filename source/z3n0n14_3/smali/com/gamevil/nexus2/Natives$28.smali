.class Lcom/gamevil/nexus2/Natives$28;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->ShowTapjoyOffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3403
    new-instance v2, Lcom/gamevil/nexus2/Natives$28$1;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$28$1;-><init>(Lcom/gamevil/nexus2/Natives$28;)V

    .line 3415
    .local v2, "offerListener":Landroid/view/View$OnClickListener;
    sget v3, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$2()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 3417
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v4, 0x7f080053

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 3424
    .local v1, "offer":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3427
    .local v0, "earnZenLayout":Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v4, 0x400

    if-lt v3, v4, :cond_0

    .line 3429
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v3, v3, 0xa

    div-int/lit16 v3, v3, 0x190

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3430
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v3, v3, 0x19

    div-int/lit16 v3, v3, 0xf0

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3431
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v3, v3, 0x46

    div-int/lit16 v3, v3, 0x190

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3435
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3436
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3437
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 3438
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3439
    return-void

    .line 3421
    .end local v0    # "earnZenLayout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "offer":Landroid/widget/ImageButton;
    :cond_1
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v4, 0x7f080052

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .restart local v1    # "offer":Landroid/widget/ImageButton;
    goto :goto_0
.end method
