.class public Lcom/gamevil/nexus2/xml/NexusXmlChecker;
.super Landroid/os/AsyncTask;
.source "NexusXmlChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALARM_CALLBACK_URL:Ljava/lang/String; = "alarm_callback_url"

.field private static final ALARM_MESSAGE:Ljava/lang/String; = "alarm_message"

.field private static final ALARM_REPEAT:Ljava/lang/String; = "alarm_repeat"

.field private static final ALARM_TITLE:Ljava/lang/String; = "alarm_title"

.field private static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field private static final APPID:Ljava/lang/String; = "appId"

.field private static final CALLBACK_URL:Ljava/lang/String; = "callback_url"

.field private static final CARRIER:Ljava/lang/String; = "profile_carrier"

.field private static final CURRENT_REPEATED:Ljava/lang/String; = "current_repeated"

.field private static final MAX_TIME_BLOCK:I = 0x15180

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NEWS_URL:Ljava/lang/String; = "newsBanner_url"

.field private static final PACKAGE:Ljava/lang/String; = "profile_package"

.field private static final START_TAG:Ljava/lang/String; = "profile"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final TYPE:Ljava/lang/String; = "profile_type"

.field private static final VERSION:Ljava/lang/String; = "profile_version"


# instance fields
.field private final ACTION_TYYPE_ALERT:Ljava/lang/String;

.field private final ACTION_TYYPE_NEWS:Ljava/lang/String;

.field private final ACTION_TYYPE_UPDATE:Ljava/lang/String;

.field private final CARRIER_GLOBAL:Ljava/lang/String;

.field private final CARRIER_IOS:Ljava/lang/String;

.field private final CARRIER_KTF:Ljava/lang/String;

.field private final CARRIER_LGT:Ljava/lang/String;

.field private final CARRIER_SKT:Ljava/lang/String;

.field private actionType:Ljava/lang/String;

.field private alarm_callback_url:Ljava/lang/String;

.field private alarm_message:Ljava/lang/String;

.field private alarm_repeat:I

.field private alarm_title:Ljava/lang/String;

.field private alarm_type:Ljava/lang/String;

.field private callbackUrl:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private currentVersion:Ljava/lang/String;

.field private current_alarm_repeated:I

.field private isNewVersion:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private message:Ljava/lang/String;

.field private newsBannerUrl:Ljava/lang/String;

.field private productID:Ljava/lang/String;

.field task:Lcom/gamevil/nexus2/xml/NewsViewTask;

.field private title:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64
    const-string v0, "NEWS"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_NEWS:Ljava/lang/String;

    .line 65
    const-string v0, "ALERT"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_ALERT:Ljava/lang/String;

    .line 66
    const-string v0, "UPDATE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_UPDATE:Ljava/lang/String;

    .line 68
    const-string v0, "SKT"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_SKT:Ljava/lang/String;

    .line 69
    const-string v0, "KTF"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_KTF:Ljava/lang/String;

    .line 70
    const-string v0, "LGT"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_LGT:Ljava/lang/String;

    .line 71
    const-string v0, "GLOBAL"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_GLOBAL:Ljava/lang/String;

    .line 72
    const-string v0, "IOS"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_IOS:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 118
    iput-boolean v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 119
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    .line 126
    iput v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    .line 127
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    .line 130
    iput v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->loadSavedData()V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64
    const-string v2, "NEWS"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_NEWS:Ljava/lang/String;

    .line 65
    const-string v2, "ALERT"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_ALERT:Ljava/lang/String;

    .line 66
    const-string v2, "UPDATE"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_UPDATE:Ljava/lang/String;

    .line 68
    const-string v2, "SKT"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_SKT:Ljava/lang/String;

    .line 69
    const-string v2, "KTF"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_KTF:Ljava/lang/String;

    .line 70
    const-string v2, "LGT"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_LGT:Ljava/lang/String;

    .line 71
    const-string v2, "GLOBAL"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_GLOBAL:Ljava/lang/String;

    .line 72
    const-string v2, "IOS"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_IOS:Ljava/lang/String;

    .line 94
    iput-boolean v4, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 147
    iput-boolean v4, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 148
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 149
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 150
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 152
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 154
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    .line 155
    const/4 v2, 0x1

    iput v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    .line 156
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    .line 158
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    .line 159
    iput v4, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    .line 161
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mHandler:Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    .line 163
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 164
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "1.0.0"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->loadSavedData()V

    .line 173
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private saveCurrentRepeated(I)V
    .locals 5
    .param p1, "_repeated"    # I

    .prologue
    .line 614
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveCurrentRepeated "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 616
    .local v1, "updateCheckData":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 617
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_repeated"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 618
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 619
    return-void
.end method


# virtual methods
.method public checkedProfileXML()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 578
    iget-object v5, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 579
    .local v4, "updateCheckData":Landroid/content/SharedPreferences;
    const-string v5, "profile_saveTime"

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 582
    .local v0, "saveTime":J
    cmp-long v5, v0, v7

    if-nez v5, :cond_0

    move v5, v6

    .line 592
    :goto_0
    return v5

    .line 584
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, v7, v0

    .line 587
    .local v2, "timeGap":J
    const-wide/32 v7, 0x5265c00

    cmp-long v5, v2, v7

    if-gez v5, :cond_1

    .line 590
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    .line 592
    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 35
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 244
    const/16 v32, 0x1

    aget-object v32, p1, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isXmlModified(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_0

    const-string v32, "DATA"

    .line 572
    :goto_0
    return-object v32

    .line 248
    :cond_0
    const/16 v20, 0x0

    .line 249
    .local v20, "isTitle":Z
    const/16 v18, 0x0

    .line 250
    .local v18, "isMessage":Z
    const/16 v16, 0x0

    .line 251
    .local v16, "isAppID":Z
    const/16 v19, 0x0

    .line 252
    .local v19, "isNewsUrl":Z
    const/16 v17, 0x0

    .line 254
    .local v17, "isCallbackUrl":Z
    const/4 v14, 0x0

    .line 255
    .local v14, "isAlarmType":Z
    const/4 v12, 0x0

    .line 256
    .local v12, "isAlarmRepeat":Z
    const/4 v13, 0x0

    .line 257
    .local v13, "isAlarmTitle":Z
    const/4 v11, 0x0

    .line 258
    .local v11, "isAlarmMessage":Z
    const/4 v10, 0x0

    .line 259
    .local v10, "isAlarmCallbackUrl":Z
    const/4 v15, 0x0

    .line 261
    .local v15, "isAlarmTypeChanged":Z
    const/16 v23, 0x0

    .line 263
    .local v23, "newRepeat":I
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v33, "@@@@@@@@ Start Parssig XML @@@@@@@"

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    check-cast v32, Landroid/app/Activity;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 267
    .local v29, "updateCheckData":Landroid/content/SharedPreferences;
    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 271
    .local v25, "prefEditor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    new-instance v30, Ljava/net/URL;

    const/16 v32, 0x0

    aget-object v32, p1, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 272
    .local v30, "xmlUrl":Ljava/net/URL;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 273
    .local v7, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 274
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v31

    .line 275
    .local v31, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual/range {v30 .. v30}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v32

    const-string v33, "euc-kr"

    invoke-interface/range {v31 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 280
    const/4 v9, 0x0

    .line 281
    .local v9, "idx":I
    const/16 v26, -0x1

    .line 282
    .local v26, "profileIdx":I
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 283
    .local v6, "eventType":I
    :goto_1
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v6, v0, :cond_1

    .line 567
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "idx":I
    .end local v26    # "profileIdx":I
    .end local v30    # "xmlUrl":Ljava/net/URL;
    .end local v31    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_2
    const-string v32, "profile_saveTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-wide/from16 v2, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 569
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 570
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v33, "@@@@@@@@ End Parssig XML @@@@@@@2"

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    const-string v32, "Data"

    goto :goto_0

    .line 285
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "idx":I
    .restart local v26    # "profileIdx":I
    .restart local v30    # "xmlUrl":Ljava/net/URL;
    .restart local v31    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    if-eqz v6, :cond_2

    .line 287
    const/16 v32, 0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_2

    .line 289
    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v6, v0, :cond_18

    .line 291
    :try_start_1
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "profile"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 293
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 295
    .local v4, "attCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-lt v8, v4, :cond_3

    .line 313
    const/4 v8, 0x0

    :goto_4
    if-lt v8, v4, :cond_5

    .line 322
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "========>>>>>>>> profileIdx : "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "========>>>>>>>> idx        : "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    move/from16 v0, v26

    if-ne v0, v9, :cond_2

    .line 327
    const/4 v8, 0x0

    :goto_5
    if-lt v8, v4, :cond_6

    .line 557
    .end local v4    # "attCount":I
    .end local v8    # "i":I
    :cond_2
    :goto_6
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1

    .line 297
    .restart local v4    # "attCount":I
    .restart local v8    # "i":I
    :cond_3
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "====>>>> xpp.getAttributeName(i) : "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "profile_package"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 300
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "====>>>> xpp.getAttributeValue(i) : "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v33, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v32, "====>>>> ((Activity)mContext).getPackageName() : "

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    check-cast v32, Landroid/app/Activity;

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 304
    .local v28, "tempStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    check-cast v32, Landroid/app/Activity;

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 307
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "====>>>> ?\ufffd\uae30 <<<<==== : "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    move/from16 v26, v9

    .line 295
    .end local v28    # "tempStr":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 315
    :cond_5
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "::"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "::"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 329
    :cond_6
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "profile_package"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 331
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 332
    .restart local v28    # "tempStr":Ljava/lang/String;
    const-string v32, "profile_package"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    .end local v28    # "tempStr":Ljava/lang/String;
    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 335
    :cond_8
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "profile_version"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 337
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 338
    .restart local v28    # "tempStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_a

    .line 341
    :cond_9
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 342
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v33, "+-------------------------------"

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v33, "|isNewVersion = true;\t\t "

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v33, "+-------------------------------"

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    :cond_a
    const-string v32, "profile_version"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 559
    .end local v4    # "attCount":I
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "i":I
    .end local v9    # "idx":I
    .end local v26    # "profileIdx":I
    .end local v28    # "tempStr":Ljava/lang/String;
    .end local v30    # "xmlUrl":Ljava/net/URL;
    .end local v31    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v5

    .line 561
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2

    .line 349
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "attCount":I
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "i":I
    .restart local v9    # "idx":I
    .restart local v26    # "profileIdx":I
    .restart local v30    # "xmlUrl":Ljava/net/URL;
    .restart local v31    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_2
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "profile_carrier"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 351
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 352
    .restart local v28    # "tempStr":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->carrier:Ljava/lang/String;

    .line 354
    const-string v32, "profile_carrier"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->carrier:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 562
    .end local v4    # "attCount":I
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "i":I
    .end local v9    # "idx":I
    .end local v26    # "profileIdx":I
    .end local v28    # "tempStr":Ljava/lang/String;
    .end local v30    # "xmlUrl":Ljava/net/URL;
    .end local v31    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v5

    .line 564
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 356
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "attCount":I
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "i":I
    .restart local v9    # "idx":I
    .restart local v26    # "profileIdx":I
    .restart local v30    # "xmlUrl":Ljava/net/URL;
    .restart local v31    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_c
    :try_start_3
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "profile_type"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 358
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 359
    .restart local v28    # "tempStr":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    .line 361
    const-string v32, "profile_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_7

    .line 363
    .end local v28    # "tempStr":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "appId"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 365
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 366
    .restart local v28    # "tempStr":Ljava/lang/String;
    const-string v32, "appId"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    goto/16 :goto_7

    .line 376
    .end local v4    # "attCount":I
    .end local v8    # "i":I
    .end local v28    # "tempStr":Ljava/lang/String;
    :cond_e
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "title"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 378
    const/16 v20, 0x1

    goto/16 :goto_6

    .line 380
    :cond_f
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "message"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 382
    const/16 v18, 0x1

    goto/16 :goto_6

    .line 384
    :cond_10
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "appId"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 386
    const/16 v16, 0x1

    goto/16 :goto_6

    .line 388
    :cond_11
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "newsBanner_url"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 390
    const/16 v19, 0x1

    goto/16 :goto_6

    .line 392
    :cond_12
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "callback_url"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 394
    const/16 v17, 0x1

    goto/16 :goto_6

    .line 396
    :cond_13
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "alarm_type"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 398
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 400
    :cond_14
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "alarm_repeat"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 402
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 404
    :cond_15
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "alarm_title"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 406
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 408
    :cond_16
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "alarm_message"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 410
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 412
    :cond_17
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "alarm_callback_url"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 414
    const/4 v10, 0x1

    goto/16 :goto_6

    .line 416
    :cond_18
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ne v6, v0, :cond_19

    .line 417
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "profile"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 419
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 421
    :cond_19
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ne v6, v0, :cond_2

    .line 422
    move/from16 v0, v26

    if-ne v0, v9, :cond_2

    .line 426
    if-eqz v20, :cond_1a

    .line 428
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 429
    const/16 v20, 0x0

    .line 430
    const-string v32, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    :cond_1a
    if-eqz v18, :cond_1b

    .line 436
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 437
    const/16 v18, 0x0

    .line 438
    const-string v32, "message"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    :cond_1b
    if-eqz v16, :cond_1c

    .line 444
    const/16 v16, 0x0

    .line 445
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 446
    const-string v32, "appId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 451
    :cond_1c
    if-eqz v19, :cond_1d

    .line 453
    const/16 v19, 0x0

    .line 454
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 455
    const-string v32, "newsBanner_url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : NewsBanner "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 459
    :cond_1d
    if-eqz v17, :cond_1e

    .line 461
    const/16 v17, 0x0

    .line 462
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 463
    const-string v32, "callback_url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : Callback Url "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    :cond_1e
    if-eqz v14, :cond_20

    .line 469
    const/4 v14, 0x0

    .line 470
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v21

    .line 473
    .local v21, "newAlartType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1f

    .line 475
    const/4 v15, 0x1

    .line 478
    :cond_1f
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    .line 479
    const-string v32, "alarm_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 480
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : alarm_type "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    .end local v21    # "newAlartType":Ljava/lang/String;
    :cond_20
    if-eqz v12, :cond_23

    .line 485
    const/4 v12, 0x0

    .line 486
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v27

    .line 489
    .local v27, "repeat":Ljava/lang/String;
    :try_start_4
    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v23

    .line 497
    :goto_8
    if-nez v15, :cond_21

    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v23

    if-eq v0, v1, :cond_22

    .line 500
    :cond_21
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : isAlarmTypeChanged "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : isNewVersion "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : alarm_repeat "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 503
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : newRepeat "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    const/4 v15, 0x0

    .line 507
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    .line 508
    const-string v32, "alarm_repeat"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    move/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 509
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->saveCurrentRepeated(I)V

    .line 512
    :cond_22
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : alarm_repeat "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    .end local v27    # "repeat":Ljava/lang/String;
    :cond_23
    if-eqz v13, :cond_25

    .line 517
    const/4 v13, 0x0

    .line 518
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v24

    .line 519
    .local v24, "newTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_24

    .line 521
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    .line 522
    const-string v32, "alarm_repeat"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    move/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 523
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->saveCurrentRepeated(I)V

    .line 526
    :cond_24
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    .line 527
    const-string v32, "alarm_title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : alarm_title "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    .end local v24    # "newTitle":Ljava/lang/String;
    :cond_25
    if-eqz v11, :cond_27

    .line 533
    const/4 v11, 0x0

    .line 534
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v22

    .line 535
    .local v22, "newMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_26

    .line 537
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    .line 538
    const-string v32, "alarm_repeat"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    move/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 539
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->saveCurrentRepeated(I)V

    .line 542
    :cond_26
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    .line 543
    const-string v32, "alarm_message"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 544
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : alarm_message "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 547
    .end local v22    # "newMessage":Ljava/lang/String;
    :cond_27
    if-eqz v10, :cond_2

    .line 549
    const/4 v10, 0x0

    .line 550
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    .line 551
    const-string v32, "alarm_callback_url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "[str]"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : alarm_callback_url "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 490
    .restart local v27    # "repeat":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 493
    .local v5, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    move/from16 v23, v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_8
.end method

.method public getProfileAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 597
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 598
    .local v0, "settingsLicense":Landroid/content/SharedPreferences;
    const-string v1, "??"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isXmlModified(Ljava/lang/String;)Z
    .locals 16
    .param p1, "_url"    # Ljava/lang/String;

    .prologue
    .line 727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    check-cast v13, Landroid/app/Activity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 729
    .local v10, "settingsLicense":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 730
    .local v11, "text":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 731
    .local v4, "isText":Ljava/io/InputStream;
    const/16 v13, 0x40

    new-array v1, v13, [B

    .line 732
    .local v1, "bText":[B
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 733
    .local v6, "readSize":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 734
    .local v7, "response":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 736
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 737
    .local v12, "xmlSaveTime":Ljava/lang/String;
    const-string v13, "xmlModifed"

    const/4 v14, 0x0

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 738
    .local v9, "savedTime":Ljava/lang/String;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "### xmlSaveTime = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 739
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "### savedTime = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 740
    const-string v13, "localId"

    const/4 v14, 0x0

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 741
    .local v8, "savedLocalID":I
    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->getLocaleID()I

    move-result v2

    .line 742
    .local v2, "currntLocalID":I
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "### savedLocalID = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 743
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "### currntLocalID = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-eq v8, v2, :cond_1

    .line 746
    :cond_0
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 747
    .local v5, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "xmlModifed"

    invoke-interface {v5, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 748
    const-string v13, "localId"

    invoke-interface {v5, v13, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 749
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 750
    const/4 v13, 0x1

    .line 761
    .end local v1    # "bText":[B
    .end local v2    # "currntLocalID":I
    .end local v4    # "isText":Ljava/io/InputStream;
    .end local v5    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "readSize":I
    .end local v7    # "response":Ljava/lang/String;
    .end local v8    # "savedLocalID":I
    .end local v9    # "savedTime":Ljava/lang/String;
    .end local v11    # "text":Ljava/net/URL;
    .end local v12    # "xmlSaveTime":Ljava/lang/String;
    :goto_0
    return v13

    .line 753
    :catch_0
    move-exception v3

    .line 755
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 761
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_1
    const/4 v13, 0x0

    goto :goto_0

    .line 756
    :catch_1
    move-exception v3

    .line 758
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public loadSavedData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    .local v0, "_updateCheckData":Landroid/content/SharedPreferences;
    const-string v1, "appId"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 202
    const-string v1, "profile_carrier"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->carrier:Ljava/lang/String;

    .line 203
    const-string v1, "profile_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    .line 204
    const-string v1, "title"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 205
    const-string v1, "message"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 206
    const-string v1, "newsBanner_url"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 207
    const-string v1, "callback_url"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 208
    const-string v1, "profile_version"

    const-string v2, "1.0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->version:Ljava/lang/String;

    .line 210
    const-string v1, "alarm_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    .line 211
    const-string v1, "alarm_repeat"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    .line 212
    const-string v1, "alarm_title"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    .line 213
    const-string v1, "alarm_message"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    .line 214
    const-string v1, "alarm_callback_url"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    .line 216
    const-string v1, "current_repeated"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    .line 218
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->version:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 220
    :cond_0
    iput-boolean v5, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 222
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+---------------------------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|\t[XML loadSavedData ]\t "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\tcurrentVersion\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\tactionType\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\ttitle\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\tmessage\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\tnewsBannerUrl\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\tcallbackUrl\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\talarm_type\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\talarm_repeat\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\talarm_title\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\talarm_message\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\talarm_callback_url\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\tcurrent_alarm_repeated\t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+---------------------------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 623
    const-string v1, "#Java#"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPostExecute actionType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    const-string v2, "NEWS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    const-string v2, "UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    if-eqz v1, :cond_3

    .line 646
    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 648
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 650
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 651
    const-string v2, "YES"

    new-instance v3, Lcom/gamevil/nexus2/xml/NexusXmlChecker$2;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$2;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 658
    const-string v2, "NO"

    new-instance v3, Lcom/gamevil/nexus2/xml/NexusXmlChecker$3;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$3;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 663
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 664
    .local v0, "alert":Landroid/app/Dialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 665
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 722
    .end local v0    # "alert":Landroid/app/Dialog;
    :cond_1
    :goto_0
    return-void

    .line 667
    :cond_2
    iget-boolean v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    iget v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    if-le v1, v2, :cond_1

    .line 669
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 670
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|\tACTION_TYYPE_UPDATE\t "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 671
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\talarm_repeat "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\tcurrent_alarm_repeated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 673
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 674
    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    .line 675
    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    invoke-direct {p0, v1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->saveCurrentRepeated(I)V

    .line 677
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 679
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 680
    const-string v2, "YES"

    new-instance v3, Lcom/gamevil/nexus2/xml/NexusXmlChecker$4;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$4;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 686
    const-string v2, "NO"

    new-instance v3, Lcom/gamevil/nexus2/xml/NexusXmlChecker$5;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$5;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 690
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 691
    .restart local v0    # "alert":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 695
    .end local v0    # "alert":Landroid/app/Dialog;
    :cond_3
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    const-string v2, "ALERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    iget v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    if-le v1, v2, :cond_1

    .line 699
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 700
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|\tACTION_TYYPE_ALERT\t "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 701
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\talarm_repeat "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\tcurrent_alarm_repeated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 703
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    .line 706
    iget v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->current_alarm_repeated:I

    invoke-direct {p0, v1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->saveCurrentRepeated(I)V

    .line 708
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 709
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 710
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 711
    const-string v2, "OK"

    new-instance v3, Lcom/gamevil/nexus2/xml/NexusXmlChecker$6;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$6;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 717
    .restart local v0    # "alert":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public releaseAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 178
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_type:Ljava/lang/String;

    .line 185
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_repeat:I

    .line 186
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_title:Ljava/lang/String;

    .line 187
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_message:Ljava/lang/String;

    .line 188
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->alarm_callback_url:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mHandler:Landroid/os/Handler;

    .line 191
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->task:Lcom/gamevil/nexus2/xml/NewsViewTask;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->releaseAll()V

    .line 194
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->task:Lcom/gamevil/nexus2/xml/NewsViewTask;

    .line 196
    :cond_0
    return-void
.end method

.method public saveLicensedStatus()V
    .locals 4

    .prologue
    .line 606
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 607
    .local v1, "settingsLicense":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 608
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "licensed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 610
    return-void
.end method
