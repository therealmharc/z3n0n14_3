.class Lcom/gamevil/nexus2/Natives$30;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->startPurchase(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$n:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/gamevil/nexus2/Natives$30;->val$n:I

    .line 3376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3450
    const-string v0, ""

    .line 3452
    .local v0, "_PID":Ljava/lang/String;
    iget v1, p0, Lcom/gamevil/nexus2/Natives$30;->val$n:I

    packed-switch v1, :pswitch_data_0

    .line 3471
    :goto_0
    iget v1, p0, Lcom/gamevil/nexus2/Natives$30;->val$n:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/gamevil/nexus2/Natives;->access$1(ILjava/lang/String;[B)V

    .line 3475
    return-void

    .line 3455
    :pswitch_0
    const-string v0, "zeno3_zen_3000"

    .line 3456
    goto :goto_0

    .line 3458
    :pswitch_1
    const-string v0, "zeno3_zen_9900"

    .line 3459
    goto :goto_0

    .line 3461
    :pswitch_2
    const-string v0, "zeno3_zen_17250"

    .line 3462
    goto :goto_0

    .line 3464
    :pswitch_3
    const-string v0, "zeno3_zen_38400"

    .line 3465
    goto :goto_0

    .line 3467
    :pswitch_4
    const-string v0, "zeno3_zen_128700"

    goto :goto_0

    .line 3452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
