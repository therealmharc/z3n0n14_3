.class public Lcom/gamevil/nexus2/NexusGLActivity;
.super Landroid/app/Activity;
.source "NexusGLActivity.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "MyDeviceId"

.field public static displayHeight:I

.field public static displayWidth:I

.field public static isLargeScreen:Z

.field public static myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

.field public static pID:Ljava/lang/String;

.field public static pIdIndex:I

.field public static pName:Ljava/lang/String;

.field public static uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;


# instance fields
.field public glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

.field public isNoDeviceID:Z

.field public mockDeviceID:Ljava/lang/String;

.field public packageInfo:Ljava/lang/String;

.field random:Ljava/util/Random;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    const-string v0, "gameDSO"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 418
    sput-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->pID:Ljava/lang/String;

    .line 419
    const/4 v0, -0x1

    sput v0, Lcom/gamevil/nexus2/NexusGLActivity;->pIdIndex:I

    .line 420
    sput-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->pName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->version:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->isNoDeviceID:Z

    .line 92
    return-void
.end method

.method public static AnalyticsTrackPageView(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string v0, "#FlurryAgent#"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "########## "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ########"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 338
    return-void
.end method

.method private checkDeviceID()V
    .locals 8

    .prologue
    .line 121
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v0, "deviceID":Ljava/lang/String;
    if-nez v0, :cond_1

    goto :cond_1

    :catch_0
    const-string v0, ""

    .line 128
    const-string v6, "MyDeviceId"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 129
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v6, "myDeviceID"

    const-string v7, "NONE"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mockDeviceID:Ljava/lang/String;

    .line 130
    iget-object v6, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mockDeviceID:Ljava/lang/String;

    const-string v7, "NONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 134
    .local v4, "time":J
    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->random(I)I

    move-result v2

    .line 135
    .local v2, "randomID":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mockDeviceID:Ljava/lang/String;

    .line 139
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 140
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "myDeviceID"

    iget-object v7, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mockDeviceID:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "randomID":I
    .end local v4    # "time":J
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/gamevil/nexus2/NexusGLActivity;->isNoDeviceID:Z

    .line 153
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 298
    .local v0, "str":Ljava/lang/String;
    const-class v2, Lcom/gamevil/nexus2/Natives;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "######### getPhoneNumber() ########"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :cond_dev_id

    :catch_1
    const-string v0, ""

    :cond_dev_id
    .line 301
    const-string v2, "#deviceID#"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "########## A : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ########"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eqz v0, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    :cond_0
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 306
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v2, "#deviceID#"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "########## B : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ########"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v2, "#deviceID#"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "########## B 2 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ########"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 316
    :cond_2
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v2, "#deviceID#"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "########## C : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ########"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_3
    const-string v2, "#deviceID#"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "########## C 2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ########"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v2, "#deviceID#"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "########## D : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ########"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-object v0
.end method


# virtual methods
.method public finishApp()V
    .locals 0

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finish()V

    .line 358
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->setContentView(I)V

    .line 160
    sput-object p0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 167
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gamevil/nexus2/NexusGLSurfaceView;

    iput-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    .line 168
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    new-instance v3, Lcom/gamevil/nexus2/NexusGLRenderer;

    invoke-direct {v3}, Lcom/gamevil/nexus2/NexusGLRenderer;-><init>()V

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->setRenderer(Lcom/gamevil/nexus2/NexusGLSurfaceView$Renderer;)V

    .line 170
    const v2, 0x7f070018

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 171
    .local v1, "textInput":Landroid/widget/EditText;
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 173
    const v2, 0x7f070019

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 174
    .local v0, "numInput":Landroid/widget/EditText;
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 178
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->checkDeviceID()V

    .line 181
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopAllSound()V

    .line 236
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->releaseAll()V

    .line 238
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->NativeDestroyClet()V

    .line 240
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onDetachedFromWindow()V

    .line 242
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/ui/UIControllerView;->releaseAll()V

    .line 245
    sput-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->releaseAll()V

    .line 251
    iput-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    .line 253
    :cond_1
    sput-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 254
    iput-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->version:Ljava/lang/String;

    .line 264
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 265
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 195
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopAllSound()V

    .line 196
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onPause()V

    .line 201
    const/16 v0, 0x63

    invoke-static {v0, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 202
    const/16 v0, 0x26ac

    invoke-static {v0, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    const-string v0, "###"

    const-string v1, "<<//////// onResume ////////>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onResume()V

    .line 221
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->InitializeJNIGlobalRef()V

    .line 222
    return-void
.end method

.method public openMarketSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "_query"    # Ljava/lang/String;

    .prologue
    .line 345
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    .line 353
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    goto :goto_0

    .line 350
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catchall_0
    move-exception v1

    .line 351
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    .line 352
    throw v1
.end method

.method random(I)I
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->random:Ljava/util/Random;

    .line 115
    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p1

    return v0
.end method

.method public requestPurchaceIAP()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method
