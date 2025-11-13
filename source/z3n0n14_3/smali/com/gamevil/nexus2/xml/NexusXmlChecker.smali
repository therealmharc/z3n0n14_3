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
.field private static final APPID:Ljava/lang/String; = "appId"

.field private static final CALLBACK_URL:Ljava/lang/String; = "callback_url"

.field private static final CARRIER:Ljava/lang/String; = "profile_carrier"

.field private static final MAX_TIME_BLOCK:I = 0xf

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

.field private callbackUrl:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private currentVersion:Ljava/lang/String;

.field private isNewVersion:Z

.field private mHandler:Landroid/os/Handler;

.field private message:Ljava/lang/String;

.field private newsBannerUrl:Ljava/lang/String;

.field private productID:Ljava/lang/String;

.field task:Lcom/gamevil/nexus2/xml/NewsViewTask;

.field private title:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    const-string v2, "ALERT"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_ALERT:Ljava/lang/String;

    .line 49
    const-string v2, "NEWS"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_NEWS:Ljava/lang/String;

    .line 50
    const-string v2, "UPDATE"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->ACTION_TYYPE_UPDATE:Ljava/lang/String;

    .line 52
    const-string v2, "SKT"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_SKT:Ljava/lang/String;

    .line 53
    const-string v2, "KTF"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_KTF:Ljava/lang/String;

    .line 54
    const-string v2, "LGT"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_LGT:Ljava/lang/String;

    .line 55
    const-string v2, "GLOBAL"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_GLOBAL:Ljava/lang/String;

    .line 56
    const-string v2, "IOS"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->CARRIER_IOS:Ljava/lang/String;

    .line 70
    iput-boolean v4, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 86
    iput-boolean v4, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 87
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 88
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 89
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 90
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 92
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mHandler:Landroid/os/Handler;

    .line 94
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "1.0.0"

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;

    .line 97
    :try_start_0
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->loadSavedData()V

    .line 104
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkedProfileXML()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    .line 334
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v6, v5}, Lcom/gamevil/nexus2/NexusGLActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 335
    .local v4, "updateCheckData":Landroid/content/SharedPreferences;
    const-string v6, "profile_saveTime"

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 338
    .local v0, "saveTime":J
    cmp-long v6, v0, v7

    if-nez v6, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v5

    .line 340
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 343
    .local v2, "timeGap":J
    const-wide/16 v6, 0x3a98

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 346
    const/4 v5, 0x1

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
    .locals 22
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 143
    const/16 v19, 0x1

    aget-object v19, p1, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isXmlModified(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "DATA"

    .line 328
    :goto_0
    return-object v19

    .line 147
    :cond_0
    const/4 v13, 0x0

    .line 148
    .local v13, "isTitle":Z
    const/4 v11, 0x0

    .line 149
    .local v11, "isMessage":Z
    const/4 v9, 0x0

    .line 150
    .local v9, "isAppID":Z
    const/4 v12, 0x0

    .line 151
    .local v12, "isNewsUrl":Z
    const/4 v10, 0x0

    .line 156
    .local v10, "isCallbackUrl":Z
    sget-object v19, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/NexusGLActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 157
    .local v16, "updateCheckData":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 161
    .local v14, "prefEditor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    .local v17, "xmlUrl":Ljava/net/URL;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 163
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 164
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 165
    .local v18, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "euc-kr"

    invoke-interface/range {v18 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 170
    const/4 v8, 0x0

    .line 171
    .local v8, "idx":I
    const/4 v15, -0x1

    .line 172
    .local v15, "profileIdx":I
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 173
    .local v5, "eventType":I
    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_1

    .line 323
    .end local v5    # "eventType":I
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "idx":I
    .end local v15    # "profileIdx":I
    .end local v17    # "xmlUrl":Ljava/net/URL;
    .end local v18    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_2
    const-string v19, "profile_saveTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    const-string v19, "Data"

    goto :goto_0

    .line 175
    .restart local v5    # "eventType":I
    .restart local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "idx":I
    .restart local v15    # "profileIdx":I
    .restart local v17    # "xmlUrl":Ljava/net/URL;
    .restart local v18    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    if-eqz v5, :cond_2

    .line 177
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_2

    .line 179
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v5, v0, :cond_12

    .line 181
    :try_start_1
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "profile"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 183
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 185
    .local v3, "attCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-lt v7, v3, :cond_3

    .line 196
    const/4 v7, 0x0

    :goto_4
    if-lt v7, v3, :cond_5

    .line 204
    if-ne v15, v8, :cond_2

    .line 207
    const/4 v7, 0x0

    :goto_5
    if-lt v7, v3, :cond_6

    .line 313
    .end local v3    # "attCount":I
    .end local v7    # "i":I
    :cond_2
    :goto_6
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    .line 187
    .restart local v3    # "attCount":I
    .restart local v7    # "i":I
    :cond_3
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "profile_package"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 189
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v20 .. v20}, Lcom/gamevil/nexus2/NexusGLActivity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 191
    move v15, v8

    .line 185
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 196
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 209
    :cond_6
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "profile_package"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 211
    const-string v19, "profile_package"

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    :cond_7
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 213
    :cond_8
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "profile_version"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 216
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 218
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 220
    :cond_9
    const-string v19, "profile_version"

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 315
    .end local v3    # "attCount":I
    .end local v5    # "eventType":I
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v15    # "profileIdx":I
    .end local v17    # "xmlUrl":Ljava/net/URL;
    .end local v18    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v4

    .line 317
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2

    .line 222
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "attCount":I
    .restart local v5    # "eventType":I
    .restart local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "i":I
    .restart local v8    # "idx":I
    .restart local v15    # "profileIdx":I
    .restart local v17    # "xmlUrl":Ljava/net/URL;
    .restart local v18    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    :try_start_2
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "profile_carrier"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 224
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->carrier:Ljava/lang/String;

    .line 225
    const-string v19, "profile_carrier"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->carrier:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 318
    .end local v3    # "attCount":I
    .end local v5    # "eventType":I
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v15    # "profileIdx":I
    .end local v17    # "xmlUrl":Ljava/net/URL;
    .end local v18    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v4

    .line 320
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 227
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "attCount":I
    .restart local v5    # "eventType":I
    .restart local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "i":I
    .restart local v8    # "idx":I
    .restart local v15    # "profileIdx":I
    .restart local v17    # "xmlUrl":Ljava/net/URL;
    .restart local v18    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_3
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "profile_type"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 229
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    .line 230
    const-string v19, "profile_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_7

    .line 232
    :cond_c
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "appId"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 234
    const-string v19, "appId"

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    goto/16 :goto_7

    .line 242
    .end local v3    # "attCount":I
    .end local v7    # "i":I
    :cond_d
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "title"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 244
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 246
    :cond_e
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "message"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 248
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 250
    :cond_f
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "appId"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 252
    const/4 v9, 0x1

    goto/16 :goto_6

    .line 254
    :cond_10
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "newsBanner_url"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 256
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 258
    :cond_11
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "callback_url"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 260
    const/4 v10, 0x1

    goto/16 :goto_6

    .line 262
    :cond_12
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v5, v0, :cond_13

    .line 263
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "profile"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 265
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 267
    :cond_13
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v5, v0, :cond_2

    .line 268
    if-ne v15, v8, :cond_2

    .line 272
    if-eqz v13, :cond_14

    .line 274
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 275
    const/4 v13, 0x0

    .line 279
    :cond_14
    if-eqz v11, :cond_15

    .line 281
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 282
    const/4 v11, 0x0

    .line 286
    :cond_15
    if-eqz v9, :cond_16

    .line 288
    const/4 v9, 0x0

    .line 289
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 290
    const-string v19, "appId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    :cond_16
    if-eqz v12, :cond_17

    .line 297
    const/4 v12, 0x0

    .line 298
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 299
    const-string v19, "newsBanner_url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_17
    if-eqz v10, :cond_2

    .line 305
    const/4 v10, 0x0

    .line 306
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 307
    const-string v19, "callback_url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6
.end method

.method public getProfileAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 353
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    .local v0, "settingsLicense":Landroid/content/SharedPreferences;
    const-string v1, "??"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isXmlModified(Ljava/lang/String;)Z
    .locals 13
    .param p1, "_url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 433
    sget-object v11, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v11, v10}, Lcom/gamevil/nexus2/NexusGLActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 435
    .local v7, "settingsLicense":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 436
    .local v8, "text":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 437
    .local v2, "isText":Ljava/io/InputStream;
    const/16 v11, 0x40

    new-array v0, v11, [B

    .line 438
    .local v0, "bText":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 439
    .local v4, "readSize":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 442
    .local v5, "response":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 443
    .local v9, "xmlSaveTime":Ljava/lang/String;
    const-string v11, "xmlModifed"

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "savedTime":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 449
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 450
    .local v3, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "xmlModifed"

    invoke-interface {v3, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 451
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    const/4 v10, 0x1

    .line 463
    .end local v0    # "bText":[B
    .end local v2    # "isText":Ljava/io/InputStream;
    .end local v3    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "readSize":I
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "savedTime":Ljava/lang/String;
    .end local v8    # "text":Ljava/net/URL;
    .end local v9    # "xmlSaveTime":Ljava/lang/String;
    :cond_0
    :goto_0
    return v10

    .line 455
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 460
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadSavedData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, "_updateCheckData":Landroid/content/SharedPreferences;
    const-string v1, "appId"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 126
    const-string v1, "profile_carrier"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->carrier:Ljava/lang/String;

    .line 127
    const-string v1, "profile_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    .line 128
    const-string v1, "title"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 129
    const-string v1, "message"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 130
    const-string v1, "newsBanner_url"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 131
    const-string v1, "callback_url"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 132
    const-string v1, "profile_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->version:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->version:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->currentVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 137
    :cond_0
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
    .line 371
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    const-string v2, "UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    if-eqz v1, :cond_1

    .line 375
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 377
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 378
    const-string v2, "YES"

    new-instance v3, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 394
    const-string v2, "NO"

    new-instance v3, Lcom/gamevil/nexus2/xml/NexusXmlChecker$2;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$2;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 399
    .local v0, "alert":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 428
    .end local v0    # "alert":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    const-string v2, "ALERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 406
    const-string v2, "OK"

    new-instance v3, Lcom/gamevil/nexus2/xml/NexusXmlChecker$3;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$3;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 412
    .restart local v0    # "alert":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 414
    .end local v0    # "alert":Landroid/app/Dialog;
    :cond_2
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->actionType:Ljava/lang/String;

    const-string v2, "NEWS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/gamevil/nexus2/xml/NexusXmlChecker$4;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker$4;-><init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public releaseAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->isNewVersion:Z

    .line 109
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->productID:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->title:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->message:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->newsBannerUrl:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->callbackUrl:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->mHandler:Landroid/os/Handler;

    .line 115
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->task:Lcom/gamevil/nexus2/xml/NewsViewTask;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->releaseAll()V

    .line 118
    iput-object v1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->task:Lcom/gamevil/nexus2/xml/NewsViewTask;

    .line 120
    :cond_0
    return-void
.end method

.method public saveLicensedStatus()V
    .locals 4

    .prologue
    .line 362
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 363
    .local v1, "settingsLicense":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 364
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "licensed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    return-void
.end method
