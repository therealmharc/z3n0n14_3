.class public Lcom/gamevil/nexus2/ui/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/nexus2/ui/EventQueue$EventItem;
    }
.end annotation


# instance fields
.field protected m_Capacity:I

.field protected m_Front:I

.field protected m_ItemQueue:[Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

.field protected m_MoveCount:I

.field protected m_MoveEventClip:I

.field protected m_PressCount:I

.field protected m_Rear:I


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "nSize"    # I
    .param p2, "nMoveEventClip"    # I

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v1, Lcom/gamevil/nexus2/ui/EventQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "### EventQueue(int nSize, int nMoveEventClip)  ###"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    .line 49
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    .line 50
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Capacity:I

    .line 51
    new-array v1, p1, [Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

    iput-object v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_ItemQueue:[Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

    .line 52
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    .line 53
    iput p2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveEventClip:I

    .line 54
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 58
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_ItemQueue:[Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

    new-instance v2, Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/ui/EventQueue$EventItem;-><init>(Lcom/gamevil/nexus2/ui/EventQueue;)V

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ClearEvent()V
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    iput v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    .line 64
    return-void
.end method

.method public Dequeue()Lcom/gamevil/nexus2/ui/EventQueue$EventItem;
    .locals 3

    .prologue
    .line 141
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    .line 143
    .local v0, "position":I
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    iget v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Capacity:I

    if-ne v1, v2, :cond_0

    .line 144
    const/4 v1, 0x0

    iput v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_ItemQueue:[Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

    aget-object v1, v1, v0

    return-object v1

    .line 146
    :cond_0
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    goto :goto_0
.end method

.method public Enqueue(IIII)V
    .locals 7
    .param p1, "nEvent"    # I
    .param p2, "nParam1"    # I
    .param p3, "nParam2"    # I
    .param p4, "nPointerID"    # I

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "position":I
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    iget v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Capacity:I

    if-ne v1, v2, :cond_4

    .line 72
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    .line 73
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    .line 75
    if-ne p1, v6, :cond_2

    .line 77
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    .line 79
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    iget v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveEventClip:I

    if-ge v1, v2, :cond_0

    .line 81
    iput v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    .line 137
    :goto_0
    return-void

    .line 86
    :cond_0
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    .line 102
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_ItemQueue:[Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/gamevil/nexus2/ui/EventQueue$EventItem;->AttachEvent(IIII)V

    goto :goto_0

    .line 88
    :cond_2
    if-ne p1, v5, :cond_1

    .line 90
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    .line 92
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    if-ge v1, v4, :cond_3

    .line 94
    iput v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    goto :goto_0

    .line 99
    :cond_3
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    goto :goto_1

    .line 106
    :cond_4
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    .end local v0    # "position":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    .line 108
    .restart local v0    # "position":I
    if-ne p1, v6, :cond_7

    .line 110
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    .line 112
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    iget v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveEventClip:I

    if-ge v1, v2, :cond_5

    .line 114
    iput v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    goto :goto_0

    .line 119
    :cond_5
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    .line 135
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_ItemQueue:[Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/gamevil/nexus2/ui/EventQueue$EventItem;->AttachEvent(IIII)V

    goto :goto_0

    .line 121
    :cond_7
    if-ne p1, v5, :cond_6

    .line 123
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    .line 125
    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    if-ge v1, v4, :cond_8

    .line 127
    iput v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    goto :goto_0

    .line 132
    :cond_8
    iput v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    goto :goto_2
.end method

.method public FullEnqueue(IIII)V
    .locals 3
    .param p1, "nEvent"    # I
    .param p2, "nParam1"    # I
    .param p3, "nParam2"    # I
    .param p4, "nPointerID"    # I

    .prologue
    const/4 v2, 0x0

    .line 166
    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    .line 168
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    .line 170
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveEventClip:I

    if-ge v0, v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iput v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_MoveCount:I

    .line 191
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_ItemQueue:[Lcom/gamevil/nexus2/ui/EventQueue$EventItem;

    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gamevil/nexus2/ui/EventQueue$EventItem;->AttachEvent(IIII)V

    goto :goto_0

    .line 178
    :cond_3
    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 180
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    .line 182
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 188
    iput v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_PressCount:I

    goto :goto_1
.end method

.method public IsEmpty()Z
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    iget v1, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsFull()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    iget v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    iget v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    if-ge v2, v3, :cond_2

    .line 159
    iget v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    iget v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Capacity:I

    if-ne v2, v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_2
    iget v2, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Rear:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/gamevil/nexus2/ui/EventQueue;->m_Front:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
