.class Lcom/gamevil/nexus2/NexusGLActivity$1;
.super Landroid/os/Handler;
.source "NexusGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/nexus2/NexusGLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/nexus2/NexusGLActivity;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/NexusGLActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 747
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/nexus2/NexusGLActivity$1;)Lcom/gamevil/nexus2/NexusGLActivity;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 750
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    if-nez v2, :cond_0

    .line 863
    :goto_0
    return-void

    .line 753
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 775
    :sswitch_0
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 755
    :sswitch_1
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 756
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v3, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 758
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 759
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 760
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 767
    :sswitch_2
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0

    .line 781
    :sswitch_3
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iput-boolean v6, v2, Lcom/gamevil/nexus2/NexusGLActivity;->isMessageCome:Z

    goto :goto_0

    .line 786
    :sswitch_4
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 791
    :sswitch_5
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v3, "Unziping..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v3, "Please wait while unziping..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 794
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 795
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, v2, Lcom/gamevil/nexus2/NexusGLActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 802
    :sswitch_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 803
    const-string v3, "\uacbd\uace0"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 804
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 805
    const-string v3, "OK"

    new-instance v4, Lcom/gamevil/nexus2/NexusGLActivity$1$1;

    invoke-direct {v4, p0}, Lcom/gamevil/nexus2/NexusGLActivity$1$1;-><init>(Lcom/gamevil/nexus2/NexusGLActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 810
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 812
    .local v0, "alert":Landroid/app/Dialog;
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 813
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 822
    .end local v0    # "alert":Landroid/app/Dialog;
    :sswitch_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 823
    const-string v3, "\uacbd\uace0"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 824
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 825
    const-string v3, "OK"

    new-instance v4, Lcom/gamevil/nexus2/NexusGLActivity$1$2;

    invoke-direct {v4, p0}, Lcom/gamevil/nexus2/NexusGLActivity$1$2;-><init>(Lcom/gamevil/nexus2/NexusGLActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 830
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 831
    .local v1, "alert2":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 834
    .end local v1    # "alert2":Landroid/app/Dialog;
    :sswitch_8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 835
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|C2DM\tMSG_REPORT_C2DM_REGISTERD\t "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|C2DM\tmsg 1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 837
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 839
    iget-object v3, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->access$0(Lcom/gamevil/nexus2/NexusGLActivity;Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v3, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/NexusGLActivity;->loadRegistrationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->access$1(Lcom/gamevil/nexus2/NexusGLActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :sswitch_9
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 847
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|C2DM\tMSG_REPORT_C2DM_REGISTER_ID_UPLOAD_COMPLET\t "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 848
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 850
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity$1;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v2, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->access$2(Lcom/gamevil/nexus2/NexusGLActivity;Z)V

    goto/16 :goto_0

    .line 753
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0x14 -> :sswitch_3
        0x32 -> :sswitch_8
        0x34 -> :sswitch_9
    .end sparse-switch
.end method
