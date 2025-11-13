.class Lcom/feelingk/iap/IAPActivity$15;
.super Landroid/os/Handler;
.source "IAPActivity.java"


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1031
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x68

    const/16 v10, 0x67

    const/16 v9, 0x64

    const/16 v8, 0x66

    const/16 v7, 0x65

    .line 1034
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    .line 1036
    .local v1, "dlgType":I
    const-string v4, "IAPActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[GUI-Handler] mGUIMessageHandler msg.what= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1169
    const-string v4, "IAPActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[GUI Handler] OnError "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    if-eq v1, v9, :cond_0

    .line 1173
    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1174
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1175
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$15(Lcom/feelingk/iap/IAPActivity;)V

    .line 1178
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x7d4

    if-lt v4, v5, :cond_3

    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x7d7

    if-gt v4, v5, :cond_3

    .line 1191
    :cond_1
    :goto_0
    return-void

    .line 1043
    :sswitch_0
    if-ne v1, v8, :cond_1

    .line 1044
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1045
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v5, "\uace0\uac1d\ub2d8\uc740 \ubcf8 \uc720\ub8cc \ucee8\ud150\uce20 \uc774\uc6a9 \uc2dc\nT store \ud68c\uc6d0\uac00\uc785\uc774 \ud544\uc694\ud569\ub2c8\ub2e4.\uc9c4\ud589 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v4, v5}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    :sswitch_1
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v5, "\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488"

    const-string v6, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,\n  \uc0c1\ud488 \uad6c\ub9e4 \uc2dc 1\ub144 \ub3d9\uc548 \ub9e4\uc6d4 \ucd08 \uc790\ub3d9 \uacb0\uc81c \ub418\uc5b4 \ud3b8\ub9ac\ud558\uac8c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\ub294 \uc0c1\ud488\uc785\ub2c8\ub2e4.\n\n- \uc774\uc6a9\n1. \uc0c1\ud488 \uc774\uc6a9\uae30\uac04\uc740 \ub9e4\uc6d4 1\uc77c \uc624\uc804 00\uc2dc 00\ubd84\ubd80\ud130 \ub9e4\uc6d4 \ub9d0\uc77c \uc624\ud6c4 11\uc2dc 59\ubd84 \uae4c\uc9c0 \uc785\ub2c8\ub2e4.\n2. \ub9cc\ub8cc\uae30\uac04\uc740 \ucd5c\ub300 1\ub144\uc774\ubbc0\ub85c \ucd94\ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \ubd84\uaed8\uc11c\ub294 \uc7ac \uad6c\ub9e4\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n3. \ud55c \uc5b4\ud50c \ub2f9 2\uac1c \uc774\uc0c1\uc758 \uc6d4\ubcc4 \uc790\ub3d9 \uacb0\uc81c \uc0c1\ud488 \uad6c\uc785\uc740 \ubd88\uac00\ud569\ub2c8\ub2e4.\n\n- \uacb0\uc81c\n1. \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uad6c\uc785 \uc2dc \uc989\uc2dc \uacb0\uc81c\ub418\uba70 \uc775\uc6d4\uc5d0 \uccad\uad6c\ub429\ub2c8\ub2e4.\n2. \uad6c\uc785 \uccab \ub2ec\uc740 \uc0c1\ud488 \uad6c\uc785 \uc2dc\uc810\ubd80\ud130 \ub2f9\uc6d4 \ub9d0 \uc77c\uae4c\uc9c0 \uc77c\ud560 \uacfc\uae08 \ubc0f \uccad\uad6c\ub418\uba70 \ub2e4\uc74c \ub2ec\ubd80\ud130\ub294 \ub9e4\uc6d4 1\uc77c\uc5d0 \uc790\ub3d9 \uc5f0\uc7a5 \ubc0f \uacb0\uc81c\uac00 \uc9c4\ud589\ub429\ub2c8\ub2e4.\n\n\n- \ud574\uc9c0\n1. \uc911\ub3c4 \ud574\uc9c0\uac00 \uac00\ub2a5\ud558\uba70 \ub2e4\uc74c \ub2ec 1\uc77c\uc774 \ub418\uae30 \uc804\uae4c\uc9c0 \ud574\uc9c0\uac00 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n2. \uc911\ub3c4 \ud574\uc9c0 \uc2dc \ud574\ub2f9 \uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud558\uba70 \ucd94\ud6c4 \uacb0\uc81c\uac00 \ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \uc911\ub3c4\ud574\uc9c0 \ud6c4 \ub2f9\uc6d4\uc5d0 \ub3d9\uc77c \uc0c1\ud488\uc744 \uc7ac \uad6c\ub9e4 \ud560 \uacbd\uc6b0 \uac00\uc785\ub9cc \ucc98\ub9ac\ub418\uba70 \uc775\uc6d4 1\uc77c\uc5d0 \uc815\uc0c1\uacb0\uc81c \ub429\ub2c8\ub2e4. \n\n\n- \uc8fc\uc758\uc0ac\ud56d\n\n1. \uc544\ub798\uc640 \uac19\uc740 \uc0c1\ud669\uc5d0\uc11c \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774 \uc790\ub3d9 \ud574\uc9c0 \ub420 \uc218 \uc788\uc73c\ub2c8 \ucc38\uace0\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n- T store \ud68c\uc6d0 \ud0c8\ud1f4\n- SKT \uc774\ub3d9\ud1b5\uc2e0 \uc11c\ube44\uc2a4 \ud574\uc9c0\n- \ubc88\ud638 \uc774\ub3d9\n- \uba85\uc758 \ubcc0\uacbd\n- \uae30\uae30\ubcc0\uacbd\n-  Appl.\uc9c0\uc6d0 \ubc0f \ub3d9\uc77c\ud55c AID\uc0c1\ud488\uc77c \uacbd\uc6b0\n- \uc5b4\ud50c \uc0ad\uc81c\n\n\n\ud574\ub2f9 \uc0ac\uc720\uc5d0 \ub300\ud574\uc11c\ub294 SK\ud50c\ub798\ub2db\uc758 \ucc45\uc784\uc774 \uc5c6\uc74c\uc744 \ubbf8\ub9ac \uc54c\ub9bd\ub2c8\ub2e4.\n\n\uac10\uc0ac\ud569\ub2c8\ub2e4.\n"

    invoke-virtual {v4, v5, v6}, Lcom/feelingk/iap/IAPActivity;->popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1058
    :sswitch_2
    if-ne v1, v8, :cond_1

    .line 1059
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1060
    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-static {v5, v4}, Lcom/feelingk/iap/IAPActivity;->access$36(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 1061
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    .line 1062
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v5, "\ud604\uc7ac \uace0\uac1d\ub2d8\uc740 \ubcf8 \ucee8\ud150\uce20\uc758 \uccb4\ud5d8\ud310\uc744 \uc774\uc6a9 \uc911\uc785\ub2c8\ub2e4.\uc815\uc2dd\ud310\uc73c\ub85c \uc804\ud658 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v4, v5}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    :sswitch_3
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1070
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1071
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v5}, Lcom/feelingk/iap/IAPActivity;->access$38(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 1077
    :sswitch_4
    if-ne v1, v8, :cond_1

    .line 1078
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1080
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$11(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1081
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 1089
    :sswitch_5
    if-ne v1, v10, :cond_1

    .line 1090
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$15(Lcom/feelingk/iap/IAPActivity;)V

    .line 1092
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)V

    .line 1093
    invoke-static {v11}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 1101
    :sswitch_6
    if-ne v1, v11, :cond_1

    .line 1102
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/feelingk/iap/net/MsgConfirm;

    .line 1118
    .local v0, "confirm":Lcom/feelingk/iap/net/MsgConfirm;
    :try_start_0
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v6

    const-string v7, "MS949"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$39(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1119
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$40(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$39(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_1
    const/16 v4, 0x69

    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1126
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v5, 0x69

    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Lcom/feelingk/iap/IAPActivity;->access$40(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1121
    :catch_0
    move-exception v2

    .line 1122
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1145
    .end local v0    # "confirm":Lcom/feelingk/iap/net/MsgConfirm;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :sswitch_7
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1147
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/feelingk/iap/net/PurchaseParam;

    .line 1149
    .local v3, "pp":Lcom/feelingk/iap/net/PurchaseParam;
    invoke-virtual {v3}, Lcom/feelingk/iap/net/PurchaseParam;->getpBPInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1150
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v3}, Lcom/feelingk/iap/net/PurchaseParam;->getpId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/feelingk/iap/net/PurchaseParam;->getpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1153
    :cond_2
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v3}, Lcom/feelingk/iap/net/PurchaseParam;->getpId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/feelingk/iap/net/PurchaseParam;->getpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/feelingk/iap/net/PurchaseParam;->getpTid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/feelingk/iap/net/PurchaseParam;->getpBPInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1163
    .end local v3    # "pp":Lcom/feelingk/iap/net/PurchaseParam;
    :sswitch_8
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1164
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v5, 0x70

    const-string v6, "\ubcf8 \uc0c1\ud488\uc5d0 \ub300\ud55c \ud574\uc9c0\uac00\n\uc815\uc0c1\uc801\uc73c\ub85c \ucc98\ub9ac\ub418\uc5c8\uc73c\uba70\n\ub2f9\uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud568\uc744\uc54c\ub824\ub4dc\ub9bd\ub2c8\ub2e4.\n\n\uc774\uc6a9\ud574 \uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4."

    invoke-static {v4, v5, v6}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1183
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1184
    invoke-static {v7}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1185
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;)V

    .line 1186
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v5}, Lcom/feelingk/iap/IAPActivity;->access$38(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1037
    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_5
        0x450 -> :sswitch_4
        0x452 -> :sswitch_6
        0x45d -> :sswitch_2
        0x45f -> :sswitch_0
        0x460 -> :sswitch_7
        0x461 -> :sswitch_3
        0x463 -> :sswitch_8
        0x464 -> :sswitch_1
    .end sparse-switch
.end method
