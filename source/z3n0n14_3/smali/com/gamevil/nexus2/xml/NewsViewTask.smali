.class public Lcom/gamevil/nexus2/xml/NewsViewTask;
.super Landroid/os/AsyncTask;
.source "NewsViewTask.java"


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
.field private static final BANNER_URL:Ljava/lang/String; = "bannerUrl"

.field private static final IS_NEW_STR:Ljava/lang/String; = "isNew"

.field private static final LAST_CHECK_STR:Ljava/lang/String; = "lastCheck"

.field private static final LAST_TIME_STR:Ljava/lang/String; = "lastTime"

.field private static final NEWS_DATA_STR:Ljava/lang/String; = "NewsData"

.field private static final NEWS_IMG:Ljava/lang/String; = "newsImage"

.field private static final ONE_DAY:J = 0x5265c00L

.field private static f:Landroid/widget/FrameLayout;

.field private static imageListener:Landroid/view/View$OnClickListener;

.field private static imgDrawable:Landroid/graphics/Bitmap;

.field private static isNewNews:Z

.field private static isNewsViewReady:Z

.field private static mHandler:Landroid/os/Handler;

.field private static marketSubfix:Ljava/lang/String;

.field private static pl:Landroid/widget/FrameLayout$LayoutParams;

.field private static showCalled:Z


# instance fields
.field private cancleListener:Landroid/view/View$OnClickListener;

.field http:Ljava/net/HttpURLConnection;

.field private newsListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/gamevil/nexus2/xml/NewsViewTask$1;

    invoke-direct {v0}, Lcom/gamevil/nexus2/xml/NewsViewTask$1;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->imageListener:Landroid/view/View$OnClickListener;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 222
    new-instance v0, Lcom/gamevil/nexus2/xml/NewsViewTask$2;

    invoke-direct {v0, p0}, Lcom/gamevil/nexus2/xml/NewsViewTask$2;-><init>(Lcom/gamevil/nexus2/xml/NewsViewTask;)V

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NewsViewTask;->newsListener:Landroid/view/View$OnClickListener;

    .line 237
    new-instance v0, Lcom/gamevil/nexus2/xml/NewsViewTask$3;

    invoke-direct {v0, p0}, Lcom/gamevil/nexus2/xml/NewsViewTask$3;-><init>(Lcom/gamevil/nexus2/xml/NewsViewTask;)V

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NewsViewTask;->cancleListener:Landroid/view/View$OnClickListener;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic access$10(Lcom/gamevil/nexus2/xml/NewsViewTask;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NewsViewTask;->cancleListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$11()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->imgDrawable:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$12()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewNews:Z

    return v0
.end method

.method static synthetic access$13(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 88
    sput-object p0, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$14()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->showCalled:Z

    return v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->marketSubfix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4(Lcom/gamevil/nexus2/xml/NewsViewTask;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/NewsViewTask;->showNewsBanner()V

    return-void
.end method

.method static synthetic access$5(Lcom/gamevil/nexus2/xml/NewsViewTask;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsBanner()V

    return-void
.end method

.method static synthetic access$6(Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 89
    sput-object p0, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$7()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$8()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->imageListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/gamevil/nexus2/xml/NewsViewTask;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NewsViewTask;->newsListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private static getNewsImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 285
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "+-------------------------------"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|\tgetNewsImage\t "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "+-------------------------------"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, "img":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 293
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v3, v1

    .line 300
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private hideNewsBanner()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 262
    sget-object v3, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 264
    sget-object v3, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    sput-object v3, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    sget-object v3, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, -0x6e

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 267
    sget-object v3, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v4, 0x7f040002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 271
    .local v2, "shake":Landroid/view/animation/Animation;
    sget-object v3, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    sput-boolean v5, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewNews:Z

    .line 274
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v4, "NewsData"

    invoke-virtual {v3, v4, v5}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 275
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "isNew"

    sget-boolean v4, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewNews:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    .end local v2    # "shake":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public static hideNewsView()V
    .locals 2

    .prologue
    .line 328
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->showCalled:Z

    .line 329
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/NewsViewTask$6;

    invoke-direct {v1}, Lcom/gamevil/nexus2/xml/NewsViewTask$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    :cond_0
    return-void
.end method

.method private static isPngExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 356
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 357
    .local v1, "path":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 358
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 361
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadPngFileFromSdCard(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 394
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|\tloadPngFileFromSdCard\t "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, "myBitmap":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 400
    .local v2, "path":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 401
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 407
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public static releaseAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 347
    sput-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    sput-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    .line 349
    sput-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->imgDrawable:Landroid/graphics/Bitmap;

    .line 351
    return-void
.end method

.method private static savePngFileToSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .locals 9
    .param p0, "imageData"    # Landroid/graphics/Bitmap;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v5, -0x63

    .line 366
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "+-------------------------------"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "|\tsavePngFileToSdCard\t "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "+-------------------------------"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    const/4 v3, 0x0

    .line 371
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 373
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 374
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {p0, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 376
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 377
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 378
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 388
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    return v4

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v4, v5

    .line 382
    goto :goto_0

    .line 383
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 384
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v4, v5

    .line 385
    goto :goto_0

    .line 383
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 380
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private showNewsBanner()V
    .locals 3

    .prologue
    .line 246
    sget-object v1, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sput-object v1, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    sget-object v1, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 252
    sget-object v1, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/gamevil/nexus2/xml/NewsViewTask;->pl:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 255
    .local v0, "shake":Landroid/view/animation/Animation;
    sget-object v1, Lcom/gamevil/nexus2/xml/NewsViewTask;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    .end local v0    # "shake":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public static showNewsView()V
    .locals 2

    .prologue
    .line 305
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->showCalled:Z

    .line 306
    sget-boolean v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewsViewReady:Z

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/NewsViewTask$5;

    invoke-direct {v1}, Lcom/gamevil/nexus2/xml/NewsViewTask$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/xml/NewsViewTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    new-instance v19, Ljava/net/URL;

    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v19, "text":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    check-cast v20, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/NewsViewTask;->http:Ljava/net/HttpURLConnection;

    .line 109
    sget-object v20, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v21, "NewsData"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 110
    .local v18, "settings":Landroid/content/SharedPreferences;
    const-string v20, "isNew"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    sput-boolean v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewNews:Z

    .line 111
    const-string v20, "lastTime"

    const-wide/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 112
    .local v14, "savedModify":J
    const-string v20, "lastCheck"

    const-wide/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 113
    .local v16, "savedTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->http:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v9

    .line 114
    .local v9, "lastModified":J
    const-string v20, "bannerUrl"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "_bannerUrl":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 116
    .local v5, "currentTime":J
    sub-long v12, v5, v16

    .line 117
    .local v12, "oneDay":J
    const-wide/32 v20, 0x5265c00

    cmp-long v20, v12, v20

    if-lez v20, :cond_5

    const/4 v11, 0x1

    .line 120
    .local v11, "needToCheck":Z
    :goto_0
    if-eqz v4, :cond_0

    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    cmp-long v20, v14, v9

    if-eqz v20, :cond_1

    .line 122
    :cond_0
    const/16 v20, 0x1

    sput-boolean v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewNews:Z

    .line 126
    :cond_1
    const-string v20, "newsImage"

    invoke-static/range {v20 .. v20}, Lcom/gamevil/nexus2/xml/NewsViewTask;->isPngExist(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 128
    const/4 v11, 0x1

    .line 131
    :cond_2
    if-nez v11, :cond_3

    sget-boolean v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewNews:Z

    if-eqz v20, :cond_6

    .line 133
    :cond_3
    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-static/range {v20 .. v20}, Lcom/gamevil/nexus2/xml/NewsViewTask;->getNewsImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    sput-object v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->imgDrawable:Landroid/graphics/Bitmap;

    .line 134
    sget-object v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->imgDrawable:Landroid/graphics/Bitmap;

    if-eqz v20, :cond_4

    sget-object v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->imgDrawable:Landroid/graphics/Bitmap;

    const-string v21, "newsImage"

    invoke-static/range {v20 .. v21}, Lcom/gamevil/nexus2/xml/NewsViewTask;->savePngFileToSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_4

    .line 136
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 137
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "isNew"

    sget-boolean v21, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewNews:Z

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v20, "lastTime"

    move-object/from16 v0, v20

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v20, "lastCheck"

    move-object/from16 v0, v20

    invoke-interface {v8, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v20, "bannerUrl"

    const/16 v21, 0x0

    aget-object v21, p1, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    :goto_1
    sget-object v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->imgDrawable:Landroid/graphics/Bitmap;

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    :goto_2
    sput-boolean v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewsViewReady:Z

    .line 151
    const/16 v20, 0x1

    aget-object v20, p1, v20

    sput-object v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->marketSubfix:Ljava/lang/String;

    .line 157
    .end local v4    # "_bannerUrl":Ljava/lang/String;
    .end local v5    # "currentTime":J
    .end local v9    # "lastModified":J
    .end local v11    # "needToCheck":Z
    .end local v12    # "oneDay":J
    .end local v14    # "savedModify":J
    .end local v16    # "savedTime":J
    .end local v18    # "settings":Landroid/content/SharedPreferences;
    .end local v19    # "text":Ljava/net/URL;
    :goto_3
    const/16 v20, 0x0

    return-object v20

    .line 117
    .restart local v4    # "_bannerUrl":Ljava/lang/String;
    .restart local v5    # "currentTime":J
    .restart local v9    # "lastModified":J
    .restart local v12    # "oneDay":J
    .restart local v14    # "savedModify":J
    .restart local v16    # "savedTime":J
    .restart local v18    # "settings":Landroid/content/SharedPreferences;
    .restart local v19    # "text":Ljava/net/URL;
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 146
    .restart local v11    # "needToCheck":Z
    :cond_6
    const-string v20, "newsImage"

    invoke-static/range {v20 .. v20}, Lcom/gamevil/nexus2/xml/NewsViewTask;->loadPngFileFromSdCard(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    sput-object v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->imgDrawable:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    .end local v4    # "_bannerUrl":Ljava/lang/String;
    .end local v5    # "currentTime":J
    .end local v9    # "lastModified":J
    .end local v11    # "needToCheck":Z
    .end local v12    # "oneDay":J
    .end local v14    # "savedModify":J
    .end local v16    # "savedTime":J
    .end local v18    # "settings":Landroid/content/SharedPreferences;
    .end local v19    # "text":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 154
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const/16 v20, 0x0

    sput-boolean v20, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewsViewReady:Z

    goto :goto_3

    .line 149
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "_bannerUrl":Ljava/lang/String;
    .restart local v5    # "currentTime":J
    .restart local v9    # "lastModified":J
    .restart local v11    # "needToCheck":Z
    .restart local v12    # "oneDay":J
    .restart local v14    # "savedModify":J
    .restart local v16    # "savedTime":J
    .restart local v18    # "settings":Landroid/content/SharedPreferences;
    .restart local v19    # "text":Ljava/net/URL;
    :cond_7
    const/16 v20, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/xml/NewsViewTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->isNewsViewReady:Z

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/gamevil/nexus2/xml/NewsViewTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/NewsViewTask$4;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/NewsViewTask$4;-><init>(Lcom/gamevil/nexus2/xml/NewsViewTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_0
    return-void
.end method
