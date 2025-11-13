.class Lcom/feelingk/iap/IAPActivity$7;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoPurchaseInfoClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "formName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 797
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$15(Lcom/feelingk/iap/IAPActivity;)V

    .line 798
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x464

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, "msgUI":Landroid/os/Message;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 800
    return-void
.end method

.method public onEnterTstore()V
    .locals 9

    .prologue
    .line 887
    const/4 v2, 0x0

    .line 889
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 891
    .local v0, "data":[B
    :try_start_0
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v7, "com.skt.skaf.A000Z00040"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/feelingk/iap/IAPActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 892
    .local v4, "other":Landroid/content/Context;
    const-string v6, "lockInfo.txt"

    invoke-virtual {v4, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 894
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 895
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 896
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 907
    .end local v4    # "other":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_1

    .line 908
    const-string v5, "SETTING_VIEW"

    .line 909
    .local v5, "strMsg":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 910
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 911
    const-string v6, "com.skt.skaf.A000Z00040"

    const-string v7, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v6, "COLLAB_ACTION"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string v6, "com.skt.skaf.COL.URI"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 914
    const-string v6, "com.skt.skaf.COL.REQUESTER"

    const-string v7, "A000Z00040"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v6, v3}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    .line 925
    .end local v5    # "strMsg":Ljava/lang/String;
    :goto_1
    return-void

    .line 897
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "other":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 901
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "other":Landroid/content/Context;
    :catch_1
    move-exception v1

    .line 902
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 903
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 904
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 920
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 921
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "com.skt.skaf.A000Z00040"

    const-string v7, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v6, v3}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPurchaseAutoButtonClick()V
    .locals 10

    .prologue
    const/16 v9, 0x67

    .line 808
    const/4 v2, 0x0

    .line 810
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 812
    .local v0, "data":[B
    :try_start_0
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v7, "com.skt.skaf.A000Z00040"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/feelingk/iap/IAPActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 813
    .local v4, "other":Landroid/content/Context;
    const-string v6, "lockInfo.txt"

    invoke-virtual {v4, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 815
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 816
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 817
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 827
    .end local v4    # "other":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_3

    array-length v6, v0

    const/16 v7, 0xe

    if-ne v6, v7, :cond_3

    .line 828
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 831
    .local v5, "value":Ljava/lang/String;
    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/iap/IAPActivity;->access$26(Ljava/lang/String;)V

    .line 835
    :try_start_2
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$27()Ljava/lang/String;

    move-result-object v6

    const-string v7, "5w5943jeheiqtytyieo1wo3i"

    invoke-static {v6, v7}, Lcom/feelingk/iap/IAPActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/iap/IAPActivity;->access$28(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 841
    :goto_1
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 843
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-boolean v6, v6, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    if-nez v6, :cond_1

    .line 845
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-class v7, Lcom/feelingk/iap/PwdActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "pwd"

    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$29()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const v7, 0xd7115

    invoke-virtual {v6, v3, v7}, Lcom/feelingk/iap/IAPActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 869
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "value":Ljava/lang/String;
    :goto_2
    return-void

    .line 818
    .restart local v4    # "other":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 822
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "other":Landroid/content/Context;
    :catch_1
    move-exception v1

    .line 823
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 824
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 825
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 836
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "value":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 850
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 851
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity$7;->onPurchaseButtonClick()V

    goto :goto_2

    .line 857
    :cond_2
    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 858
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity$7;->onPurchaseButtonClick()V

    goto :goto_2

    .line 862
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    const-string v6, "IAPActivity"

    const-string v7, "data is null"

    invoke-static {v6, v7}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 865
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity$7;->onPurchaseButtonClick()V

    goto :goto_2
.end method

.method public onPurchaseAutoCancelButtonClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 875
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x67

    const-string v2, "\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4\uc5d0 \ub300\ud574\n\ub3d9\uc758 \ud574 \uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 878
    :cond_0
    return-void
.end method

.method public onPurchaseButtonClick()V
    .locals 9

    .prologue
    const/16 v8, 0x44c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 771
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 772
    .local v2, "msgUI":Landroid/os/Message;
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 774
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$24()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 776
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 777
    .local v0, "hnd":Landroid/os/Handler;
    const/4 v1, 0x0

    .line 778
    .local v1, "msgNET":Landroid/os/Message;
    const-string v3, "IAPActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "# Purchase SK!!  mUseTCash ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$25(Lcom/feelingk/iap/IAPActivity;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / BPProtocol = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$25(Lcom/feelingk/iap/IAPActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 780
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 793
    :goto_2
    return-void

    :cond_0
    move v3, v5

    .line 779
    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 784
    .end local v0    # "hnd":Landroid/os/Handler;
    .end local v1    # "msgNET":Landroid/os/Message;
    :cond_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 789
    .restart local v0    # "hnd":Landroid/os/Handler;
    const-string v3, "IAPActivity"

    const-string v4, "# Purchase KT_LG!!  "

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/16 v3, 0x44d

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 791
    .restart local v1    # "msgNET":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public onPurchaseCancelButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 754
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 755
    .local v0, "hnd":Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 756
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 758
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$15(Lcom/feelingk/iap/IAPActivity;)V

    .line 760
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 761
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$22(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 762
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$18(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 765
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 766
    .local v2, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 767
    return-void
.end method

.method public onTstoreLockError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1, p1}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 883
    return-void
.end method

.method public onUseTCashCheckChanged(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 733
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0, p1}, Lcom/feelingk/iap/IAPActivity;->access$18(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 736
    if-eqz p1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 748
    :goto_0
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PopupCheck!!  UseTCash ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / BPProtocol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
