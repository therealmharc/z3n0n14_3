.class Lcom/gamevil/nexus2/Natives$27;
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
    iput p1, p0, Lcom/gamevil/nexus2/Natives$27;->val$n:I

    .line 3360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3363
    const-string v1, ""

    .line 3364
    .local v1, "_PID":Ljava/lang/String;
    const-string v0, ""

    .line 3365
    .local v0, "_ItemName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3367
    .local v2, "_itemSeq":I
    iget v3, p0, Lcom/gamevil/nexus2/Natives$27;->val$n:I

    packed-switch v3, :pswitch_data_0

    .line 3391
    :goto_0
    iget v3, p0, Lcom/gamevil/nexus2/Natives$27;->val$n:I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/gamevil/nexus2/Natives;->access$19(ILjava/lang/String;[B)V

    .line 3393
    return-void

    .line 3369
    :pswitch_0
    const/4 v2, 0x1

    const-string v1, "zeno3m_zen_10"

    const-string v0, "ZENMO3_10 ZEN"

    goto :goto_0

    .line 3370
    :pswitch_1
    const/4 v2, 0x2

    const-string v1, "zeno3m_zen_33"

    const-string v0, "ZENMO3_33 ZEN"

    goto :goto_0

    .line 3371
    :pswitch_2
    const/4 v2, 0x3

    const-string v1, "zeno3m_zen_60"

    const-string v0, "ZENMO3_60 ZEN"

    goto :goto_0

    .line 3372
    :pswitch_3
    const/4 v2, 0x4

    const-string v1, "zeno3m_zen_130"

    const-string v0, "ZENMO3_130 ZEN"

    goto :goto_0

    .line 3373
    :pswitch_4
    const/4 v2, 0x5

    const-string v1, "zeno3m_zen_435"

    const-string v0, "ZENMO3_435 ZEN"

    goto :goto_0

    .line 3374
    :pswitch_5
    const/4 v2, 0x6

    const-string v1, "zeno3m_zen_850"

    const-string v0, "ZENMO3_850 ZEN"

    goto :goto_0

    .line 3375
    :pswitch_6
    const/4 v2, 0x7

    const-string v1, "zeno3m_zen_3000"

    const-string v0, "ZENMO3_3000 ZEN"

    goto :goto_0

    .line 3367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
