.class public Lcom/gamevil/nexus2/ui/UIEditNumber;
.super Landroid/widget/EditText;
.source "UIEditNumber.java"


# static fields
.field public static MAX_NUMBER_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x5

    sput v0, Lcom/gamevil/nexus2/ui/UIEditNumber;->MAX_NUMBER_LENGTH:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 46
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setGravity(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setGravity(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 83
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .param p1, "actionCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 100
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    .line 101
    const/16 v0, 0x26ac

    invoke-static {v0, v2, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 105
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    .line 73
    sget v0, Lcom/gamevil/nexus2/ui/UIEditNumber;->MAX_NUMBER_LENGTH:I

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setTextLength(I)V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 111
    const/4 v0, 0x0

    .line 115
    .local v0, "test01":I
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    .line 117
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v2, v2, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const/16 v2, 0x43

    if-eq p1, v2, :cond_1

    .line 126
    :cond_0
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v2, v2, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v2, 0x17

    if-ne p1, v2, :cond_2

    .line 132
    const/16 v2, 0x26ac

    invoke-static {v2, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 140
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 135
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v0, "#########"

    const-string v1, "######## key down IME ########"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 155
    const-string v0, "#########"

    const-string v1, "######## BACK ########"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/16 v0, 0x26ac

    invoke-static {v0, v2, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 159
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setTextLength(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setFilters([Landroid/text/InputFilter;)V

    .line 146
    return-void
.end method
