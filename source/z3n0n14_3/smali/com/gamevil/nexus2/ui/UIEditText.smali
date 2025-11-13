.class public Lcom/gamevil/nexus2/ui/UIEditText;
.super Landroid/widget/EditText;
.source "UIEditText.java"


# static fields
.field public static nEditTextBackEventTime:J

.field public static nLengthMaxText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/gamevil/nexus2/ui/UIEditText;->nLengthMaxText:I

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gamevil/nexus2/ui/UIEditText;->nEditTextBackEventTime:J

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 48
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditText;->setGravity(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditText;->setGravity(I)V

    .line 59
    return-void
.end method

.method private checkFormValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v1, "^[a-zA-Z0-9]*$"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 187
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .prologue
    .line 70
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    const-string v1, ""

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public closeInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    const/16 v0, 0x63

    invoke-static {v0, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 163
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCommitCompletion"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onDetachedFromWindow"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onEditorAction(I)V
    .locals 4
    .param p1, "actionCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 106
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DEBUG UIEDITTEXT] onEditorAction ----- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DEBUG UIEDITTEXT] onEditorAction IME_ACTION_DONE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DEBUG UIEDITTEXT] this.getText().toString()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DEBUG UIEDITTEXT] NexusGLActivity.uiViewControll.textInputed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v2, v2, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    const/16 v0, 0x63

    invoke-static {v0, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 117
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 4

    .prologue
    .line 78
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[DEBUG UIEDITTEXT] onEndBatchEdit"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 80
    .local v1, "length":I
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    .line 84
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v2, v2, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/gamevil/nexus2/ui/UIEditText;->checkFormValid(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, "bEng":Z
    if-eqz v0, :cond_0

    .line 86
    sget v2, Lcom/gamevil/nexus2/ui/UIEditText;->nLengthMaxText:I

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/ui/UIEditText;->setTextLength(I)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    sget v2, Lcom/gamevil/nexus2/ui/UIEditText;->nLengthMaxText:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/ui/UIEditText;->setTextLength(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x0

    .line 123
    const-string v0, "#Java#"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### onKeyDown #### code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ## KeyEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 131
    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 133
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 145
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 135
    :cond_2
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 137
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    goto :goto_0

    .line 139
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 142
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 143
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    sput-wide v0, Lcom/gamevil/nexus2/ui/UIEditText;->nEditTextBackEventTime:J

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v0, "#########"

    const-string v1, "######## key down IME ########"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 154
    const-string v0, "#########"

    const-string v1, "######## BACK ########"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v0, 0x63

    invoke-static {v0, v2, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setText()V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setText ----- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v2, v2, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTextLength(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 179
    return-void
.end method

.method public showInput()V
    .locals 3

    .prologue
    .line 168
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 169
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 170
    return-void
.end method
