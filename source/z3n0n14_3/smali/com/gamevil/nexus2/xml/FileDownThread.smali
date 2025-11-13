.class public Lcom/gamevil/nexus2/xml/FileDownThread;
.super Ljava/lang/Thread;
.source "FileDownThread.java"


# static fields
.field private static final NORMAL:I = 0x0

.field private static final PAUSE:I = 0x1

.field private static final RESUME:I = 0x2


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:I

.field private mFileUrl:Ljava/lang/String;

.field private request:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileSize"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->request:I

    .line 32
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileUrl:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileSize:I

    .line 36
    return-void
.end method

.method private GetPauseRequest()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget v1, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->request:I

    if-ne v1, v0, :cond_0

    .line 230
    monitor-exit p0

    .line 232
    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private waitIfPauseRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget v0, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->request:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    return-void
.end method


# virtual methods
.method public declared-synchronized pauseWork()V
    .locals 2

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    const-string v0, "#Native#"

    const-string v1, "FileDownThread.java > pauseWork()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->request:I

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeWork()V
    .locals 2

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    const-string v0, "#Native#"

    const-string v1, "FileDownThread.java > resumeWork()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget v0, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->request:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 245
    const-string v0, "#Native#"

    const-string v1, "FileDownThread.java > resumeWork() > RESUME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lcom/gamevil/nexus2/xml/FileDownThread;->request:I

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 40
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v18, "File Downloading..."

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->reportShowProgress(Ljava/lang/String;)V

    .line 42
    const-string v17, "#Native#"

    const-string v18, "FileDownThread.java > GetFileFormHttp() Begin"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v17, "#Native#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "FileDownThread.java > GetFileFormHttp( "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 45
    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileSize:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " )"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 43
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v9, 0x0

    .line 51
    .local v9, "issdcard":Z
    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->getExteranlMemoryAvailableSize()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileSize:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    const v17, 0x1f4000

    :goto_0
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-lez v17, :cond_2

    .line 53
    const-string v2, "/sdcard/gamevil/"

    .line 54
    .local v2, "Savepath":Ljava/lang/String;
    const/4 v9, 0x1

    .line 64
    :goto_1
    const-string v17, "#Native#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "FileDownThread.java > path = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, "bZipFile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ".*.zip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 71
    const/4 v3, 0x1

    .line 75
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/gamevil/nexus2/xml/NexusUtils;->makeFolder(ZLjava/lang/String;)I

    move-result v11

    .line 76
    .local v11, "makeResult":I
    if-eqz v3, :cond_6

    if-gez v11, :cond_6

    .line 78
    new-instance v7, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_5

    .line 82
    sget v17, Lcom/gamevil/nexus2/xml/NexusUtils;->ERROR_FAIL:I

    sput v17, Lcom/gamevil/nexus2/xml/NexusUtils;->mFileDownRet:I

    .line 83
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportFailure()V

    .line 216
    :goto_2
    return-void

    .line 51
    .end local v2    # "Savepath":Ljava/lang/String;
    .end local v3    # "bZipFile":Z
    .end local v7    # "file":Ljava/io/File;
    .end local v11    # "makeResult":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileSize:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    goto/16 :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->getAvailableInternalMemorySize()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileSize:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    const v17, 0x1f4000

    :goto_3
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-gez v17, :cond_3

    .line 59
    const/16 v17, -0x1

    sput v17, Lcom/gamevil/nexus2/xml/NexusUtils;->mFileDownRet:I

    .line 61
    :cond_3
    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->GetAbsolutPath()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "Savepath":Ljava/lang/String;
    goto/16 :goto_1

    .line 58
    .end local v2    # "Savepath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileSize:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    goto :goto_3

    .line 89
    .restart local v2    # "Savepath":Ljava/lang/String;
    .restart local v3    # "bZipFile":Z
    .restart local v7    # "file":Ljava/io/File;
    .restart local v11    # "makeResult":I
    :cond_5
    sget v17, Lcom/gamevil/nexus2/xml/NexusUtils;->ERROR_MAKEFOLDER_FAIL:I

    sput v17, Lcom/gamevil/nexus2/xml/NexusUtils;->mFileDownRet:I

    .line 90
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportFailure()V

    goto :goto_2

    .line 95
    .end local v7    # "file":Ljava/io/File;
    :cond_6
    const/4 v14, 0x0

    .line 96
    .local v14, "out":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 97
    .local v5, "conn":Ljava/net/URLConnection;
    const/4 v8, 0x0

    .line 98
    .local v8, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 102
    .local v13, "numWritten":I
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    .local v16, "url":Ljava/net/URL;
    const-string v17, "#Native#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "FileDownThread.java > Path = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v15, Ljava/io/BufferedOutputStream;

    new-instance v17, Ljava/io/FileOutputStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v14    # "out":Ljava/io/OutputStream;
    .local v15, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 106
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 108
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    .line 111
    .local v10, "lenghtOfFile":I
    const/16 v17, 0x800

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 114
    .local v4, "buffer":[B
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/gamevil/nexus2/NexusGLActivity;->reportStart(I)V

    .line 116
    :goto_4
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "numRead":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_c

    .line 126
    const-string v17, "#Native#"

    const-string v18, "FileDownThread.java > while end"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eq v10, v13, :cond_f

    .line 131
    const-string v17, "#FileSize#"

    const-string v18, "FileDownThread.java > lenghtOfFile != numWritten"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v17, "#FileSize#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, ">>>>> lenghtOfFile = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v17, "#FileSize#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, ">>>>> numWritten = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_5
    new-instance v7, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v7    # "file":Ljava/io/File;
    const-string v17, "#FileSize#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "FileDownThread.java > file.length()"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    if-eqz v8, :cond_7

    .line 174
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_7
    if-eqz v15, :cond_14

    .line 177
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v14, v15

    .line 186
    .end local v4    # "buffer":[B
    .end local v10    # "lenghtOfFile":I
    .end local v12    # "numRead":I
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v14    # "out":Ljava/io/OutputStream;
    :cond_8
    :goto_6
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportSuccess()V

    .line 188
    if-eqz v3, :cond_a

    if-lez v13, :cond_a

    .line 190
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportUnziping()V

    .line 192
    const-string v17, "#Native#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "FileDownThread.java > bZipFile = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/gamevil/nexus2/xml/NexusUtils;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 195
    sget v13, Lcom/gamevil/nexus2/xml/NexusUtils;->ERROR_UNZIP_FAIL:I

    .line 196
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportFailure()V

    .line 199
    :cond_9
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportSuccess()V

    .line 202
    :cond_a
    const-string v17, "#Native#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "FileDownThread.java > numWritten = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/gamevil/nexus2/xml/FileDownThread;->GetPauseRequest()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 207
    sget v13, Lcom/gamevil/nexus2/xml/NexusUtils;->ERROR_FAIL:I

    .line 208
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportFailure()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6

    .line 215
    :cond_b
    :goto_7
    sput v13, Lcom/gamevil/nexus2/xml/NexusUtils;->mFileDownRet:I

    goto/16 :goto_2

    .line 117
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v4    # "buffer":[B
    .restart local v10    # "lenghtOfFile":I
    .restart local v12    # "numRead":I
    .restart local v15    # "out":Ljava/io/OutputStream;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_c
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/gamevil/nexus2/xml/FileDownThread;->waitIfPauseRequest()V

    .line 120
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v4, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 121
    add-int/2addr v13, v12

    .line 123
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/gamevil/nexus2/NexusGLActivity;->reportProgress(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    .line 145
    .end local v4    # "buffer":[B
    .end local v10    # "lenghtOfFile":I
    .end local v12    # "numRead":I
    :catch_0
    move-exception v6

    move-object v14, v15

    .line 147
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v16    # "url":Ljava/net/URL;
    .local v6, "e":Ljava/lang/InterruptedException;
    .restart local v14    # "out":Ljava/io/OutputStream;
    :goto_8
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 150
    new-instance v7, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 152
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 154
    :cond_d
    sget v13, Lcom/gamevil/nexus2/xml/NexusUtils;->ERROR_DOWNLOAD_FAIL:I

    .line 155
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportFailure()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    if-eqz v8, :cond_e

    .line 174
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_e
    if-eqz v14, :cond_8

    .line 177
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    .line 180
    :catch_1
    move-exception v6

    .line 182
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 137
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v4    # "buffer":[B
    .restart local v10    # "lenghtOfFile":I
    .restart local v12    # "numRead":I
    .restart local v15    # "out":Ljava/io/OutputStream;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_f
    :try_start_7
    const-string v17, "#FileSize#"

    const-string v18, "FileDownThread.java > lenghtOfFile == numWritten"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v17, "#FileSize#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, ">>>>> lenghtOfFile = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v17, "#FileSize#"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, ">>>>> numWritten = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    .line 157
    .end local v4    # "buffer":[B
    .end local v10    # "lenghtOfFile":I
    .end local v12    # "numRead":I
    :catch_2
    move-exception v6

    move-object v14, v15

    .line 159
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v16    # "url":Ljava/net/URL;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v14    # "out":Ljava/io/OutputStream;
    :goto_9
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    new-instance v7, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/FileDownThread;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 164
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 166
    :cond_10
    sget v13, Lcom/gamevil/nexus2/xml/NexusUtils;->ERROR_DOWNLOAD_FAIL:I

    .line 167
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/gamevil/nexus2/NexusGLActivity;->reportFailure()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 173
    if-eqz v8, :cond_11

    .line 174
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_11
    if-eqz v14, :cond_8

    .line 177
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_6

    .line 180
    :catch_3
    move-exception v6

    .line 182
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 170
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    :catchall_0
    move-exception v17

    .line 173
    :goto_a
    if-eqz v8, :cond_12

    .line 174
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_12
    if-eqz v14, :cond_13

    .line 177
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 184
    :cond_13
    :goto_b
    throw v17

    .line 180
    :catch_4
    move-exception v6

    .line 182
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 180
    .end local v6    # "e":Ljava/io/IOException;
    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v4    # "buffer":[B
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "lenghtOfFile":I
    .restart local v12    # "numRead":I
    .restart local v15    # "out":Ljava/io/OutputStream;
    .restart local v16    # "url":Ljava/net/URL;
    :catch_5
    move-exception v6

    .line 182
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    :cond_14
    move-object v14, v15

    .end local v15    # "out":Ljava/io/OutputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    goto/16 :goto_6

    .line 210
    .end local v4    # "buffer":[B
    .end local v10    # "lenghtOfFile":I
    .end local v12    # "numRead":I
    .end local v16    # "url":Ljava/net/URL;
    :catch_6
    move-exception v6

    .line 212
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 170
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v15    # "out":Ljava/io/OutputStream;
    .restart local v16    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v17

    move-object v14, v15

    .end local v15    # "out":Ljava/io/OutputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    goto :goto_a

    .line 157
    .end local v16    # "url":Ljava/net/URL;
    :catch_7
    move-exception v6

    goto :goto_9

    .line 145
    :catch_8
    move-exception v6

    goto/16 :goto_8
.end method
