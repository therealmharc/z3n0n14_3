.class Lcom/gamevil/nexus2/Natives$7;
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
    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1431
    const-string v3, "# changeUIStatus(UI_STATUS_MAINMENU)language: #"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1432
    sget v5, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1431
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1446
    const v4, 0x7f070021

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1445
    check-cast v0, Landroid/widget/ImageView;

    .line 1448
    .local v0, "img":Landroid/widget/ImageView;
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1449
    const v4, 0x7f070037

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1448
    check-cast v3, Landroid/widget/ImageButton;

    sput-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    .line 1451
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1452
    const v4, 0x7f070038

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1451
    check-cast v3, Landroid/widget/ImageButton;

    sput-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    .line 1456
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    .line 1457
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1456
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1459
    .local v2, "img_btn_write_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v3, v3, 0xaa

    div-int/lit16 v3, v3, 0xf0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1460
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v3, v3, 0x14

    div-int/lit16 v3, v3, 0x190

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1462
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    .line 1463
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1462
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1465
    .local v1, "img_btn_later_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v3, v3, 0xaa

    div-int/lit16 v3, v3, 0xf0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1466
    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit16 v3, v3, 0xb4

    div-int/lit16 v3, v3, 0x190

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1468
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1471
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1472
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1473
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1475
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    new-instance v4, Lcom/gamevil/nexus2/Natives$7$1;

    invoke-direct {v4, p0}, Lcom/gamevil/nexus2/Natives$7$1;-><init>(Lcom/gamevil/nexus2/Natives$7;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1484
    sget-object v3, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    new-instance v4, Lcom/gamevil/nexus2/Natives$7$2;

    invoke-direct {v4, p0}, Lcom/gamevil/nexus2/Natives$7$2;-><init>(Lcom/gamevil/nexus2/Natives$7;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1492
    return-void
.end method
