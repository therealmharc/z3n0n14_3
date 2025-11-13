.class Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;
.super Landroid/os/Handler;
.source "DRMLicensing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    .line 598
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;)Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 602
    sget-object v2, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->myActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 646
    :goto_0
    return-void

    .line 604
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 606
    :pswitch_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|\tMSG_AUTH_EXECPTION_BLOCK\tAlertDialog "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 610
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    const-string v3, "\uacbd\uace0"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 612
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 613
    const-string v3, "OK"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9$1;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9$1;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 618
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 620
    .local v0, "alert":Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 621
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 627
    .end local v0    # "alert":Landroid/app/Dialog;
    :pswitch_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 628
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|DRM\tMSG_AUTH_EXECPTION_PASS\t "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 629
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 631
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 632
    const-string v3, "\uacbd\uace0"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 633
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 634
    const-string v3, "OK"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9$2;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9$2;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 640
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 641
    .local v1, "alert2":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
