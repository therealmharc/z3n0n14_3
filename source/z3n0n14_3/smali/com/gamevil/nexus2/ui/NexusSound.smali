.class public Lcom/gamevil/nexus2/ui/NexusSound;
.super Ljava/lang/Object;
.source "NexusSound.java"


# static fields
.field public static final MAX_VOLUME:I = 0x50

.field private static isSoundON:Z

.field private static isVibrationON:Z

.field private static mBGMResIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mBgmPlayer:Landroid/media/MediaPlayer;

.field private static mContext:Landroid/content/Context;

.field private static mFileNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPlayer:Landroid/media/MediaPlayer;

.field private static mSfxSoundPool:Landroid/media/SoundPool;

.field private static mSfxStreamID:I

.field private static mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamevil/nexus2/ui/NexusSound;->isVibrationON:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BgmLoad(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 11
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 284
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "+-------------------------------"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "| BgmLoad start : path "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "_player":Landroid/media/MediaPlayer;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/sdcard/gamevil/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "sdPath":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "| BgmLoad  : Sd_path "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 295
    new-instance v0, Landroid/media/MediaPlayer;

    .end local v0    # "_player":Landroid/media/MediaPlayer;
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 298
    .restart local v0    # "_player":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 300
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 301
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 302
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 303
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "| BgmLoad  : Sd_path prepared"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 354
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "+------------------------------- : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    return-object v0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e1":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 307
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v1    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 309
    .local v1, "e1":Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 310
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v1    # "e1":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 313
    .local v1, "e1":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 314
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 319
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "| BgmLoad file not found : Sd_path "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->GetAbsolutPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 321
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "| BgmLoad  : Absol_path "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 326
    .local v4, "filelen":J
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 328
    new-instance v0, Landroid/media/MediaPlayer;

    .end local v0    # "_player":Landroid/media/MediaPlayer;
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 331
    .restart local v0    # "_player":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    .line 332
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 333
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 334
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 335
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_0

    .line 337
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 338
    .local v1, "e1":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 339
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 340
    .end local v1    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 341
    .local v1, "e1":Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 342
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 343
    .end local v1    # "e1":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v1

    .line 345
    .local v1, "e1":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 346
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 351
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_2
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "| BgmLoad file not found : Absol_path "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static Vibrator(I)V
    .locals 3
    .param p0, "_time"    # I

    .prologue
    .line 480
    sget-boolean v0, Lcom/gamevil/nexus2/ui/NexusSound;->isVibrationON:Z

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 484
    :cond_0
    return-void
.end method

.method public static addSFXSound(II)V
    .locals 5
    .param p0, "_index"    # I
    .param p1, "_soundID"    # I

    .prologue
    .line 109
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    sget-object v3, Lcom/gamevil/nexus2/ui/NexusSound;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    return-void
.end method

.method public static addSFXSoundFromStorage(ILjava/lang/String;)Z
    .locals 7
    .param p0, "_index"    # I
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "| SfxLoad : _index "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "filepath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/gamevil/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "sdPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "| SfxLoad file not found : filepath: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->GetAbsolutPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "| SfxLoad file not found : filepath: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    :cond_0
    sget-object v3, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 145
    sget-object v3, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 146
    sget-object v3, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    sget-object v3, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/4 v1, 0x1

    .line 151
    :cond_2
    return v1
.end method

.method public static addSoundFileName(ILjava/lang/String;)V
    .locals 3
    .param p0, "_index"    # I
    .param p1, "_fileName"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mFileNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| addSoundFileName : _index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mFileNameMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    return-void
.end method

.method public static getVolume()F
    .locals 1

    .prologue
    .line 465
    sget v0, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    return v0
.end method

.method public static initSounds(Landroid/content/Context;I)V
    .locals 3
    .param p0, "_theContext"    # Landroid/content/Context;
    .param p1, "_maxMultiStream"    # I

    .prologue
    .line 97
    sput-object p0, Lcom/gamevil/nexus2/ui/NexusSound;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->releaseAll()V

    .line 100
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBGMResIDMap:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mFileNameMap:Ljava/util/HashMap;

    .line 104
    const/high16 v0, 0x42a00000    # 80.0f

    sput v0, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    .line 105
    return-void
.end method

.method public static isBGMPlaying()Z
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSoundON()Z
    .locals 1

    .prologue
    .line 475
    sget-boolean v0, Lcom/gamevil/nexus2/ui/NexusSound;->isSoundON:Z

    return v0
.end method

.method public static playSFXSound(I)V
    .locals 7
    .param p0, "_index"    # I

    .prologue
    .line 160
    sget-boolean v0, Lcom/gamevil/nexus2/ui/NexusSound;->isSoundON:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| playSFXSound : _index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    sget v3, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxStreamID:I

    .line 170
    :cond_0
    return-void
.end method

.method public static playSound(IZ)V
    .locals 4
    .param p0, "_index"    # I
    .param p1, "isLoop"    # Z

    .prologue
    .line 177
    const-string v1, "#playSound#"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " playSound _index = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v1, "#playSound#"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " playSound volume = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-boolean v1, Lcom/gamevil/nexus2/ui/NexusSound;->isSoundON:Z

    if-eqz v1, :cond_0

    .line 181
    if-eqz p1, :cond_1

    .line 184
    :try_start_0
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopBGMSound()V

    .line 185
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    .line 186
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 189
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    sget v2, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    sget v3, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 190
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopBGMSound()V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopSound()V

    .line 201
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    .line 202
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 204
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 205
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    sget v2, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    sget v3, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 206
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopSound()V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static playSoundFromStorage(IZ)V
    .locals 4
    .param p0, "_index"    # I
    .param p1, "isLoop"    # Z

    .prologue
    .line 230
    sget-boolean v1, Lcom/gamevil/nexus2/ui/NexusSound;->isSoundON:Z

    if-eqz v1, :cond_0

    .line 232
    if-eqz p1, :cond_2

    .line 235
    :try_start_0
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopBGMSound()V

    .line 236
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mFileNameMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/gamevil/nexus2/ui/NexusSound;->BgmLoad(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    .line 237
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "| mBgmPlayer loaded"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 240
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "| mBgmPlayer"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 242
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    sget v2, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    sget v3, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 243
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 244
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "| mBgmPlayer.start();"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "| mBgmPlayer is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopBGMSound()V

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopSound()V

    .line 260
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mFileNameMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/gamevil/nexus2/ui/NexusSound;->BgmLoad(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    .line 261
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 263
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 264
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    sget v2, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    sget v3, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 265
    sget-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 266
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "| mPlayer.start();"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    .line 274
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopSound()V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "| mPlayer is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static releaseAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 59
    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    .line 62
    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 65
    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mSoundPoolMap:Ljava/util/HashMap;

    .line 68
    :cond_1
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBGMResIDMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBGMResIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBGMResIDMap:Ljava/util/HashMap;

    .line 74
    :cond_2
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mFileNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 76
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mFileNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 77
    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mFileNameMap:Ljava/util/HashMap;

    .line 80
    :cond_3
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 83
    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    .line 86
    :cond_4
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    .line 88
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 89
    sput-object v1, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    .line 91
    :cond_5
    return-void
.end method

.method public static setIsVibtationON(Z)V
    .locals 0
    .param p0, "_isON"    # Z

    .prologue
    .line 488
    sput-boolean p0, Lcom/gamevil/nexus2/ui/NexusSound;->isVibrationON:Z

    .line 489
    return-void
.end method

.method public static setSoundON(Z)V
    .locals 0
    .param p0, "_isON"    # Z

    .prologue
    .line 470
    sput-boolean p0, Lcom/gamevil/nexus2/ui/NexusSound;->isSoundON:Z

    .line 471
    return-void
.end method

.method public static setVolume(I)V
    .locals 2
    .param p0, "_vol"    # I

    .prologue
    .line 458
    if-lez p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gamevil/nexus2/ui/NexusSound;->isSoundON:Z

    .line 459
    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 460
    :cond_0
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    sput v0, Lcom/gamevil/nexus2/ui/NexusSound;->mVolume:F

    .line 461
    return-void

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stopAllSound()V
    .locals 0

    .prologue
    .line 451
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopSfxSound()V

    .line 452
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopBGMSound()V

    .line 453
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopSound()V

    .line 454
    return-void
.end method

.method public static declared-synchronized stopBGMSound()V
    .locals 2

    .prologue
    .line 431
    const-class v1, Lcom/gamevil/nexus2/ui/NexusSound;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 434
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 435
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mBgmPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_0
    monitor-exit v1

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stopSfxSound()V
    .locals 2

    .prologue
    .line 423
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/gamevil/nexus2/ui/NexusSound;->mSfxStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 427
    :cond_0
    return-void
.end method

.method public static declared-synchronized stopSound()V
    .locals 2

    .prologue
    .line 441
    const-class v1, Lcom/gamevil/nexus2/ui/NexusSound;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 444
    sget-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 445
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/ui/NexusSound;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_0
    monitor-exit v1

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
