.class public Lcom/gamevil/nexus2/xml/NexusTorchwood;
.super Landroid/os/AsyncTask;
.source "NexusTorchwood.java"


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
.field private static final CHECKED:I = 0x4

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final NET_UNAVAILABE:I = 0x2

.field private static final NONE:I = 0x0

.field private static final NOT_FOUND_FILE:I = 0x3

.field private static final NO_SIM:I = 0x1

.field private static final TORCH:Ljava/lang/String; = "jhs"


# instance fields
.field private badTaskName:Ljava/lang/String;

.field private dataList:[Ljava/lang/String;

.field private isBackground:Z

.field private isRetried:Z

.field private mContext:Landroid/content/Context;

.field private sbuffer:[B

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 97
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v4, v0, v1

    const/4 v1, 0x5

    aput-byte v1, v0, v4

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    aput-byte v5, v0, v5

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    aput-byte v2, v0, v2

    aput-byte v3, v0, v3

    aput-byte v6, v0, v6

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 102
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [B

    aput-byte v5, v0, v4

    const/4 v1, 0x5

    aput-byte v1, v0, v5

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    aput-byte v6, v0, v6

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    aput-byte v2, v0, v2

    aput-byte v3, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    .line 103
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    .line 104
    iput v4, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_isBackground"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 107
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [B

    aput-byte v5, v0, v4

    const/4 v1, 0x5

    aput-byte v1, v0, v5

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    aput-byte v6, v0, v6

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    aput-byte v2, v0, v2

    aput-byte v3, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    .line 108
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    .line 109
    iput-boolean p2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->isBackground:Z

    .line 110
    iput v4, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    .line 111
    return-void
.end method

.method static synthetic access$2(Lcom/gamevil/nexus2/xml/NexusTorchwood;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createChecksum([B)[B
    .locals 3
    .param p0, "_data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 643
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 644
    .local v0, "complete":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 646
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public static getSHA1Checksum([B)Ljava/lang/String;
    .locals 6
    .param p0, "_checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 652
    move-object v0, p0

    .line 653
    .local v0, "b":[B
    const-string v2, ""

    .line 654
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 658
    return-object v2

    .line 655
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 655
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private releaseDataList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->dataList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->dataList:[Ljava/lang/String;

    array-length v1, v2

    .line 125
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "_i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 130
    .end local v0    # "_i":I
    .end local v1    # "length":I
    :cond_0
    iput-object v3, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->dataList:[Ljava/lang/String;

    .line 131
    return-void

    .line 127
    .restart local v0    # "_i":I
    .restart local v1    # "length":I
    :cond_1
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->dataList:[Ljava/lang/String;

    aput-object v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetSaveTime()V
    .locals 5

    .prologue
    .line 554
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "checkerData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 555
    .local v0, "checkerData":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 556
    .local v1, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "xmlDataModifed"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 557
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 558
    return-void
.end method


# virtual methods
.method public check([B)I
    .locals 10
    .param p1, "_data"    # [B

    .prologue
    .line 689
    const/4 v4, 0x0

    .line 690
    .local v4, "rc":I
    const/4 v2, 0x0

    .line 693
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {p1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->calcMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 694
    .local v6, "strCheck":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v3, v8

    .line 695
    .local v3, "length":I
    new-array v0, v3, [B

    .line 696
    .local v0, "chk2":[B
    iget-object v8, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    const-string v9, "uiButton"

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 697
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 699
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 705
    .local v7, "strCheck2":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 708
    const/4 v4, 0x1

    .line 715
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    if-eqz v2, :cond_0

    .line 725
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    move v5, v4

    .line 732
    .end local v0    # "chk2":[B
    .end local v3    # "length":I
    .end local v4    # "rc":I
    .end local v6    # "strCheck":Ljava/lang/String;
    .end local v7    # "strCheck2":Ljava/lang/String;
    .local v5, "rc":I
    :goto_2
    return v5

    .line 713
    .end local v5    # "rc":I
    .restart local v0    # "chk2":[B
    .restart local v3    # "length":I
    .restart local v4    # "rc":I
    .restart local v6    # "strCheck":Ljava/lang/String;
    .restart local v7    # "strCheck2":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    .line 726
    :catch_0
    move-exception v1

    .line 728
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 718
    .end local v0    # "chk2":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "length":I
    .end local v6    # "strCheck":Ljava/lang/String;
    .end local v7    # "strCheck2":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    if-eqz v2, :cond_2

    .line 725
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    move v5, v4

    .line 732
    .end local v4    # "rc":I
    .restart local v5    # "rc":I
    goto :goto_2

    .line 726
    .end local v5    # "rc":I
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "rc":I
    :catch_2
    move-exception v1

    .line 728
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 721
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 722
    if-eqz v2, :cond_3

    .line 725
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 731
    :cond_3
    :goto_4
    throw v8

    .line 726
    :catch_3
    move-exception v1

    .line 728
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public checkTasks()V
    .locals 9

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->loadSavedData()V

    .line 493
    iget-object v6, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 494
    .local v1, "actManager":Landroid/app/ActivityManager;
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 496
    .local v2, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 498
    .local v5, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 512
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 501
    .local v4, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->dataList:[Ljava/lang/String;

    array-length v3, v7

    .line 502
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "_i":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 504
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->dataList:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 505
    const/4 v6, 0x4

    iput v6, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    .line 506
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->badTaskName:Ljava/lang/String;

    goto :goto_0

    .line 502
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public create([B)I
    .locals 7
    .param p1, "_data"    # [B

    .prologue
    const/4 v6, 0x1

    .line 663
    const/4 v2, 0x0

    .line 666
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->calcMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "check":Ljava/lang/String;
    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    const-string v4, "uiButton"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 669
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 670
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    if-eqz v2, :cond_0

    .line 678
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    .end local v0    # "check":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 679
    .restart local v0    # "check":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 681
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 672
    .end local v0    # "check":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 678
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 679
    :catch_2
    move-exception v1

    .line 681
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 674
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 675
    if-eqz v2, :cond_1

    .line 678
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 684
    :cond_1
    throw v3

    .line 679
    :catch_3
    move-exception v1

    .line 681
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->isBackground:Z

    if-eqz v14, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget v14, v0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->checkTasks()V

    .line 143
    :cond_0
    const-string v14, "Data"

    .line 283
    :goto_0
    return-object v14

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/gamevil/nexus2/xml/NexusUtils;->isNetAvailable(Landroid/content/Context;)I

    move-result v14

    if-gez v14, :cond_2

    .line 171
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    .line 283
    :goto_1
    const-string v14, "Data"

    goto :goto_0

    .line 176
    :cond_2
    const/4 v14, 0x1

    aget-object v14, p1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->isXmlModified(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 182
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v11, "taskDataStr":Ljava/lang/StringBuffer;
    const-string v10, "0"

    .line 187
    .local v10, "strTorch":Ljava/lang/String;
    const/4 v8, 0x0

    .line 188
    .local v8, "isItem":Z
    const/4 v9, 0x0

    .line 190
    .local v9, "isTorch":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    check-cast v14, Landroid/app/Activity;

    const-string v15, "checkerData"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 191
    .local v2, "checkerData":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 194
    .local v3, "dataEditor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 195
    .local v12, "xmlUrl":Ljava/net/URL;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 196
    .local v7, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 197
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 198
    .local v13, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v15, "utf-8"

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 203
    const/4 v4, 0x0

    .line 204
    .local v4, "dataIdx":I
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 205
    .local v6, "eventType":I
    :goto_2
    const/4 v14, 0x1

    if-ne v6, v14, :cond_4

    .line 265
    .end local v4    # "dataIdx":I
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "xmlUrl":Ljava/net/URL;
    .end local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_3
    const-string v14, "taskData"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-static {v15}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v14, "task"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-static {v15}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    monitor-enter p0

    .line 273
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    int-to-byte v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->save(B)V

    .line 274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->create([B)I

    .line 271
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    .end local v2    # "checkerData":Landroid/content/SharedPreferences;
    .end local v3    # "dataEditor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "isItem":Z
    .end local v9    # "isTorch":Z
    .end local v10    # "strTorch":Ljava/lang/String;
    .end local v11    # "taskDataStr":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->checkTasks()V

    goto/16 :goto_1

    .line 207
    .restart local v2    # "checkerData":Landroid/content/SharedPreferences;
    .restart local v3    # "dataEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "dataIdx":I
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "isItem":Z
    .restart local v9    # "isTorch":Z
    .restart local v10    # "strTorch":Ljava/lang/String;
    .restart local v11    # "taskDataStr":Ljava/lang/StringBuffer;
    .restart local v12    # "xmlUrl":Ljava/net/URL;
    .restart local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    if-eqz v6, :cond_5

    .line 209
    const/4 v14, 0x1

    if-eq v6, v14, :cond_5

    .line 211
    const/4 v14, 0x2

    if-ne v6, v14, :cond_7

    .line 214
    :try_start_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 223
    .local v1, "attCount":I
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "item"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 225
    const/4 v8, 0x1

    .line 255
    .end local v1    # "attCount":I
    :cond_5
    :goto_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_2

    .line 227
    .restart local v1    # "attCount":I
    :cond_6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "jhs"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 229
    const/4 v9, 0x1

    goto :goto_4

    .line 231
    .end local v1    # "attCount":I
    :cond_7
    const/4 v14, 0x3

    if-eq v6, v14, :cond_5

    .line 234
    const/4 v14, 0x4

    if-ne v6, v14, :cond_5

    .line 235
    if-eqz v8, :cond_9

    .line 237
    const/4 v8, 0x0

    .line 238
    if-nez v4, :cond_8

    .line 240
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 244
    :cond_8
    const-string v14, ";"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 257
    .end local v4    # "dataIdx":I
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "xmlUrl":Ljava/net/URL;
    .end local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v5

    .line 259
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_3

    .line 249
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "dataIdx":I
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "xmlUrl":Ljava/net/URL;
    .restart local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    if-eqz v9, :cond_5

    .line 251
    :try_start_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    goto :goto_4

    .line 260
    .end local v4    # "dataIdx":I
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "xmlUrl":Ljava/net/URL;
    .end local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v5

    .line 262
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 271
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14
.end method

.method public isXmlModified(Ljava/lang/String;)Z
    .locals 13
    .param p1, "_url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 517
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    const-string v12, "checkerData"

    invoke-virtual {v11, v12, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 519
    .local v1, "checkerData":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 520
    .local v8, "text":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 521
    .local v3, "isText":Ljava/io/InputStream;
    const/16 v11, 0x40

    new-array v0, v11, [B

    .line 522
    .local v0, "bText":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 523
    .local v5, "readSize":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 524
    .local v6, "response":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 526
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 527
    .local v9, "xmlSaveTime":Ljava/lang/String;
    const-string v11, "xmlDataModifed"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, "savedTime":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 533
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 534
    .local v4, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "xmlDataModifed"

    invoke-interface {v4, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 535
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 536
    const/4 v10, 0x1

    .line 547
    .end local v0    # "bText":[B
    .end local v3    # "isText":Ljava/io/InputStream;
    .end local v4    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "readSize":I
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "savedTime":Ljava/lang/String;
    .end local v8    # "text":Ljava/net/URL;
    .end local v9    # "xmlSaveTime":Ljava/lang/String;
    :cond_1
    :goto_0
    return v10

    .line 539
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 542
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 544
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadSavedData()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x4

    .line 438
    iget-object v9, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    const-string v10, "checkerData"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    .local v0, "_updateCheckData":Landroid/content/SharedPreferences;
    const-string v9, "taskData"

    invoke-interface {v0, v9, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "data":Ljava/lang/String;
    const-string v9, "task"

    invoke-interface {v0, v9, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, "torchData":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v7, :cond_1

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->resetSaveTime()V

    .line 445
    const/4 v9, 0x3

    iput v9, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    .line 488
    :goto_0
    return-void

    .line 450
    :cond_1
    const/4 v3, 0x0

    .line 451
    .local v3, "taskData":Ljava/lang/String;
    const/4 v5, 0x0

    .line 452
    .local v5, "torch":Ljava/lang/String;
    const/4 v8, 0x0

    .line 455
    .local v8, "wood":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-static {v1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v3    # "taskData":Ljava/lang/String;
    .local v4, "taskData":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-static {v7}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 457
    .end local v5    # "torch":Ljava/lang/String;
    .local v6, "torch":Ljava/lang/String;
    :try_start_2
    invoke-static {v4}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->calcMD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    move-object v5, v6

    .end local v6    # "torch":Ljava/lang/String;
    .restart local v5    # "torch":Ljava/lang/String;
    move-object v3, v4

    .line 464
    .end local v4    # "taskData":Ljava/lang/String;
    .restart local v3    # "taskData":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->resetSaveTime()V

    .line 467
    iput v12, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    goto :goto_0

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->resetSaveTime()V

    .line 460
    iput v12, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    goto :goto_1

    .line 472
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->releaseDataList()V

    .line 473
    const-string v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->dataList:[Ljava/lang/String;

    goto :goto_0

    .line 458
    .end local v3    # "taskData":Ljava/lang/String;
    .restart local v4    # "taskData":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "taskData":Ljava/lang/String;
    .restart local v3    # "taskData":Ljava/lang/String;
    goto :goto_2

    .end local v3    # "taskData":Ljava/lang/String;
    .end local v5    # "torch":Ljava/lang/String;
    .restart local v4    # "taskData":Ljava/lang/String;
    .restart local v6    # "torch":Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "torch":Ljava/lang/String;
    .restart local v5    # "torch":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "taskData":Ljava/lang/String;
    .restart local v3    # "taskData":Ljava/lang/String;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f070017

    const/4 v4, 0x0

    .line 298
    iget-boolean v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->isBackground:Z

    if-eqz v2, :cond_1

    .line 300
    iget v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    if-lez v2, :cond_0

    .line 303
    monitor-enter p0

    .line 306
    :try_start_0
    iget v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->save(B)V

    .line 307
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->create([B)I

    .line 303
    monitor-exit p0

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 303
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->read()I

    move-result v1

    .line 317
    .local v1, "checkSt":I
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->check([B)I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 320
    const/4 v1, 0x2

    .line 323
    :cond_2
    if-eqz v1, :cond_3

    .line 325
    iput v1, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    .line 326
    invoke-virtual {p0, v4}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->save(B)V

    .line 327
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->create([B)I

    .line 330
    :cond_3
    iget v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    const/4 v3, 0x2

    goto :goto_1

    .line 332
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/NexusGLActivity;->handleMessage()V

    .line 333
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 335
    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 336
    new-instance v3, Lcom/gamevil/nexus2/xml/NexusTorchwood$1;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood$1;-><init>(Lcom/gamevil/nexus2/xml/NexusTorchwood;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 343
    .local v0, "alert":Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 344
    new-instance v2, Lcom/gamevil/nexus2/xml/NexusTorchwood$2;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood$2;-><init>(Lcom/gamevil/nexus2/xml/NexusTorchwood;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 350
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 352
    .end local v0    # "alert":Landroid/app/Dialog;
    :goto_1
    iget v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 354
    iput-boolean v4, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->isRetried:Z

    goto :goto_0

    .line 385
    :cond_4
    iget v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    if-ne v2, v6, :cond_5

    .line 388
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/NexusGLActivity;->handleMessage()V

    .line 389
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 391
    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 392
    new-instance v3, Lcom/gamevil/nexus2/xml/NexusTorchwood$3;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood$3;-><init>(Lcom/gamevil/nexus2/xml/NexusTorchwood;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 399
    .restart local v0    # "alert":Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 400
    new-instance v2, Lcom/gamevil/nexus2/xml/NexusTorchwood$4;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood$4;-><init>(Lcom/gamevil/nexus2/xml/NexusTorchwood;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 406
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 408
    .end local v0    # "alert":Landroid/app/Dialog;
    :cond_5
    iget v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 410
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/NexusGLActivity;->handleMessage()V

    .line 411
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 412
    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 413
    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 414
    new-instance v3, Lcom/gamevil/nexus2/xml/NexusTorchwood$5;

    invoke-direct {v3, p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood$5;-><init>(Lcom/gamevil/nexus2/xml/NexusTorchwood;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 421
    .restart local v0    # "alert":Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 422
    new-instance v2, Lcom/gamevil/nexus2/xml/NexusTorchwood$6;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood$6;-><init>(Lcom/gamevil/nexus2/xml/NexusTorchwood;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 428
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public read()I
    .locals 11

    .prologue
    .line 603
    const/4 v7, 0x0

    .line 604
    .local v7, "rtn":I
    const/4 v0, 0x0

    .line 605
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 606
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    check-cast v3, [B

    .line 609
    .local v3, "dataBytes":[B
    :try_start_0
    iget-object v9, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    const-string v10, "data"

    invoke-virtual {v9, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 611
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v9

    new-array v2, v9, [B

    .line 612
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 615
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "readLen":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    .line 619
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 620
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 621
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 623
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    .line 624
    .local v8, "strData":Ljava/lang/String;
    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    .line 625
    iget-object v9, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    const/4 v10, 0x5

    aget-byte v7, v9, v10

    move-object v0, v1

    .line 638
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v6    # "readLen":I
    .end local v8    # "strData":Ljava/lang/String;
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_1
    return v7

    .line 616
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v6    # "readLen":I
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 627
    .end local v6    # "readLen":I
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 628
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v4, "e1":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    if-eqz v5, :cond_2

    .line 631
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 632
    :cond_2
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 634
    :catch_1
    move-exception v9

    goto :goto_1

    .line 627
    .end local v4    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public releaseAll()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->releaseDataList()V

    .line 116
    return-void
.end method

.method public save(B)V
    .locals 5
    .param p1, "_state"    # B

    .prologue
    .line 567
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    const/4 v3, 0x5

    aput-byte p1, v2, v3

    .line 568
    const/4 v1, 0x0

    .line 570
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->mContext:Landroid/content/Context;

    const-string v3, "data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 572
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood;->sbuffer:[B

    invoke-static {v2}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 578
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    if-eqz v1, :cond_0

    .line 589
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    if-eqz v1, :cond_0

    .line 589
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 590
    :catch_1
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 584
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 586
    if-eqz v1, :cond_0

    .line 589
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 590
    :catch_3
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 586
    if-eqz v1, :cond_1

    .line 589
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 595
    :cond_1
    :goto_1
    throw v2

    .line 590
    :catch_4
    move-exception v0

    .line 592
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 592
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
