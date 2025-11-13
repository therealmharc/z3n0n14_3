.class Lcom/gamevil/nexus2/Natives$17;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->NetErrorDialogException(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/Natives$17;->val$msg:Ljava/lang/String;

    .line 2642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2647
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$1()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2650
    const-string v1, "\uc608\uc678 \uba54\uc138\uc9c0"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2651
    iget-object v1, p0, Lcom/gamevil/nexus2/Natives$17;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2652
    const-string v1, "\ud655\uc778"

    .line 2653
    new-instance v2, Lcom/gamevil/nexus2/Natives$17$1;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$17$1;-><init>(Lcom/gamevil/nexus2/Natives$17;)V

    .line 2652
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2657
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2695
    :goto_0
    return-void

    .line 2659
    :cond_0
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2661
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2662
    const-string v1, "\u4f8b\u5916\u30e1\u30c3\u30bb\u30fc\u30b8"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2663
    iget-object v1, p0, Lcom/gamevil/nexus2/Natives$17;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2664
    const-string v1, "\u78ba\u8a8d"

    .line 2665
    new-instance v2, Lcom/gamevil/nexus2/Natives$17$2;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$17$2;-><init>(Lcom/gamevil/nexus2/Natives$17;)V

    .line 2664
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2669
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2671
    :cond_1
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$3()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2673
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2674
    const-string v1, "\u4f8b\u5916\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2675
    iget-object v1, p0, Lcom/gamevil/nexus2/Natives$17;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2676
    const-string v1, "\u786e\u8ba4"

    .line 2677
    new-instance v2, Lcom/gamevil/nexus2/Natives$17$3;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$17$3;-><init>(Lcom/gamevil/nexus2/Natives$17;)V

    .line 2676
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2681
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2685
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2686
    const-string v1, "Exception Massage"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2687
    iget-object v1, p0, Lcom/gamevil/nexus2/Natives$17;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2688
    const-string v1, "OK"

    .line 2689
    new-instance v2, Lcom/gamevil/nexus2/Natives$17$4;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$17$4;-><init>(Lcom/gamevil/nexus2/Natives$17;)V

    .line 2688
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2693
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
