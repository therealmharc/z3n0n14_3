.class Lcom/gamevil/nexus2/xml/ProfileSender$10;
.super Ljava/lang/Object;
.source "ProfileSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/nexus2/xml/ProfileSender;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/ProfileSender$10;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender$10;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    invoke-static {v2}, Lcom/gamevil/nexus2/xml/ProfileSender;->access$2(Lcom/gamevil/nexus2/xml/ProfileSender;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1129
    .local v0, "layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1130
    :cond_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender$10;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    invoke-static {v2}, Lcom/gamevil/nexus2/xml/ProfileSender;->access$2(Lcom/gamevil/nexus2/xml/ProfileSender;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1131
    .local v1, "message":Landroid/widget/TextView;
    if-nez v1, :cond_1

    .line 1150
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender$10;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    iget v2, v2, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1141
    :sswitch_0
    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec.\n\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0 \uc0c1\ud0dc \ud655\uc778 \ud6c4 \ub2e4\uc2dc \uc2e4\ud589\ud558\uc5ec \uc8fc\uc138\uc694"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1135
    :sswitch_1
    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc0c1\ud0dc\uac00 \uc6d0\ud65c\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\nWIFI \ub610\ub294 3G \ud5c8\uc6a9 \uc5ec\ubd80 \ud655\uc778\ubc14\ub78d\ub2c8\ub2e4.\n\ub124\ud2b8\uc6cc\ud06c \uc811\uc18d \uac00\ub2a5 \uc0c1\ud0dc\uc5d0\uc11c \uc880\ub354 \uc6d0\ud65c\ud55c \uac8c\uc784 \uc9c4\ud589\uc774 \uac00\ub2a5\ud569\ub2c8\ub2e4."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1138
    :sswitch_2
    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc5d0 \uc2e4\ud328 \ud558\uc600\uc2b5\ub2c8\ub2e4.\n\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0 \uc0c1\ud0dc \ud655\uc778 \ud6c4 \ub2e4\uc2dc \uc2e4\ud589\ud558\uc5ec \uc8fc\uc138\uc694"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1144
    :sswitch_3
    const-string v2, "\uc778\uc99d \uc5d0\ub7ec\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\ub2e4\uc74c\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud558\uc138\uc694."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1147
    :sswitch_4
    const-string v2, "\uc778\uc99d \ub370\uc774\ud130 \uc5d0\ub7ec\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\ub2e4\uc74c\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud558\uc138\uc694."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1132
    nop

    :sswitch_data_0
    .sparse-switch
        -0x270f -> :sswitch_0
        -0x3e7 -> :sswitch_2
        -0x63 -> :sswitch_1
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method
