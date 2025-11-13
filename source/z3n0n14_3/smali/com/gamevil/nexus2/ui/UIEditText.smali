.class public Lcom/gamevil/nexus2/ui/UIEditText;
.super Landroid/widget/EditText;
.source "UIEditText.java"


# static fields
.field public static MAX_NUMBER_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/gamevil/nexus2/ui/UIEditText;->MAX_NUMBER_LENGTH:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 105
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .param p1, "actionCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 131
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 135
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 136
    const/16 v0, 0x63

    invoke-static {v0, v2, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 140
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 63
    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 66
    .local v0, "length":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xb0

    if-le v1, v2, :cond_1

    .line 70
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 73
    sget v1, Lcom/gamevil/nexus2/ui/UIEditText;->MAX_NUMBER_LENGTH:I

    if-lt v1, v3, :cond_0

    .line 75
    sget v1, Lcom/gamevil/nexus2/ui/UIEditText;->MAX_NUMBER_LENGTH:I

    add-int/lit8 v1, v1, -0x31

    invoke-virtual {p0, v1}, Lcom/gamevil/nexus2/ui/UIEditText;->setTextLength(I)V

    .line 99
    :goto_0
    return-void

    .line 79
    :cond_0
    sget v1, Lcom/gamevil/nexus2/ui/UIEditText;->MAX_NUMBER_LENGTH:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/gamevil/nexus2/ui/UIEditText;->setTextLength(I)V

    goto :goto_0

    .line 86
    :cond_1
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 89
    sget v1, Lcom/gamevil/nexus2/ui/UIEditText;->MAX_NUMBER_LENGTH:I

    if-lt v1, v3, :cond_2

    .line 91
    sget v1, Lcom/gamevil/nexus2/ui/UIEditText;->MAX_NUMBER_LENGTH:I

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {p0, v1}, Lcom/gamevil/nexus2/ui/UIEditText;->setTextLength(I)V

    goto :goto_0

    .line 95
    :cond_2
    sget v1, Lcom/gamevil/nexus2/ui/UIEditText;->MAX_NUMBER_LENGTH:I

    invoke-virtual {p0, v1}, Lcom/gamevil/nexus2/ui/UIEditText;->setTextLength(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x63

    const/4 v0, 0x0

    .line 146
    const-string v1, "#Java#"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#### onKeyDown #### code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ## KeyEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 151
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v1, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x43

    if-eq p1, v1, :cond_1

    .line 157
    :cond_0
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v1, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    .line 159
    invoke-static {v4, v0, v0, v0}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 177
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 164
    :cond_2
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v1, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x42

    if-ne p1, v1, :cond_3

    .line 168
    invoke-static {v4, v0, v0, v0}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    goto :goto_0

    .line 171
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v0, "#########"

    const-string v1, "######## key down IME ########"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 120
    const-string v0, "#########"

    const-string v1, "######## BACK ########"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/16 v0, 0x63

    invoke-static {v0, v2, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 124
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setTextLength(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 191
    return-void
.end method

.method public showInput()V
    .locals 3

    .prologue
    .line 184
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 185
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 186
    :cond_0
    return-void
.end method
