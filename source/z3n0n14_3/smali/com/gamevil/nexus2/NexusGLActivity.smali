.class public Lcom/gamevil/nexus2/NexusGLActivity;
.super Landroid/app/Activity;
.source "NexusGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;
    }
.end annotation


# static fields
.field private static final HANDLE_MESSAGE_TW:I = 0x14

.field private static final MSG_AUTH_EXECPTION_BLOCK:I = 0xa

.field private static final MSG_AUTH_EXECPTION_ERROR:I = 0xc

.field private static final MSG_AUTH_EXECPTION_PASS:I = 0xb

.field private static final MSG_DOWNLOAD_FAILED:I = 0x1

.field private static final MSG_DOWNLOAD_SHOW:I = 0x2

.field private static final MSG_DOWNLOAD_START:I = 0x3

.field private static final MSG_DOWNLOAD_SUCCEEDED:I = 0x0

.field private static final MSG_REPORT_C2DM_MESSAGE:I = 0x33

.field private static final MSG_REPORT_C2DM_REGISTERED:I = 0x32

.field private static final MSG_REPORT_C2DM_REGISTER_ID_UPLOAD_COMPLET:I = 0x34

.field private static final MSG_REPORT_PROGRESS:I = 0x4

.field private static final MSG_REPORT_UNZIPING:I = 0x5

.field private static final PREFS_NAME:Ljava/lang/String; = "MyDeviceId"

.field public static beforePage:Ljava/lang/String;

.field public static displayHeight:I

.field public static displayWidth:I

.field public static gameScreenHeight:I

.field public static gameScreenWidth:I

.field public static isLargeScreen:Z

.field public static mPause:Z

.field public static m_timeStemp:I

.field public static m_timeout:I

.field public static m_timerIndex:I

.field public static myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

.field public static pID:Ljava/lang/String;

.field public static pIdIndex:I

.field public static pName:Ljava/lang/String;

.field public static task:Lcom/gamevil/nexus2/NativesAsyncTask;

.field public static tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field public static uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;


# instance fields
.field public glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

.field private handler:Landroid/os/Handler;

.field public imgDefault:Landroid/widget/ImageView;

.field public imgTitle:Landroid/widget/ImageView;

.field public isMessageCome:Z

.field public isNoDeviceID:Z

.field private loadingBar:Landroid/widget/ProgressBar;

.field private final mHandler:Landroid/os/Handler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field public metrics:Landroid/util/DisplayMetrics;

.field public mockDeviceID:Ljava/lang/String;

.field public packageInfo:Ljava/lang/String;

.field random:Ljava/util/Random;

.field public txtVersion:Landroid/widget/TextView;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamevil/nexus2/NexusGLActivity;->mPause:Z

    .line 113
    const/16 v0, 0x190

    sput v0, Lcom/gamevil/nexus2/NexusGLActivity;->gameScreenWidth:I

    .line 114
    const/16 v0, 0xf0

    sput v0, Lcom/gamevil/nexus2/NexusGLActivity;->gameScreenHeight:I

    .line 621
    sget-boolean v0, Lcom/gamevil/nexus2/Natives;->isCocos2d:Z

    if-nez v0, :cond_0

    .line 623
    :try_start_0
    const-string v0, "gameDSO"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "NexusGLActivity"
    const-string v1, "Warning: Failed to load gameDSO library with text relocations. Some features may not work."
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    .line 676
    :cond_0
    sput-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->pID:Ljava/lang/String;

    .line 677
    const/4 v0, -0x1

    sput v0, Lcom/gamevil/nexus2/NexusGLActivity;->pIdIndex:I

    .line 678
    sput-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->pName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->version:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->isNoDeviceID:Z

    .line 491
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->handler:Landroid/os/Handler;

    .line 747
    new-instance v0, Lcom/gamevil/nexus2/NexusGLActivity$1;

    invoke-direct {v0, p0}, Lcom/gamevil/nexus2/NexusGLActivity$1;-><init>(Lcom/gamevil/nexus2/NexusGLActivity;)V

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method public static AnalyticsInitialize(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "_uaID"    # Ljava/lang/String;
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*************************************************** "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**\t\t\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**\t\t\tAnalyticsInitialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**\t\t\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*************************************************** "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 155
    if-nez p0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 159
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static AnalyticsTrackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "_action"    # Ljava/lang/String;
    .param p1, "_lable"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*************************************************** "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**\t\t\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**\t\t\tAnalyticsTrackEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**\t\t\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*************************************************** "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    if-eqz p1, :cond_0

    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    if-nez p0, :cond_2

    .line 203
    const-string p0, "Action"

    .line 205
    :cond_2
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "Event"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    goto :goto_0
.end method

.method public static AnalyticsTrackPageView(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*************************************************** "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**\t\t\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**\t\t\tAnalyticsTrackPageView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**\t\t\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*************************************************** "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    if-eqz p0, :cond_0

    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sput-object p0, Lcom/gamevil/nexus2/NexusGLActivity;->beforePage:Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 176
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static AnalyticsTrackStop()V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/nexus2/NexusGLActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 980
    invoke-direct {p0, p1}, Lcom/gamevil/nexus2/NexusGLActivity;->saveRegistrationId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/gamevil/nexus2/NexusGLActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/gamevil/nexus2/NexusGLActivity;->sendRegistraionID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/gamevil/nexus2/NexusGLActivity;Z)V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/gamevil/nexus2/NexusGLActivity;->setRegisrationIdSent(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/gamevil/nexus2/NexusGLActivity;)V
    .locals 0

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->registerC2DM()V

    return-void
.end method

.method private checkDeviceID()V
    .locals 8

    .prologue
    .line 1067
    :try_start_device
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_device
    .catch Ljava/lang/SecurityException; {:try_start_device .. :try_end_device} :catch_device
    .catch Ljava/lang/Exception; {:try_start_device .. :try_end_device} :catch_device

    goto :goto_device

    :catch_device
    const-string v6, "NexusGLActivity"
    const-string v7, "Warning: Unable to access device ID due to permission or API restrictions"
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v0, 0x0

    :goto_device

    .line 1068
    .local v0, "deviceID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1074
    const-string v6, "MyDeviceId"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1075
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v6, "myDeviceID"

    const-string v7, "NONE"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mockDeviceID:Ljava/lang/String;

    .line 1076
    iget-object v6, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mockDeviceID:Ljava/lang/String;

    const-string v7, "NONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1080
    .local v4, "time":J
    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->random(I)I

    move-result v2

    .line 1081
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

    .line 1085
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1086
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "myDeviceID"

    iget-object v7, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mockDeviceID:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1087
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1094
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "randomID":I
    .end local v4    # "time":J
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/gamevil/nexus2/NexusGLActivity;->isNoDeviceID:Z

    .line 1099
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 440
    .local v0, "str":Ljava/lang/String;
    const-class v2, Lcom/gamevil/nexus2/Natives;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "######### getPhoneNumber() ########"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :try_start_phonenumber
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_phonenumber
    .catch Ljava/lang/SecurityException; {:try_start_phonenumber .. :try_end_phonenumber} :catch_phonenumber
    .catch Ljava/lang/Exception; {:try_start_phonenumber .. :try_end_phonenumber} :catch_phonenumber

    goto :goto_phonenumber

    :catch_phonenumber
    const-string v2, "NexusGLActivity"
    const-string v3, "Warning: Unable to access device ID in getPhoneNumber"
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    const-string v0, ""

    :goto_phonenumber

    .line 443
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

    .line 445
    if-eqz v0, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    :cond_0
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 448
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 450
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

    .line 454
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

    .line 456
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 458
    :cond_2
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
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

    .line 464
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

    .line 468
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

    .line 470
    return-object v0
.end method

.method public static getSavedPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v2, "MyPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "phoneNumber"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isRegisrationIdSent()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1014
    const-string v1, "MyPrefsFile"

    invoke-virtual {p0, v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1015
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "regiSent"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private registerC2DM()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1047
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v0, "registrationIntent":Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1049
    const-string v1, "sender"

    const-string v2, "gamevil.push@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/NexusGLActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1053
    return-void
.end method

.method private saveRegistrationId(Ljava/lang/String;)V
    .locals 5
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 982
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 983
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|\tsaveRegistrationId\t "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|\t_id\t "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 986
    const-string v2, "MyPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 987
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 988
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "registrationId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 989
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 990
    return-void
.end method

.method private sendRegistraionID(Ljava/lang/String;)V
    .locals 7
    .param p1, "_registrationId"    # Ljava/lang/String;

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->loadRegistrationId()Ljava/lang/String;

    move-result-object v6

    .line 1021
    .local v6, "_regiId":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|C2DM sendRegistraionID\t\t "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1023
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|C2DM _regiId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1024
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1025
    if-eqz v6, :cond_0

    .line 1027
    new-instance v0, Lcom/gamevil/nexus2/xml/ProfileSender;

    invoke-direct {v0}, Lcom/gamevil/nexus2/xml/ProfileSender;-><init>()V

    .line 1028
    .local v0, "sendProfile":Lcom/gamevil/nexus2/xml/ProfileSender;
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v1}, Lcom/gamevil/nexus2/xml/NexusUtils;->getSavedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, p0, Lcom/gamevil/nexus2/NexusGLActivity;->version:Ljava/lang/String;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v1}, Lcom/gamevil/nexus2/xml/ProfileData;->isTermsAccepted(Landroid/content/Context;)I

    move-result v1

    int-to-byte v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gamevil/nexus2/xml/ProfileSender;->setProfileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 1029
    invoke-static {p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender;->setAdditionalC2dmInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/xml/ProfileSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1033
    .end local v0    # "sendProfile":Lcom/gamevil/nexus2/xml/ProfileSender;
    :cond_0
    return-void
.end method

.method private setRegisrationIdSent(Z)V
    .locals 4
    .param p1, "_isSent"    # Z

    .prologue
    .line 1006
    const-string v2, "MyPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1007
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1008
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "regiSent"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1009
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1010
    return-void
.end method

.method private unregisterC2DM()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v0, "unregIntent":Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/NexusGLActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1060
    return-void
.end method


# virtual methods
.method public OnAsyncTimerSet(II)V
    .locals 4
    .param p1, "timeOut"    # I
    .param p2, "timerIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 501
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-----------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "|OnAsyncTimerSet()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 503
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|timeOut = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 504
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|timerIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 505
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-----------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    if-eqz v0, :cond_0

    .line 508
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    iget v0, v0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    if-ne v0, p2, :cond_0

    .line 509
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    invoke-virtual {v0, v3}, Lcom/gamevil/nexus2/NativesAsyncTask;->cancel(Z)Z

    .line 512
    :cond_0
    sput p1, Lcom/gamevil/nexus2/NexusGLActivity;->m_timeout:I

    .line 513
    sput p2, Lcom/gamevil/nexus2/NexusGLActivity;->m_timerIndex:I

    .line 522
    new-instance v0, Lcom/gamevil/nexus2/NativesAsyncTask;

    invoke-direct {v0}, Lcom/gamevil/nexus2/NativesAsyncTask;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    .line 523
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->m_timeout:I

    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->m_timerIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/gamevil/nexus2/NativesAsyncTask;->setTimeOut(II)V

    .line 524
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NativesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 526
    return-void
.end method

.method public OnAsyncTimerSet(III)V
    .locals 3
    .param p1, "timeOut"    # I
    .param p2, "timerIndex"    # I
    .param p3, "timeStemp"    # I

    .prologue
    .line 531
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-----------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "|OnAsyncTimerSet()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|timeOut = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 534
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|timerIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|timeStemp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-----------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    iget v0, v0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    if-ne v0, p2, :cond_0

    .line 540
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->task:Lcom/gamevil/nexus2/NativesAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NativesAsyncTask;->cancel(Z)Z

    .line 543
    :cond_0
    sput p1, Lcom/gamevil/nexus2/NexusGLActivity;->m_timeout:I

    .line 544
    sput p2, Lcom/gamevil/nexus2/NexusGLActivity;->m_timerIndex:I

    .line 545
    sput p3, Lcom/gamevil/nexus2/NexusGLActivity;->m_timeStemp:I

    .line 546
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/NexusGLActivity$2;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/NexusGLActivity$2;-><init>(Lcom/gamevil/nexus2/NexusGLActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    return-void
.end method

.method public doTorchwood()V
    .locals 4

    .prologue
    .line 930
    new-instance v0, Lcom/gamevil/nexus2/xml/NexusTorchwood;

    invoke-direct {v0, p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;-><init>(Landroid/content/Context;)V

    .line 931
    .local v0, "torchwood":Lcom/gamevil/nexus2/xml/NexusTorchwood;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http://www.gamevil.com/plugin/cih/getXml.php"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "http://www.gamevil.com/plugin/cih/getTime.php"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 932
    return-void
.end method

.method public finishApp()V
    .locals 0

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finish()V

    .line 562
    return-void
.end method

.method public getGamevilLiveID()[B
    .locals 2

    .prologue
    .line 693
    const-string v0, "null"

    .line 694
    .local v0, "rtn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public getGamevilLivePW()[B
    .locals 2

    .prologue
    .line 699
    const-string v0, "null"

    .line 700
    .local v0, "rtn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public handleExceptionErrorMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 918
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 917
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleExceptionMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 906
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 905
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleExceptionPassMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 912
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 911
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleMessage()V
    .locals 3

    .prologue
    .line 923
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 925
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 924
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public hideDefaultLoading()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->imgDefault:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->imgDefault:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    :cond_0
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->loadingBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->loadingBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 584
    :cond_0
    return-void
.end method

.method public hideTitleComponent()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 608
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->imgTitle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->imgTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->txtVersion:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->txtVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    :cond_1
    return-void
.end method

.method public initializeC2dm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 964
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->loadRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "regiID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 967
    new-instance v1, Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;

    invoke-direct {v1, p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;-><init>(Lcom/gamevil/nexus2/NexusGLActivity;Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;)V

    .line 968
    .local v1, "registerTask":Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;
    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 977
    .end local v1    # "registerTask":Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->isRegisrationIdSent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 974
    invoke-direct {p0, v0}, Lcom/gamevil/nexus2/NexusGLActivity;->sendRegistraionID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isGamevilLiveLogined()I
    .locals 1

    .prologue
    .line 705
    const/4 v0, -0x1

    return v0
.end method

.method public loadRegistrationId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "rtn":Ljava/lang/String;
    const-string v2, "MyPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 996
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "registrationId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|\tloadRegistrationId\t "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|\t_id\t "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1001
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->setContentView(I)V

    .line 265
    sput-object p0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 269
    const v2, 0x7f080015

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gamevil/nexus2/NexusGLSurfaceView;

    iput-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    .line 270
    iget-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    new-instance v3, Lcom/gamevil/nexus2/NexusGLRenderer;

    invoke-direct {v3}, Lcom/gamevil/nexus2/NexusGLRenderer;-><init>()V

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->setRenderer(Lcom/gamevil/nexus2/NexusGLSurfaceView$Renderer;)V

    .line 272
    const v2, 0x7f080018

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 273
    .local v1, "textInput":Landroid/widget/EditText;
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 275
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 276
    .local v0, "numInput":Landroid/widget/EditText;
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 280
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->checkDeviceID()V

    .line 299
    invoke-static {p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->checkPhonNumber(Landroid/content/Context;)Ljava/lang/String;

    .line 301
    iput-boolean v4, p0, Lcom/gamevil/nexus2/NexusGLActivity;->isMessageCome:Z

    .line 303
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 369
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "|\t\tActivity onDestroy "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopAllSound()V

    .line 374
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->releaseAll()V

    .line 376
    sget-boolean v0, Lcom/gamevil/nexus2/Natives;->isCocos2d:Z

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->NativeDestroyClet()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onDetachedFromWindow()V

    .line 384
    :cond_1
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    if-eqz v0, :cond_2

    .line 386
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->releaseAll()V

    .line 387
    sput-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->releaseAll()V

    .line 393
    iput-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    .line 395
    :cond_3
    sput-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 396
    iput-object v2, p0, Lcom/gamevil/nexus2/NexusGLActivity;->version:Ljava/lang/String;

    .line 406
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 408
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 476
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "|\tNexusGLActivity onKeyDown\t "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->isMessageCome:Z

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finish()V

    .line 482
    const/4 v0, 0x1

    .line 485
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopAllSound()V

    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 318
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onPause()V

    .line 323
    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/xml/NexusUtils;->mThread:Lcom/gamevil/nexus2/xml/FileDownThread;

    if-eqz v0, :cond_1

    .line 324
    sget-object v0, Lcom/gamevil/nexus2/xml/NexusUtils;->mThread:Lcom/gamevil/nexus2/xml/FileDownThread;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/xml/FileDownThread;->pauseWork()V

    .line 325
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamevil/nexus2/NexusGLActivity;->mPause:Z

    .line 328
    const/16 v0, 0x63

    invoke-static {v0, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 329
    const/16 v0, 0x26ac

    invoke-static {v0, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 330
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 340
    const-string v0, "###"

    const-string v1, "<<//////// onResume ////////>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onResume()V

    .line 343
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->doTorchwood()V

    .line 345
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "||\t\tonResume -"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onResume()V

    .line 350
    :cond_0
    :try_start_initjni
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->InitializeJNIGlobalRef()V
    :try_end_initjni
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_initjni .. :try_end_initjni} :catch_initjni
    .catch Ljava/lang/Exception; {:try_start_initjni .. :try_end_initjni} :catch_initjni

    goto :goto_initjni

    :catch_initjni
    const-string v0, "NexusGLActivity"
    const-string v1, "Warning: InitializeJNIGlobalRef not available"
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_initjni
    .line 355
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamevil/nexus2/NexusGLActivity;->mPause:Z

    .line 359
    return-void
.end method

.method public openMarketSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "_query"    # Ljava/lang/String;

    .prologue
    .line 182
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

    .line 188
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    .line 190
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catchall_0
    move-exception v1

    .line 188
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    .line 189
    throw v1
.end method

.method random(I)I
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->random:Ljava/util/Random;

    .line 245
    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p1

    return v0
.end method

.method public reportC2dmReceived([Ljava/lang/String;)V
    .locals 3
    .param p1, "_c2dmMessge"    # [Ljava/lang/String;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 943
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 942
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public reportC2dmRegistered(Ljava/lang/String;)V
    .locals 3
    .param p1, "_registrationId"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 951
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 950
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 949
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public reportC2dmRegistrationIdUploadComplet()V
    .locals 3

    .prologue
    .line 956
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 958
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 957
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public reportFailure()V
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 885
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 884
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 886
    return-void
.end method

.method public reportProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 889
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 890
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 889
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 891
    return-void
.end method

.method public reportShowProgress(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 868
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 869
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 868
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 870
    return-void
.end method

.method public reportStart(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 874
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 875
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 874
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 876
    return-void
.end method

.method public reportSuccess()V
    .locals 3

    .prologue
    .line 879
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 880
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 879
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 881
    return-void
.end method

.method public reportUnziping()V
    .locals 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    .line 895
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 894
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 896
    return-void
.end method

.method public reqestGamevilLiveLogin()V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method public requestPurchaceIAP()V
    .locals 0

    .prologue
    .line 683
    return-void
.end method

.method public setImgDefault(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imgDefault"    # Landroid/widget/ImageView;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->imgDefault:Landroid/widget/ImageView;

    .line 234
    return-void
.end method

.method public setImgTitle(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imgTitle"    # Landroid/widget/ImageView;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->imgTitle:Landroid/widget/ImageView;

    .line 230
    return-void
.end method

.method public setLoagdingProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "_loadingBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 567
    return-void
.end method

.method public setNexusGLSurfaceView(Lcom/gamevil/nexus2/NexusGLSurfaceView;)V
    .locals 0
    .param p1, "_surfaceView"    # Lcom/gamevil/nexus2/NexusGLSurfaceView;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    .line 239
    return-void
.end method

.method public setVerionView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "_txtVersionView"    # Landroid/widget/TextView;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->txtVersion:Landroid/widget/TextView;

    .line 227
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusGLActivity;->version:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public showLoadingDialog()V
    .locals 2

    .prologue
    .line 571
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "showLoadingDialog3"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->loadingBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->loadingBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 576
    :cond_0
    return-void
.end method

.method public showTitleComponent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->imgTitle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->imgTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->txtVersion:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity;->txtVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    :cond_1
    return-void
.end method
