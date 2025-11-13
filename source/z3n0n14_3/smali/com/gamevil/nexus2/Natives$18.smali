.class Lcom/gamevil/nexus2/Natives$18;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->NetErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ack:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/gamevil/nexus2/Natives$18;->val$ack:I

    .line 2707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2711
    iget v0, p0, Lcom/gamevil/nexus2/Natives$18;->val$ack:I

    sparse-switch v0, :sswitch_data_0

    .line 2922
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$1()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 2924
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2925
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2926
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c\uc5d0 \uc5f0\uacb0\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2927
    const-string v1, "\ud655\uc778"

    .line 2928
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$17;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$17;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2927
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2932
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2973
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gamevil/nexus2/Natives;->setPurchaseChange(I)V

    .line 2974
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideLoadingDialog()V

    .line 2976
    return-void

    .line 2714
    :sswitch_0
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$1()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2716
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2717
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2718
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c\ub97c \uc2dc\ub3c4 \ud560 \uc218 \uc788\ub294 \uc0c1\ud0dc\uac00 \uc544\ub2d9\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2719
    const-string v1, "\ud655\uc778"

    .line 2720
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$1;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$1;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2719
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2724
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2727
    :cond_0
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2729
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2730
    const-string v1, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2731
    const-string v1, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u3092\u5229\u7528\u3059\u308b\u3053\u3068\u304c\u3067\u304d\u308b\u72b6\u614b\u3067\u306f\u3042\u308a\u307e\u305b\u3093\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2732
    const-string v1, "\u78ba\u8a8d"

    .line 2733
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$2;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$2;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2732
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2737
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2739
    :cond_1
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$3()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2741
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2742
    const-string v1, "\u7f51\u8def\u5dee\u9519"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2743
    const-string v1, "\u8bf7\u60a8\u5148\u8fde\u63a5\u7f51\u8def "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2744
    const-string v1, "\u786e\u8ba4"

    .line 2745
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$3;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$3;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2744
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2749
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2754
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2755
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2756
    const-string v1, "Can not Connect."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2757
    const-string v1, "OK"

    .line 2758
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$4;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$4;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2757
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2762
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2768
    :sswitch_1
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$1()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2770
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2771
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2772
    const-string v1, "\ucc28\ub2e8\ub41c \uc720\uc800 \uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2773
    const-string v1, "\ud655\uc778"

    .line 2774
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$5;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$5;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2773
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2778
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2780
    :cond_3
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 2782
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2783
    const-string v1, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2784
    const-string v1, "\u30d6\u30ed\u30c3\u30af\u3055\u308c\u305f\u30e6\u30fc\u30b6\u30fc\u3067\u3059\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2785
    const-string v1, "\u78ba\u8a8d"

    .line 2786
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$6;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$6;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2785
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2790
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2792
    :cond_4
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$3()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 2794
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2795
    const-string v1, "\u7f51\u8def\u5dee\u9519"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2796
    const-string v1, "\u51bb\u7ed3\u8d26\u6237"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2797
    const-string v1, "\u786e\u8ba4"

    .line 2798
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$7;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$7;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2797
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2802
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2806
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2807
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2808
    const-string v1, "Blocked User."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2809
    const-string v1, "OK"

    .line 2810
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$8;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$8;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2809
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2814
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2819
    :sswitch_2
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$1()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2821
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2822
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2823
    const-string v1, "\uc6d4 \uad6c\ub9e4\ud55c\ub3c4\uac00 \ucd08\uacfc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2824
    const-string v1, "\ud655\uc778"

    .line 2825
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$9;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$9;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2824
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2829
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2831
    :cond_6
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 2833
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2834
    const-string v1, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2835
    const-string v1, "\u6708\u306e\u8cfc\u5165\u9650\u5ea6\u984d\u3092\u8d85\u3048\u3066\u3044\u307e\u3059\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2836
    const-string v1, "\u78ba\u8a8d"

    .line 2837
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$10;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$10;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2836
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2841
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2843
    :cond_7
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$3()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 2845
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2846
    const-string v1, "\u7f51\u8def\u5dee\u9519"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2847
    const-string v1, "\u8d85\u8fc7\u4e86\u8d2d\u4e70\u6708\u9650\u989d"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2848
    const-string v1, "\u786e\u8ba4"

    .line 2849
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$11;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$11;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2848
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2853
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2857
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2858
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2859
    const-string v1, "Purchase limit Exceeded."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2860
    const-string v1, "OK"

    .line 2861
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$12;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$12;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2860
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2865
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2871
    :sswitch_3
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$1()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 2873
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2874
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2875
    const-string v1, "\uc77c\uc77c \uad6c\ub9e4\ud55c\ub3c4\uac00 \ucd08\uacfc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2876
    const-string v1, "\ud655\uc778"

    .line 2877
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$13;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$13;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2876
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2881
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2883
    :cond_9
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 2885
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2886
    const-string v1, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2887
    const-string v1, "\u4e00\u65e5\u306e\u8cfc\u5165\u9650\u5ea6\u984d\u3092\u8d85\u3048\u3066\u3044\u307e\u3059\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2888
    const-string v1, "\u78ba\u8a8d"

    .line 2889
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$14;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$14;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2888
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2893
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2895
    :cond_a
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$3()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2897
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2898
    const-string v1, "\u7f51\u8def\u5dee\u9519"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2899
    const-string v1, "\u8d85\u8fc7\u4e86\u8d2d\u4e70\u65e5\u9650\u989d"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2900
    const-string v1, "\u786e\u8ba4"

    .line 2901
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$15;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$15;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2900
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2905
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2909
    :cond_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2910
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2911
    const-string v1, "Purchase limit Exceeded."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2912
    const-string v1, "OK"

    .line 2913
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$16;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$16;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2912
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2917
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2934
    :cond_c
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 2936
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2937
    const-string v1, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2938
    const-string v1, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u306b\u63a5\u7d9a\u3059\u308b\u3053\u3068\u306f\u3067\u304d\u307e\u305b\u3093\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2939
    const-string v1, "\u78ba\u8a8d"

    .line 2940
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$18;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$18;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2939
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2944
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2946
    :cond_d
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$3()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 2948
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2949
    const-string v1, "\u7f51\u8def\u5dee\u9519"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2950
    const-string v1, "\u8fde\u63a5\u4e0d\u5230\u7f51\u8def"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2951
    const-string v1, "\u786e\u8ba4"

    .line 2952
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$19;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$19;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2951
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2956
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2960
    :cond_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2961
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2962
    const-string v1, "Connect Failed."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2963
    const-string v1, "OK"

    .line 2964
    new-instance v2, Lcom/gamevil/nexus2/Natives$18$20;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$18$20;-><init>(Lcom/gamevil/nexus2/Natives$18;)V

    .line 2963
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2968
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2711
    nop

    :sswitch_data_0
    .sparse-switch
        -0x29a -> :sswitch_0
        -0x9 -> :sswitch_1
        -0x6 -> :sswitch_3
        -0x5 -> :sswitch_2
    .end sparse-switch
.end method
