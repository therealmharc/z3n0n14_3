.class public Lcom/gamevil/nexus2/ui/UIEditNumber;
.super Landroid/widget/EditText;
.source "UIEditNumber.java"


# static fields
.field public static nEditNumberBackEventTime:J

.field public static nLengthMaxNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/gamevil/nexus2/ui/UIEditNumber;->nLengthMaxNumber:I

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gamevil/nexus2/ui/UIEditNumber;->nEditNumberBackEventTime:J

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 49
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setGravity(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setGravity(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .prologue
    .line 65
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setText(Ljava/lang/CharSequence;)V

    .line 66
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    const-string v1, ""

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->numberInputed:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[DEBUG UIEDITNUMBER] onCommitCompletion"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[DEBUG UIEDITNUMBER] onDetachedFromWindow"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onEditorAction(I)V
    .locals 4
    .param p1, "actionCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DEBUG UIEDITNUMBER] onEditorAction ----- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DEBUG UIEDITNUMBER] onEditorAction IME_ACTION_DONE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->numberInputed:Ljava/lang/String;

    .line 104
    const/16 v0, 0x33

    invoke-static {v0, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 107
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[DEBUG UIEDITNUMBER] onEndBatchEdit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->numberInputed:Ljava/lang/String;

    .line 77
    sget v0, Lcom/gamevil/nexus2/ui/UIEditNumber;->nLengthMaxNumber:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setTextLength(I)V

    .line 78
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x0

    .line 112
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

    .line 115
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 120
    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 122
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 134
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 124
    :cond_2
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 126
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    goto :goto_0

    .line 128
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 131
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 132
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    sput-wide v0, Lcom/gamevil/nexus2/ui/UIEditNumber;->nEditNumberBackEventTime:J

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 144
    const-string v0, "#########"

    const-string v1, "######## key down IME ########"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 148
    const-string v0, "#########"

    const-string v1, "######## BACK ########"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/16 v0, 0x63

    invoke-static {v0, v2, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 152
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setTextLength(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setFilters([Landroid/text/InputFilter;)V

    .line 140
    return-void
.end method
