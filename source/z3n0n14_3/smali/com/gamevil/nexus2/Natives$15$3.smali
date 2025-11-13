.class Lcom/gamevil/nexus2/Natives$15$3;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamevil/nexus2/Natives$15;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/Natives$15;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/Natives$15$3;->this$1:Lcom/gamevil/nexus2/Natives$15;

    .line 2315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2326
    const/4 v0, 0x2

    const/16 v1, 0x3c

    const-string v2, "$4.99"

    invoke-static {v0, v1, v2}, Lcom/gamevil/nexus2/Natives;->openPurchasePopup(IILjava/lang/String;)V

    .line 2340
    const/4 v0, 0x1

    return v0
.end method
