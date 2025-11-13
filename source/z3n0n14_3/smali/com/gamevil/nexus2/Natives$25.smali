.class Lcom/gamevil/nexus2/Natives$25;
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
    iput p1, p0, Lcom/gamevil/nexus2/Natives$25;->val$ack:I

    .line 3122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3126
    iget v0, p0, Lcom/gamevil/nexus2/Natives$25;->val$ack:I

    sparse-switch v0, :sswitch_data_0

    .line 3241
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    if-nez v0, :cond_4

    .line 3243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3244
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3245
    const-string v1, "Connect Failed."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3246
    const-string v1, "OK"

    .line 3247
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$9;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$9;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3246
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3270
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gamevil/nexus2/Natives;->setPurchaseChange(I)V

    .line 3271
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$0()V

    .line 3273
    return-void

    .line 3129
    :sswitch_0
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    if-nez v0, :cond_0

    .line 3131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3132
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3133
    const-string v1, "Can not Connect."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3134
    const-string v1, "OK"

    .line 3135
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$1;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$1;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3134
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3144
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3145
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3146
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c\ub97c \uc2dc\ub3c4 \ud560 \uc218 \uc788\ub294 \uc0c1\ud0dc\uac00 \uc544\ub2d9\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3147
    const-string v1, "\ud655\uc778"

    .line 3148
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$2;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$2;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3147
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3152
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3157
    :sswitch_1
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    if-nez v0, :cond_1

    .line 3159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3160
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3161
    const-string v1, "Blocked User."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3162
    const-string v1, "OK"

    .line 3163
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$3;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$3;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3162
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3172
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3173
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3174
    const-string v1, "\ucc28\ub2e8\ub41c \uc720\uc800 \uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3175
    const-string v1, "\ud655\uc778"

    .line 3176
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$4;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$4;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3175
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3185
    :sswitch_2
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    if-nez v0, :cond_2

    .line 3187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3188
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3189
    const-string v1, "Purchase limit Exceeded."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3190
    const-string v1, "OK"

    .line 3191
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$5;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$5;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3190
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3200
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3201
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3202
    const-string v1, "\uc6d4 \uad6c\ub9e4\ud55c\ub3c4\uac00 \ucd08\uacfc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3203
    const-string v1, "\ud655\uc778"

    .line 3204
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$6;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$6;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3203
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3213
    :sswitch_3
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    if-nez v0, :cond_3

    .line 3215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3216
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3217
    const-string v1, "Purchase limit Exceeded."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3218
    const-string v1, "OK"

    .line 3219
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$7;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$7;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3218
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3228
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3229
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3230
    const-string v1, "\uc77c\uc77c \uad6c\ub9e4\ud55c\ub3c4\uac00 \ucd08\uacfc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3231
    const-string v1, "\ud655\uc778"

    .line 3232
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$8;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$8;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3231
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3256
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3257
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3258
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c\uc5d0 \uc5f0\uacb0\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3259
    const-string v1, "\ud655\uc778"

    .line 3260
    new-instance v2, Lcom/gamevil/nexus2/Natives$25$10;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$25$10;-><init>(Lcom/gamevil/nexus2/Natives$25;)V

    .line 3259
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3126
    :sswitch_data_0
    .sparse-switch
        -0x29a -> :sswitch_0
        -0x9 -> :sswitch_1
        -0x6 -> :sswitch_3
        -0x5 -> :sswitch_2
    .end sparse-switch
.end method
