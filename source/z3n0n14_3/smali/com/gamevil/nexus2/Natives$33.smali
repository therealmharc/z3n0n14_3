.class Lcom/gamevil/nexus2/Natives$33;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->showReplyMoveComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x500

    const/4 v6, 0x0

    .line 3574
    const-string v3, "# changeUIStatus(UI_STATUS_MAINMENU)language: #"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3575
    sget v5, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3574
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->setReplyresId()V

    .line 3600
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3601
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$20()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3600
    check-cast v0, Landroid/widget/ImageView;

    .line 3603
    .local v0, "img":Landroid/widget/ImageView;
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3604
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$21()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3603
    check-cast v3, Landroid/widget/ImageButton;

    sput-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    .line 3606
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3607
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$22()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3606
    check-cast v3, Landroid/widget/ImageButton;

    sput-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    .line 3609
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    .line 3610
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3609
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3612
    .local v2, "img_btn_write_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v3, v3, 0xaa

    div-int/lit16 v3, v3, 0xf0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3613
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v3, v3, 0x14

    div-int/lit16 v3, v3, 0x190

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 3615
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-lt v3, v7, :cond_0

    .line 3617
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v3, v3, 0x32

    div-int/lit16 v3, v3, 0xf0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3618
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x190

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3621
    :cond_0
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    .line 3622
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3621
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3624
    .local v1, "img_btn_later_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v3, v3, 0xaa

    div-int/lit16 v3, v3, 0xf0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3625
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit16 v3, v3, 0xb4

    div-int/lit16 v3, v3, 0x190

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 3627
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-lt v3, v7, :cond_1

    .line 3629
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v3, v3, 0x32

    div-int/lit16 v3, v3, 0xf0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3630
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x190

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3633
    :cond_1
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3634
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3653
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3654
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3655
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3657
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    new-instance v4, Lcom/gamevil/nexus2/Natives$33$1;

    invoke-direct {v4, p0}, Lcom/gamevil/nexus2/Natives$33$1;-><init>(Lcom/gamevil/nexus2/Natives$33;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3666
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    new-instance v4, Lcom/gamevil/nexus2/Natives$33$2;

    invoke-direct {v4, p0}, Lcom/gamevil/nexus2/Natives$33$2;-><init>(Lcom/gamevil/nexus2/Natives$33;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3674
    return-void
.end method
