.class Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;
.super Ljava/lang/Object;
.source "DRMLicensing.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArmServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "boundService"    # Landroid/os/IBinder;

    .prologue
    .line 329
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-static {v2}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->access$1(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)Lcom/skt/arm/aidl/IArmService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-static {p2}, Lcom/skt/arm/aidl/IArmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/skt/arm/aidl/IArmService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->access$2(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;Lcom/skt/arm/aidl/IArmService;)V

    .line 334
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-static {v2}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->access$1(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)Lcom/skt/arm/aidl/IArmService;

    move-result-object v2

    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getSktAID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/skt/arm/aidl/IArmService;->executeArm(Ljava/lang/String;)I

    move-result v1

    .line 336
    .local v1, "res":I
    packed-switch v1, :pswitch_data_0

    .line 342
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-virtual {v2, v1}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-static {v2}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->access$5(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    .line 352
    .end local v1    # "res":I
    :goto_1
    return-void

    .line 338
    .restart local v1    # "res":I
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-static {v2}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->access$3(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    .line 339
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->access$4(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 345
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-static {v2}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->access$5(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    goto :goto_1

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 358
    return-void
.end method
