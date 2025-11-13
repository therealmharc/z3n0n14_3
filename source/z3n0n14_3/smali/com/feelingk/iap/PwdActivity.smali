.class public Lcom/feelingk/iap/PwdActivity;
.super Landroid/app/Activity;
.source "PwdActivity.java"


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field WXGAFlag:Ljava/lang/Boolean;

.field buttonHeight:I

.field buttonWidth:I

.field private decryptPwd:Ljava/lang/String;

.field delete:Landroid/widget/Button;

.field deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

.field eightDrawables:Landroid/graphics/drawable/StateListDrawable;

.field et1:Landroid/widget/EditText;

.field et2:Landroid/widget/EditText;

.field et3:Landroid/widget/EditText;

.field et4:Landroid/widget/EditText;

.field fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

.field fourDrawables:Landroid/graphics/drawable/StateListDrawable;

.field hvga:Ljava/lang/Boolean;

.field inputNum:Ljava/lang/String;

.field isdelete:Ljava/io/InputStream;

.field isdot:Ljava/io/InputStream;

.field iset1:Ljava/io/InputStream;

.field iset2:Ljava/io/InputStream;

.field iset3:Ljava/io/InputStream;

.field iset4:Ljava/io/InputStream;

.field nineDrawables:Landroid/graphics/drawable/StateListDrawable;

.field noneDrawables:Landroid/graphics/drawable/StateListDrawable;

.field numCheck:I

.field oneDrawables:Landroid/graphics/drawable/StateListDrawable;

.field pwdText:Landroid/widget/TextView;

.field sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

.field sixDrawables:Landroid/graphics/drawable/StateListDrawable;

.field threeDrawables:Landroid/graphics/drawable/StateListDrawable;

.field twoDrawables:Landroid/graphics/drawable/StateListDrawable;

.field zeroDrawables:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->isdot:Ljava/io/InputStream;

    .line 35
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 36
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 38
    iput v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    .line 41
    iput v2, p0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    .line 43
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 44
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 45
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 46
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 47
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 48
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 49
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 50
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 51
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 52
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 53
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 54
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 28
    return-void
.end method


# virtual methods
.method public checkDot()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1203
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-eqz v2, :cond_0

    .line 1204
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "keypad_back.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1207
    .local v0, "back":Ljava/io/InputStream;
    const-string v2, "none"

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1208
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x1e

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1209
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v2, v1, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1211
    .end local v0    # "back":Ljava/io/InputStream;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "inputbox_pw_dot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    .line 1213
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    :cond_1
    :goto_0
    return-void

    .line 1215
    :cond_2
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-ne v2, v6, :cond_3

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "inputbox_pw_dot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/PwdActivity;->iset2:Ljava/io/InputStream;

    .line 1217
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->iset2:Ljava/io/InputStream;

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1219
    :cond_3
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "inputbox_pw_dot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/PwdActivity;->iset3:Ljava/io/InputStream;

    .line 1221
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->iset3:Ljava/io/InputStream;

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1223
    :cond_4
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "inputbox_pw_dot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/PwdActivity;->iset4:Ljava/io/InputStream;

    .line 1225
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->iset4:Ljava/io/InputStream;

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public checkInputNum()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1229
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1231
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/feelingk/iap/IAPActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1233
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "result"

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/feelingk/iap/PwdActivity;->setResult(ILandroid/content/Intent;)V

    .line 1236
    .end local v0    # "intent2":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->finish()V

    .line 1252
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    const-string v2, "\ub2e4\uc2dc \ud55c\ubc88 \ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    const/4 v1, 0x0

    iput v1, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 1241
    const-string v1, ""

    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 1242
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1243
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1244
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1247
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1248
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1249
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    const-string v2, "\ucde8\uc18c"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x1e0

    const/16 v10, 0x140

    const/4 v9, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 62
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "pwd"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    .line 64
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 66
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    .local v1, "deviceWidth":I
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 69
    .local v0, "deviceHeight":I
    div-int/lit8 v7, v1, 0x4

    iput v7, p0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    .line 70
    div-int/lit8 v7, v0, 0x4

    iput v7, p0, Lcom/feelingk/iap/PwdActivity;->buttonHeight:I

    .line 72
    if-ne v1, v10, :cond_0

    if-eq v0, v11, :cond_1

    :cond_0
    if-ne v1, v11, :cond_2

    if-ne v0, v10, :cond_2

    .line 73
    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    .line 77
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1280"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "800"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/PwdActivity;->WXGAFlag:Ljava/lang/Boolean;

    .line 90
    :goto_0
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/feelingk/iap/PwdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 91
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 93
    .local v2, "disp":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v5

    .line 95
    .local v5, "rotation":I
    packed-switch v5, :pswitch_data_0

    .line 137
    :goto_1
    return-void

    .line 81
    .end local v2    # "disp":Landroid/view/Display;
    .end local v5    # "rotation":I
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "800"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1280"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 82
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/PwdActivity;->WXGAFlag:Ljava/lang/Boolean;

    goto :goto_0

    .line 86
    :cond_4
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/PwdActivity;->WXGAFlag:Ljava/lang/Boolean;

    goto :goto_0

    .line 98
    .restart local v2    # "disp":Landroid/view/Display;
    .restart local v5    # "rotation":I
    .restart local v6    # "wm":Landroid/view/WindowManager;
    :pswitch_0
    const-string v7, "Roation"

    const-string v8, "Portrait : 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_1

    .line 107
    :pswitch_1
    const-string v7, "Roation"

    const-string v8, "Landscape : 90"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v7, p0, Lcom/feelingk/iap/PwdActivity;->WXGAFlag:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 109
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_1

    .line 116
    :pswitch_2
    const-string v7, "Roation"

    const-string v8, "Portrait : 180"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_1

    .line 125
    :pswitch_3
    const-string v7, "Roation"

    const-string v8, "Landscape : 270"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v7, p0, Lcom/feelingk/iap/PwdActivity;->WXGAFlag:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 127
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_1

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public viewLandscape()V
    .locals 73

    .prologue
    .line 139
    new-instance v61, Landroid/widget/LinearLayout;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .local v61, "root":Landroid/widget/LinearLayout;
    new-instance v69, Landroid/view/ViewGroup$LayoutParams;

    const/16 v70, -0x1

    const/16 v71, -0x1

    invoke-direct/range {v69 .. v71}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v61

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const/16 v69, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    const/16 v69, 0x11

    move-object/from16 v0, v61

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    new-instance v48, Landroid/widget/LinearLayout;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .local v48, "left":Landroid/widget/LinearLayout;
    const/16 v69, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    new-instance v49, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, 0x0

    const/16 v70, -0x1

    const/high16 v71, 0x3f800000    # 1.0f

    move-object/from16 v0, v49

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 148
    .local v49, "leftLLParams":Landroid/widget/LinearLayout$LayoutParams;
    const-string v5, "#3C3C3C"

    .line 149
    .local v5, "bgColor":Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v48

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 150
    invoke-virtual/range {v48 .. v49}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const/16 v69, 0x11

    move-object/from16 v0, v48

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 152
    move-object/from16 v0, v61

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    new-instance v44, Landroid/widget/ImageView;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v44, "iv":Landroid/widget/ImageView;
    new-instance v45, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, 0x6e

    const/16 v70, 0x28

    move-object/from16 v0, v45

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v45, "ivParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x0

    const/16 v70, 0x19

    const/16 v71, 0x0

    const/16 v72, 0x14

    move-object/from16 v0, v45

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    invoke-virtual/range {v44 .. v45}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "logo_pw.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 160
    .local v43, "is":Ljava/io/InputStream;
    const-string v69, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    move-object/from16 v0, v44

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    new-instance v69, Landroid/widget/TextView;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v69, v0

    new-instance v70, Landroid/view/ViewGroup$LayoutParams;

    const/16 v71, -0x1

    .line 165
    const/16 v72, -0x2

    invoke-direct/range {v70 .. v72}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 164
    invoke-virtual/range {v69 .. v70}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v69, v0

    const/16 v70, 0x11

    invoke-virtual/range {v69 .. v70}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v69, v0

    const/high16 v70, 0x41700000    # 15.0f

    invoke-virtual/range {v69 .. v70}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    const-string v66, "#ffffff"

    .line 169
    .local v66, "titleColor":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v69, v0

    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v70

    invoke-virtual/range {v69 .. v70}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v69, v0

    const-string v70, "T store \uc7a0\uae08\uc124\uc815 \ube44\ubc00\ubc88\ud638\ub97c\n\uc785\ub825 \ud574\uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual/range {v69 .. v70}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v69, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance v50, Landroid/widget/LinearLayout;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v50, "line":Landroid/widget/LinearLayout;
    new-instance v51, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, -0x1

    .line 176
    const/16 v70, -0x2

    .line 175
    move-object/from16 v0, v51

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v51, "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x0

    const/16 v70, 0xf

    const/16 v71, 0x0

    const/16 v72, 0x14

    move-object/from16 v0, v51

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    invoke-virtual/range {v50 .. v51}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "bg_line.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 180
    const-string v69, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    move-object/from16 v0, v50

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    new-instance v57, Landroid/widget/LinearLayout;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .local v57, "pwd":Landroid/widget/LinearLayout;
    const/16 v69, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 187
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, -0x1

    .line 188
    const/16 v70, -0x2

    .line 187
    move-object/from16 v0, v58

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v58, "pwdParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x5

    const/16 v70, 0x0

    const/16 v71, 0x5

    const/16 v72, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    const/16 v69, 0x11

    move-object/from16 v0, v57

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 191
    invoke-virtual/range {v57 .. v58}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    move-object/from16 v0, v48

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    const/16 v42, 0x0

    .line 195
    .local v42, "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-eqz v69, :cond_0

    .line 197
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, 0x32

    const/16 v70, 0x28

    move-object/from16 v0, v41

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v41, "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v42, Landroid/widget/LinearLayout$LayoutParams;

    .end local v42    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x32

    const/16 v70, 0x28

    move-object/from16 v0, v42

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    .restart local v42    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0xf

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 219
    :goto_0
    const/16 v69, 0xa

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 221
    new-instance v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 222
    .local v37, "inputBox1":Landroid/widget/LinearLayout;
    const/16 v69, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 223
    const/16 v69, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 224
    const/16 v69, 0x11

    move-object/from16 v0, v37

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "inputbox_pw.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 226
    const-string v69, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    move-object/from16 v0, v37

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    move-object/from16 v0, v57

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    new-instance v69, Landroid/widget/EditText;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v69, v0

    const/16 v70, 0x11

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setGravity(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v69, v0

    new-instance v70, Landroid/view/ViewGroup$LayoutParams;

    const/16 v71, 0x14

    const/16 v72, 0x14

    invoke-direct/range {v70 .. v72}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v69, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    new-instance v38, Landroid/widget/LinearLayout;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 237
    .local v38, "inputBox2":Landroid/widget/LinearLayout;
    const/16 v69, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 238
    const/16 v69, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 239
    const/16 v69, 0x11

    move-object/from16 v0, v38

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "inputbox_pw.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 241
    const-string v69, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    move-object/from16 v0, v38

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    move-object/from16 v0, v57

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    new-instance v69, Landroid/widget/EditText;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v69, v0

    const/16 v70, 0x11

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setGravity(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v69, v0

    new-instance v70, Landroid/view/ViewGroup$LayoutParams;

    const/16 v71, 0x14

    const/16 v72, 0x14

    invoke-direct/range {v70 .. v72}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v69, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    new-instance v39, Landroid/widget/LinearLayout;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 253
    .local v39, "inputBox3":Landroid/widget/LinearLayout;
    const/16 v69, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 254
    const/16 v69, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 255
    const/16 v69, 0x11

    move-object/from16 v0, v39

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "inputbox_pw.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 257
    const-string v69, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    move-object/from16 v0, v39

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    move-object/from16 v0, v57

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    new-instance v69, Landroid/widget/EditText;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v69, v0

    const/16 v70, 0x11

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setGravity(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v69, v0

    new-instance v70, Landroid/view/ViewGroup$LayoutParams;

    const/16 v71, 0x14

    const/16 v72, 0x14

    invoke-direct/range {v70 .. v72}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v69, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 268
    .local v40, "inputBox4":Landroid/widget/LinearLayout;
    const/16 v69, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 269
    const/16 v69, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 270
    const/16 v69, 0x11

    move-object/from16 v0, v40

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "inputbox_pw.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 272
    const-string v69, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    move-object/from16 v0, v40

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    move-object/from16 v0, v57

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    new-instance v69, Landroid/widget/EditText;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v69, v0

    const/16 v70, 0x11

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setGravity(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v69, v0

    new-instance v70, Landroid/view/ViewGroup$LayoutParams;

    const/16 v71, 0x14

    const/16 v72, 0x14

    invoke-direct/range {v70 .. v72}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v69, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    new-instance v59, Landroid/widget/LinearLayout;

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 286
    .local v59, "right":Landroid/widget/LinearLayout;
    const/16 v69, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 288
    new-instance v60, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, 0x0

    const/16 v70, -0x1

    const/high16 v71, 0x3f800000    # 1.0f

    move-object/from16 v0, v60

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 289
    .local v60, "rightLLParams":Landroid/widget/LinearLayout$LayoutParams;
    const-string v69, "#212121"

    invoke-static/range {v69 .. v69}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v59

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 290
    const/16 v69, 0x2

    const/16 v70, 0x0

    const/16 v71, 0x2

    const/16 v72, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 291
    invoke-virtual/range {v59 .. v60}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const/16 v69, 0x11

    move-object/from16 v0, v59

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 293
    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    const v64, 0x10100a7

    .line 297
    .local v64, "statePressed":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    .line 298
    .local v23, "btn_pad_sel_one":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 299
    .local v12, "btn_pad_nor_one":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v23

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v12, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 303
    .local v27, "btn_pad_sel_two":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 304
    .local v16, "btn_pad_nor_two":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v27

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v16

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v26

    .line 308
    .local v26, "btn_pad_sel_three":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 309
    .local v15, "btn_pad_nor_three":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v26

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 313
    .local v21, "btn_pad_sel_four":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 314
    .local v9, "btn_pad_nor_four":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v21

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v9, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 318
    .local v20, "btn_pad_sel_five":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 319
    .local v8, "btn_pad_nor_five":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v20

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v8, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    .line 323
    .local v25, "btn_pad_sel_six":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 324
    .local v14, "btn_pad_nor_six":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v25

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v14, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 328
    .local v24, "btn_pad_sel_seven":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 329
    .local v13, "btn_pad_nor_seven":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v24

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v13, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 333
    .local v19, "btn_pad_sel_eight":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 334
    .local v7, "btn_pad_nor_eight":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v19

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 338
    .local v22, "btn_pad_sel_nine":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 339
    .local v10, "btn_pad_nor_nine":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v22

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v10, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 343
    .local v11, "btn_pad_nor_none":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v28

    .line 346
    .local v28, "btn_pad_sel_zero":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 347
    .local v17, "btn_pad_nor_zero":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v28

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v17

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_sel.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 351
    .local v18, "btn_pad_sel_delete":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v69

    new-instance v70, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v71, "btn_pad_nor.png"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 352
    .local v6, "btn_pad_nor_delete":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput v64, v70, v71

    const-string v71, "btn_pad_sel"

    move-object/from16 v0, v18

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v70, v0

    const-string v71, "btn_pad_nor"

    move-object/from16 v0, v71

    invoke-static {v6, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v71

    invoke-virtual/range {v69 .. v71}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 356
    new-instance v46, Landroid/widget/LinearLayout;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 357
    .local v46, "keyPad":Landroid/widget/LinearLayout;
    const/16 v69, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 359
    new-instance v47, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, -0x1

    .line 360
    const/16 v70, -0x1

    .line 359
    move-object/from16 v0, v47

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 361
    .local v47, "keyPadParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x11

    move-object/from16 v0, v46

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 362
    const-string v69, "#212121"

    invoke-static/range {v69 .. v69}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v46

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 363
    invoke-virtual/range {v46 .. v47}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    move-object/from16 v0, v59

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 367
    .local v29, "buttonRow1":Landroid/widget/LinearLayout;
    const/16 v69, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 369
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, -0x1

    .line 370
    const/16 v70, -0x2

    const/high16 v71, 0x3f800000    # 1.0f

    .line 369
    move-object/from16 v0, v33

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 371
    .local v33, "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x5

    move/from16 v0, v69

    move-object/from16 v1, v33

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 372
    const/16 v69, 0x11

    move-object/from16 v0, v29

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 373
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    new-instance v55, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v70, v0

    add-int/lit8 v70, v70, -0x14

    const/high16 v71, 0x3f800000    # 1.0f

    move-object/from16 v0, v55

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 378
    .local v55, "numTopParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x1

    move/from16 v0, v69

    move-object/from16 v1, v55

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 381
    new-instance v54, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v70, v0

    add-int/lit8 v70, v70, -0x14

    const/high16 v71, 0x3f800000    # 1.0f

    move-object/from16 v0, v54

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 382
    .local v54, "numParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x1

    move/from16 v0, v69

    move-object/from16 v1, v54

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 384
    new-instance v56, Landroid/widget/Button;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 385
    .local v56, "one":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    const/16 v69, 0x11

    move-object/from16 v0, v56

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 387
    const-string v69, "1"

    move-object/from16 v0, v56

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v56

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 389
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v56

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 390
    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    move-object/from16 v0, v29

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    new-instance v67, Landroid/widget/Button;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 394
    .local v67, "two":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    const/16 v69, 0x11

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 396
    const-string v69, "2"

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 398
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 399
    move-object/from16 v0, v67

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    move-object/from16 v0, v29

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    new-instance v65, Landroid/widget/Button;

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 403
    .local v65, "three":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    const/16 v69, 0x11

    move-object/from16 v0, v65

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 405
    const-string v69, "3"

    move-object/from16 v0, v65

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 406
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v65

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 407
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v65

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 408
    move-object/from16 v0, v65

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    move-object/from16 v0, v29

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 412
    .local v30, "buttonRow2":Landroid/widget/LinearLayout;
    const/16 v69, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 413
    const/16 v69, 0x11

    move-object/from16 v0, v30

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 414
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    move-object/from16 v0, v46

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    new-instance v36, Landroid/widget/Button;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 418
    .local v36, "four":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    const/16 v69, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 420
    const-string v69, "4"

    move-object/from16 v0, v36

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v36

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 422
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v36

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 423
    move-object/from16 v0, v36

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    new-instance v35, Landroid/widget/Button;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 427
    .local v35, "five":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    const/16 v69, 0x11

    move-object/from16 v0, v35

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 429
    const-string v69, "5"

    move-object/from16 v0, v35

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v35

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 431
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v35

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 432
    move-object/from16 v0, v35

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    new-instance v63, Landroid/widget/Button;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 436
    .local v63, "six":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    const/16 v69, 0x11

    move-object/from16 v0, v63

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 438
    const-string v69, "6"

    move-object/from16 v0, v63

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v63

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 440
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v63

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 441
    move-object/from16 v0, v63

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    move-object/from16 v0, v30

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    new-instance v31, Landroid/widget/LinearLayout;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 445
    .local v31, "buttonRow3":Landroid/widget/LinearLayout;
    const/16 v69, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 446
    const/16 v69, 0x11

    move-object/from16 v0, v31

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 447
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    new-instance v62, Landroid/widget/Button;

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 451
    .local v62, "seven":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    const/16 v69, 0x11

    move-object/from16 v0, v62

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 453
    const-string v69, "7"

    move-object/from16 v0, v62

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v62

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 455
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v62

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 456
    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    move-object/from16 v0, v31

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    new-instance v34, Landroid/widget/Button;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 460
    .local v34, "eight":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    const/16 v69, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 462
    const-string v69, "8"

    move-object/from16 v0, v34

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v34

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 464
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v34

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 465
    move-object/from16 v0, v34

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    new-instance v52, Landroid/widget/Button;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 469
    .local v52, "nine":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    const/16 v69, 0x11

    move-object/from16 v0, v52

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 471
    const-string v69, "9"

    move-object/from16 v0, v52

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const/high16 v69, 0x41f00000    # 30.0f

    move-object/from16 v0, v52

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 473
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v52

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 474
    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 478
    .local v32, "buttonRow4":Landroid/widget/LinearLayout;
    const/16 v69, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 479
    const/16 v69, 0x11

    move-object/from16 v0, v32

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 480
    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 483
    new-instance v53, Landroid/widget/Button;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 484
    .local v53, "none":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    new-instance v68, Landroid/widget/Button;

    move-object/from16 v0, v68

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 489
    .local v68, "zero":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v69, v0

    invoke-virtual/range {v68 .. v69}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    const/16 v69, 0x11

    invoke-virtual/range {v68 .. v69}, Landroid/widget/Button;->setGravity(I)V

    .line 491
    const-string v69, "0"

    invoke-virtual/range {v68 .. v69}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 492
    const/high16 v69, 0x41f00000    # 30.0f

    invoke-virtual/range {v68 .. v69}, Landroid/widget/Button;->setTextSize(F)V

    .line 493
    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    invoke-virtual/range {v68 .. v69}, Landroid/widget/Button;->setTextColor(I)V

    .line 494
    move-object/from16 v0, v68

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    move-object/from16 v0, v32

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    new-instance v69, Landroid/widget/Button;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v69, v0

    const/16 v70, 0x11

    invoke-virtual/range {v69 .. v70}, Landroid/widget/Button;->setGravity(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v69, v0

    const-string v70, "\ucde8\uc18c"

    invoke-virtual/range {v69 .. v70}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v69, v0

    const/high16 v70, 0x41a00000    # 20.0f

    invoke-virtual/range {v69 .. v70}, Landroid/widget/Button;->setTextSize(F)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v69, v0

    invoke-static/range {v66 .. v66}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v70

    invoke-virtual/range {v69 .. v70}, Landroid/widget/Button;->setTextColor(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v69, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/PwdActivity;->setContentView(Landroid/view/View;)V

    .line 508
    new-instance v69, Lcom/feelingk/iap/PwdActivity$1;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$1;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    new-instance v69, Lcom/feelingk/iap/PwdActivity$2;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$2;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    new-instance v69, Lcom/feelingk/iap/PwdActivity$3;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$3;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v65

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    new-instance v69, Lcom/feelingk/iap/PwdActivity$4;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$4;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    new-instance v69, Lcom/feelingk/iap/PwdActivity$5;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$5;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    new-instance v69, Lcom/feelingk/iap/PwdActivity$6;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$6;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v63

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    new-instance v69, Lcom/feelingk/iap/PwdActivity$7;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$7;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v62

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    new-instance v69, Lcom/feelingk/iap/PwdActivity$8;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$8;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    new-instance v69, Lcom/feelingk/iap/PwdActivity$9;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$9;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v52

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    new-instance v69, Lcom/feelingk/iap/PwdActivity$10;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$10;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v68 .. v69}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v69, v0

    new-instance v70, Lcom/feelingk/iap/PwdActivity$11;

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$11;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v69 .. v70}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    return-void

    .line 206
    .end local v6    # "btn_pad_nor_delete":Ljava/io/InputStream;
    .end local v7    # "btn_pad_nor_eight":Ljava/io/InputStream;
    .end local v8    # "btn_pad_nor_five":Ljava/io/InputStream;
    .end local v9    # "btn_pad_nor_four":Ljava/io/InputStream;
    .end local v10    # "btn_pad_nor_nine":Ljava/io/InputStream;
    .end local v11    # "btn_pad_nor_none":Ljava/io/InputStream;
    .end local v12    # "btn_pad_nor_one":Ljava/io/InputStream;
    .end local v13    # "btn_pad_nor_seven":Ljava/io/InputStream;
    .end local v14    # "btn_pad_nor_six":Ljava/io/InputStream;
    .end local v15    # "btn_pad_nor_three":Ljava/io/InputStream;
    .end local v16    # "btn_pad_nor_two":Ljava/io/InputStream;
    .end local v17    # "btn_pad_nor_zero":Ljava/io/InputStream;
    .end local v18    # "btn_pad_sel_delete":Ljava/io/InputStream;
    .end local v19    # "btn_pad_sel_eight":Ljava/io/InputStream;
    .end local v20    # "btn_pad_sel_five":Ljava/io/InputStream;
    .end local v21    # "btn_pad_sel_four":Ljava/io/InputStream;
    .end local v22    # "btn_pad_sel_nine":Ljava/io/InputStream;
    .end local v23    # "btn_pad_sel_one":Ljava/io/InputStream;
    .end local v24    # "btn_pad_sel_seven":Ljava/io/InputStream;
    .end local v25    # "btn_pad_sel_six":Ljava/io/InputStream;
    .end local v26    # "btn_pad_sel_three":Ljava/io/InputStream;
    .end local v27    # "btn_pad_sel_two":Ljava/io/InputStream;
    .end local v28    # "btn_pad_sel_zero":Ljava/io/InputStream;
    .end local v29    # "buttonRow1":Landroid/widget/LinearLayout;
    .end local v30    # "buttonRow2":Landroid/widget/LinearLayout;
    .end local v31    # "buttonRow3":Landroid/widget/LinearLayout;
    .end local v32    # "buttonRow4":Landroid/widget/LinearLayout;
    .end local v33    # "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "eight":Landroid/widget/Button;
    .end local v35    # "five":Landroid/widget/Button;
    .end local v36    # "four":Landroid/widget/Button;
    .end local v37    # "inputBox1":Landroid/widget/LinearLayout;
    .end local v38    # "inputBox2":Landroid/widget/LinearLayout;
    .end local v39    # "inputBox3":Landroid/widget/LinearLayout;
    .end local v40    # "inputBox4":Landroid/widget/LinearLayout;
    .end local v41    # "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v46    # "keyPad":Landroid/widget/LinearLayout;
    .end local v47    # "keyPadParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v52    # "nine":Landroid/widget/Button;
    .end local v53    # "none":Landroid/widget/Button;
    .end local v54    # "numParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v55    # "numTopParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v56    # "one":Landroid/widget/Button;
    .end local v59    # "right":Landroid/widget/LinearLayout;
    .end local v60    # "rightLLParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v62    # "seven":Landroid/widget/Button;
    .end local v63    # "six":Landroid/widget/Button;
    .end local v64    # "statePressed":I
    .end local v65    # "three":Landroid/widget/Button;
    .end local v67    # "two":Landroid/widget/Button;
    .end local v68    # "zero":Landroid/widget/Button;
    :cond_0
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v69, 0x37

    const/16 v70, 0x37

    move-object/from16 v0, v41

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    .restart local v41    # "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v42, Landroid/widget/LinearLayout$LayoutParams;

    .end local v42    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0x37

    const/16 v70, 0x37

    move-object/from16 v0, v42

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    .restart local v42    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v69, 0xf

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method

.method public viewPortrait()V
    .locals 71

    .prologue
    .line 678
    new-instance v57, Landroid/widget/LinearLayout;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 679
    .local v57, "root":Landroid/widget/LinearLayout;
    new-instance v67, Landroid/view/ViewGroup$LayoutParams;

    const/16 v68, -0x1

    const/16 v69, -0x1

    invoke-direct/range {v67 .. v69}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v57

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    const/16 v67, 0x1

    move-object/from16 v0, v57

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 681
    const-string v5, "#3C3C3C"

    .line 682
    .local v5, "bgColor":Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v57

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 683
    const/16 v67, 0x11

    move-object/from16 v0, v57

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 685
    new-instance v63, Landroid/widget/LinearLayout;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 687
    .local v63, "top":Landroid/widget/LinearLayout;
    new-instance v64, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, -0x1

    .line 688
    const/16 v68, 0x0

    const/high16 v69, 0x3f800000    # 1.0f

    .line 687
    move-object/from16 v0, v64

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 689
    .local v64, "topParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v63 .. v64}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    const/16 v67, 0x11

    move-object/from16 v0, v63

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 691
    const/16 v67, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 692
    move-object/from16 v0, v57

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 694
    new-instance v44, Landroid/widget/ImageView;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 696
    .local v44, "iv":Landroid/widget/ImageView;
    new-instance v45, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, 0x6e

    const/16 v68, 0x28

    move-object/from16 v0, v45

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 697
    .local v45, "ivParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x0

    const/16 v68, 0x19

    const/16 v69, 0x0

    const/16 v70, 0x14

    move-object/from16 v0, v45

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 698
    const/16 v67, 0x11

    move/from16 v0, v67

    move-object/from16 v1, v45

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 699
    invoke-virtual/range {v44 .. v45}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "logo_pw.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 701
    .local v43, "is":Ljava/io/InputStream;
    const-string v67, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v44

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    move-object/from16 v0, v63

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 704
    new-instance v67, Landroid/widget/TextView;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v67, v0

    new-instance v68, Landroid/view/ViewGroup$LayoutParams;

    const/16 v69, -0x1

    .line 706
    const/16 v70, -0x2

    invoke-direct/range {v68 .. v70}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 705
    invoke-virtual/range {v67 .. v68}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v67, v0

    const/16 v68, 0x11

    invoke-virtual/range {v67 .. v68}, Landroid/widget/TextView;->setGravity(I)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v67, v0

    const/high16 v68, 0x41700000    # 15.0f

    invoke-virtual/range {v67 .. v68}, Landroid/widget/TextView;->setTextSize(F)V

    .line 709
    const-string v62, "#ffffff"

    .line 710
    .local v62, "titleColor":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Landroid/widget/TextView;->setTextColor(I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v67, v0

    const-string v68, "T store \uc7a0\uae08\uc124\uc815 \ube44\ubc00\ubc88\ud638\ub97c\n\uc785\ub825 \ud574\uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual/range {v67 .. v68}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v67, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 714
    new-instance v48, Landroid/widget/LinearLayout;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 716
    .local v48, "line":Landroid/widget/LinearLayout;
    new-instance v49, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, -0x1

    .line 717
    const/16 v68, -0x2

    .line 716
    move-object/from16 v0, v49

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 718
    .local v49, "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x0

    const/16 v68, 0xf

    const/16 v69, 0x0

    const/16 v70, 0x14

    move-object/from16 v0, v49

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 719
    invoke-virtual/range {v48 .. v49}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "bg_line.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 721
    const-string v67, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 725
    new-instance v55, Landroid/widget/LinearLayout;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 726
    .local v55, "pwd":Landroid/widget/LinearLayout;
    const/16 v67, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 728
    new-instance v56, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, -0x1

    .line 729
    const/16 v68, -0x2

    .line 728
    move-object/from16 v0, v56

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 730
    .local v56, "pwdParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0xf

    move-object/from16 v0, v56

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 731
    const/16 v67, 0x11

    move-object/from16 v0, v55

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 732
    invoke-virtual/range {v55 .. v56}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    move-object/from16 v0, v63

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 735
    const/16 v42, 0x0

    .line 736
    .local v42, "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v67

    if-eqz v67, :cond_0

    .line 738
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, 0x32

    const/16 v68, 0x28

    move-object/from16 v0, v41

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 741
    .local v41, "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v42, Landroid/widget/LinearLayout$LayoutParams;

    .end local v42    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x32

    const/16 v68, 0x28

    move-object/from16 v0, v42

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 743
    .restart local v42    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0xf

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 756
    :goto_0
    new-instance v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 757
    .local v37, "inputBox1":Landroid/widget/LinearLayout;
    const/16 v67, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 758
    const/16 v67, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 759
    const/16 v67, 0x11

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "inputbox_pw.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 761
    const-string v67, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v37

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    move-object/from16 v0, v55

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 765
    new-instance v67, Landroid/widget/EditText;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v67, v0

    const/16 v68, 0x11

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setGravity(I)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v67, v0

    new-instance v68, Landroid/view/ViewGroup$LayoutParams;

    const/16 v69, 0x14

    const/16 v70, 0x14

    invoke-direct/range {v68 .. v70}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v67, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 771
    new-instance v38, Landroid/widget/LinearLayout;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 772
    .local v38, "inputBox2":Landroid/widget/LinearLayout;
    const/16 v67, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 773
    const/16 v67, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 774
    const/16 v67, 0x11

    move-object/from16 v0, v38

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 775
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "inputbox_pw.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 776
    const-string v67, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v38

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 777
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    move-object/from16 v0, v55

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 781
    new-instance v67, Landroid/widget/EditText;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v67, v0

    const/16 v68, 0x11

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setGravity(I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v67, v0

    new-instance v68, Landroid/view/ViewGroup$LayoutParams;

    const/16 v69, 0x14

    const/16 v70, 0x14

    invoke-direct/range {v68 .. v70}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v67, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 787
    new-instance v39, Landroid/widget/LinearLayout;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 788
    .local v39, "inputBox3":Landroid/widget/LinearLayout;
    const/16 v67, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 789
    const/16 v67, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 790
    const/16 v67, 0x11

    move-object/from16 v0, v39

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 791
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "inputbox_pw.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 792
    const-string v67, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v39

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 793
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    move-object/from16 v0, v55

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 796
    new-instance v67, Landroid/widget/EditText;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v67, v0

    const/16 v68, 0x11

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setGravity(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v67, v0

    new-instance v68, Landroid/view/ViewGroup$LayoutParams;

    const/16 v69, 0x14

    const/16 v70, 0x14

    invoke-direct/range {v68 .. v70}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v67, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 803
    .local v40, "inputBox4":Landroid/widget/LinearLayout;
    const/16 v67, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 804
    const/16 v67, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 805
    const/16 v67, 0x11

    move-object/from16 v0, v40

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 806
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "inputbox_pw.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v43

    .line 807
    const-string v67, "none"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v40

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    move-object/from16 v0, v55

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 811
    new-instance v67, Landroid/widget/EditText;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v67, v0

    const/16 v68, 0x11

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setGravity(I)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v67, v0

    new-instance v68, Landroid/view/ViewGroup$LayoutParams;

    const/16 v69, 0x14

    const/16 v70, 0x14

    invoke-direct/range {v68 .. v70}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v67, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 822
    const v60, 0x10100a7

    .line 824
    .local v60, "statePressed":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    .line 825
    .local v23, "btn_pad_sel_one":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 826
    .local v12, "btn_pad_nor_one":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v23

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v12, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 829
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 830
    .local v27, "btn_pad_sel_two":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 831
    .local v16, "btn_pad_nor_two":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v27

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v16

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v26

    .line 835
    .local v26, "btn_pad_sel_three":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 836
    .local v15, "btn_pad_nor_three":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v26

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 840
    .local v21, "btn_pad_sel_four":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 841
    .local v9, "btn_pad_nor_four":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v21

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v9, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 845
    .local v20, "btn_pad_sel_five":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 846
    .local v8, "btn_pad_nor_five":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v20

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v8, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 849
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    .line 850
    .local v25, "btn_pad_sel_six":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 851
    .local v14, "btn_pad_nor_six":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v25

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v14, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 855
    .local v24, "btn_pad_sel_seven":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 856
    .local v13, "btn_pad_nor_seven":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v13, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 859
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 860
    .local v19, "btn_pad_sel_eight":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 861
    .local v7, "btn_pad_nor_eight":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v19

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 865
    .local v22, "btn_pad_sel_nine":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 866
    .local v10, "btn_pad_nor_nine":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v22

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v10, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 870
    .local v11, "btn_pad_nor_none":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v28

    .line 873
    .local v28, "btn_pad_sel_zero":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 874
    .local v17, "btn_pad_nor_zero":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v17

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 877
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_sel.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 878
    .local v18, "btn_pad_sel_delete":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "btn_pad_nor.png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 879
    .local v6, "btn_pad_nor_delete":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v60, v68, v69

    const-string v69, "btn_pad_sel"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const-string v69, "btn_pad_nor"

    move-object/from16 v0, v69

    invoke-static {v6, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 883
    new-instance v46, Landroid/widget/LinearLayout;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 884
    .local v46, "keyPad":Landroid/widget/LinearLayout;
    const/16 v67, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 886
    new-instance v47, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, -0x1

    .line 887
    const/16 v68, 0x0

    const/high16 v69, 0x3f800000    # 1.0f

    .line 886
    move-object/from16 v0, v47

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 888
    .local v47, "keyPadParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x11

    move-object/from16 v0, v46

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 889
    const-string v67, "#212121"

    invoke-static/range {v67 .. v67}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v46

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 890
    invoke-virtual/range {v46 .. v47}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    move-object/from16 v0, v57

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 893
    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 894
    .local v29, "buttonRow1":Landroid/widget/LinearLayout;
    const/16 v67, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 896
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, -0x1

    .line 897
    const/16 v68, 0x0

    const/high16 v69, 0x3f800000    # 1.0f

    .line 896
    move-object/from16 v0, v33

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 898
    .local v33, "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x5

    move/from16 v0, v67

    move-object/from16 v1, v33

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 899
    const/16 v67, 0x11

    move-object/from16 v0, v29

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 900
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 904
    new-instance v53, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v68, v0

    add-int/lit8 v68, v68, -0x14

    const/high16 v69, 0x3f800000    # 1.0f

    move-object/from16 v0, v53

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 905
    .local v53, "numTopParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, v53

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 908
    new-instance v52, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v68, v0

    add-int/lit8 v68, v68, -0x14

    const/high16 v69, 0x3f800000    # 1.0f

    move-object/from16 v0, v52

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 909
    .local v52, "numParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, v52

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 910
    new-instance v54, Landroid/widget/Button;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 911
    .local v54, "one":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 912
    const/16 v67, 0x11

    move-object/from16 v0, v54

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 913
    const-string v67, "1"

    move-object/from16 v0, v54

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 914
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v54

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 915
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v54

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 916
    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    move-object/from16 v0, v29

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 919
    new-instance v65, Landroid/widget/Button;

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 920
    .local v65, "two":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 921
    const/16 v67, 0x11

    move-object/from16 v0, v65

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 922
    const-string v67, "2"

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 923
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v65

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 924
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v65

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 925
    move-object/from16 v0, v65

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    move-object/from16 v0, v29

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 928
    new-instance v61, Landroid/widget/Button;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 929
    .local v61, "three":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 930
    const/16 v67, 0x11

    move-object/from16 v0, v61

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 931
    const-string v67, "3"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 932
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v61

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 933
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v61

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 934
    move-object/from16 v0, v61

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    move-object/from16 v0, v29

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 937
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 938
    .local v30, "buttonRow2":Landroid/widget/LinearLayout;
    const/16 v67, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 939
    const/16 v67, 0x11

    move-object/from16 v0, v30

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 940
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 941
    move-object/from16 v0, v46

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 943
    new-instance v36, Landroid/widget/Button;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 944
    .local v36, "four":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 945
    const/16 v67, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 946
    const-string v67, "4"

    move-object/from16 v0, v36

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 947
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v36

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 948
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v36

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 949
    move-object/from16 v0, v36

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 952
    new-instance v35, Landroid/widget/Button;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 953
    .local v35, "five":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 954
    const/16 v67, 0x11

    move-object/from16 v0, v35

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 955
    const-string v67, "5"

    move-object/from16 v0, v35

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 956
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v35

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 957
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v35

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 958
    move-object/from16 v0, v35

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 961
    new-instance v59, Landroid/widget/Button;

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 962
    .local v59, "six":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 963
    const/16 v67, 0x11

    move-object/from16 v0, v59

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 964
    const-string v67, "6"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 965
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v59

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 966
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v59

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 967
    move-object/from16 v0, v59

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    move-object/from16 v0, v30

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 970
    new-instance v31, Landroid/widget/LinearLayout;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 971
    .local v31, "buttonRow3":Landroid/widget/LinearLayout;
    const/16 v67, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 972
    const/16 v67, 0x11

    move-object/from16 v0, v31

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 973
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 976
    new-instance v58, Landroid/widget/Button;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 977
    .local v58, "seven":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 978
    const/16 v67, 0x11

    move-object/from16 v0, v58

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 979
    const-string v67, "7"

    move-object/from16 v0, v58

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 980
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v58

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 981
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v58

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 982
    move-object/from16 v0, v58

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 985
    new-instance v34, Landroid/widget/Button;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 986
    .local v34, "eight":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 987
    const/16 v67, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 988
    const-string v67, "8"

    move-object/from16 v0, v34

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 989
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v34

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 990
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v34

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 991
    move-object/from16 v0, v34

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 994
    new-instance v50, Landroid/widget/Button;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 995
    .local v50, "nine":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    const/16 v67, 0x11

    move-object/from16 v0, v50

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 997
    const-string v67, "9"

    move-object/from16 v0, v50

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 998
    const/high16 v67, 0x41f00000    # 30.0f

    move-object/from16 v0, v50

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 999
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v50

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1000
    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    move-object/from16 v0, v31

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1003
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1004
    .local v32, "buttonRow4":Landroid/widget/LinearLayout;
    const/16 v67, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1005
    const/16 v67, 0x11

    move-object/from16 v0, v32

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1006
    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1009
    new-instance v51, Landroid/widget/Button;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1010
    .local v51, "none":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    invoke-virtual/range {v51 .. v52}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1014
    new-instance v66, Landroid/widget/Button;

    move-object/from16 v0, v66

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1015
    .local v66, "zero":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    const/16 v67, 0x11

    invoke-virtual/range {v66 .. v67}, Landroid/widget/Button;->setGravity(I)V

    .line 1017
    const-string v67, "0"

    invoke-virtual/range {v66 .. v67}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    const/high16 v67, 0x41f00000    # 30.0f

    invoke-virtual/range {v66 .. v67}, Landroid/widget/Button;->setTextSize(F)V

    .line 1019
    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    invoke-virtual/range {v66 .. v67}, Landroid/widget/Button;->setTextColor(I)V

    .line 1020
    move-object/from16 v0, v66

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    move-object/from16 v0, v32

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1023
    new-instance v67, Landroid/widget/Button;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v67, v0

    const/16 v68, 0x11

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setGravity(I)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v67, v0

    const-string v68, "\ucde8\uc18c"

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v67, v0

    const/high16 v68, 0x41a00000    # 20.0f

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setTextSize(F)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v67, v0

    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setTextColor(I)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1032
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/PwdActivity;->setContentView(Landroid/view/View;)V

    .line 1034
    new-instance v67, Lcom/feelingk/iap/PwdActivity$12;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$12;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    new-instance v67, Lcom/feelingk/iap/PwdActivity$13;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$13;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    new-instance v67, Lcom/feelingk/iap/PwdActivity$14;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$14;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1076
    new-instance v67, Lcom/feelingk/iap/PwdActivity$15;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$15;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    new-instance v67, Lcom/feelingk/iap/PwdActivity$16;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$16;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    new-instance v67, Lcom/feelingk/iap/PwdActivity$17;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$17;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    new-instance v67, Lcom/feelingk/iap/PwdActivity$18;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$18;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v58

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    new-instance v67, Lcom/feelingk/iap/PwdActivity$19;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$19;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    new-instance v67, Lcom/feelingk/iap/PwdActivity$20;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$20;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v50

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    new-instance v67, Lcom/feelingk/iap/PwdActivity$21;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$21;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v66 .. v67}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v67, v0

    new-instance v68, Lcom/feelingk/iap/PwdActivity$22;

    move-object/from16 v0, v68

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$22;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    return-void

    .line 747
    .end local v6    # "btn_pad_nor_delete":Ljava/io/InputStream;
    .end local v7    # "btn_pad_nor_eight":Ljava/io/InputStream;
    .end local v8    # "btn_pad_nor_five":Ljava/io/InputStream;
    .end local v9    # "btn_pad_nor_four":Ljava/io/InputStream;
    .end local v10    # "btn_pad_nor_nine":Ljava/io/InputStream;
    .end local v11    # "btn_pad_nor_none":Ljava/io/InputStream;
    .end local v12    # "btn_pad_nor_one":Ljava/io/InputStream;
    .end local v13    # "btn_pad_nor_seven":Ljava/io/InputStream;
    .end local v14    # "btn_pad_nor_six":Ljava/io/InputStream;
    .end local v15    # "btn_pad_nor_three":Ljava/io/InputStream;
    .end local v16    # "btn_pad_nor_two":Ljava/io/InputStream;
    .end local v17    # "btn_pad_nor_zero":Ljava/io/InputStream;
    .end local v18    # "btn_pad_sel_delete":Ljava/io/InputStream;
    .end local v19    # "btn_pad_sel_eight":Ljava/io/InputStream;
    .end local v20    # "btn_pad_sel_five":Ljava/io/InputStream;
    .end local v21    # "btn_pad_sel_four":Ljava/io/InputStream;
    .end local v22    # "btn_pad_sel_nine":Ljava/io/InputStream;
    .end local v23    # "btn_pad_sel_one":Ljava/io/InputStream;
    .end local v24    # "btn_pad_sel_seven":Ljava/io/InputStream;
    .end local v25    # "btn_pad_sel_six":Ljava/io/InputStream;
    .end local v26    # "btn_pad_sel_three":Ljava/io/InputStream;
    .end local v27    # "btn_pad_sel_two":Ljava/io/InputStream;
    .end local v28    # "btn_pad_sel_zero":Ljava/io/InputStream;
    .end local v29    # "buttonRow1":Landroid/widget/LinearLayout;
    .end local v30    # "buttonRow2":Landroid/widget/LinearLayout;
    .end local v31    # "buttonRow3":Landroid/widget/LinearLayout;
    .end local v32    # "buttonRow4":Landroid/widget/LinearLayout;
    .end local v33    # "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "eight":Landroid/widget/Button;
    .end local v35    # "five":Landroid/widget/Button;
    .end local v36    # "four":Landroid/widget/Button;
    .end local v37    # "inputBox1":Landroid/widget/LinearLayout;
    .end local v38    # "inputBox2":Landroid/widget/LinearLayout;
    .end local v39    # "inputBox3":Landroid/widget/LinearLayout;
    .end local v40    # "inputBox4":Landroid/widget/LinearLayout;
    .end local v41    # "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v46    # "keyPad":Landroid/widget/LinearLayout;
    .end local v47    # "keyPadParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v50    # "nine":Landroid/widget/Button;
    .end local v51    # "none":Landroid/widget/Button;
    .end local v52    # "numParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v53    # "numTopParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v54    # "one":Landroid/widget/Button;
    .end local v58    # "seven":Landroid/widget/Button;
    .end local v59    # "six":Landroid/widget/Button;
    .end local v60    # "statePressed":I
    .end local v61    # "three":Landroid/widget/Button;
    .end local v65    # "two":Landroid/widget/Button;
    .end local v66    # "zero":Landroid/widget/Button;
    :cond_0
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v67, 0x3c

    const/16 v68, 0x37

    move-object/from16 v0, v41

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 750
    .restart local v41    # "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v42, Landroid/widget/LinearLayout$LayoutParams;

    .end local v42    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0x3c

    const/16 v68, 0x37

    move-object/from16 v0, v42

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 752
    .restart local v42    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v67, 0xf

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method
