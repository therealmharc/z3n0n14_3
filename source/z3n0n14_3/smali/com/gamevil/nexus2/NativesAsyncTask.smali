.class public Lcom/gamevil/nexus2/NativesAsyncTask;
.super Landroid/os/AsyncTask;
.source "NativesAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field m_bCancelled:Z

.field public m_nTimeOut:I

.field public m_nTimeStemp:I

.field public m_nTimerIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    iput v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    .line 12
    iput v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    .line 13
    iput-boolean v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_bCancelled:Z

    .line 14
    iput v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeStemp:I

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeOut"    # I

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    iput v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    .line 12
    iput v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    .line 13
    iput-boolean v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_bCancelled:Z

    .line 14
    iput v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeStemp:I

    .line 23
    iput p1, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    .line 24
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "in"    # [Ljava/lang/Integer;

    .prologue
    .line 49
    iget v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/NativesAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_bCancelled:Z

    .line 72
    return-void
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "in"    # Ljava/lang/Integer;

    .prologue
    .line 56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+---------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| NativesAsyncTask TimerCallBack Idx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " END CALLBACK time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeStemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeStemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+---------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_bCancelled:Z

    if-nez v0, :cond_0

    .line 62
    iget v0, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    iget v1, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeStemp:I

    invoke-static {v0, v1}, Lcom/gamevil/nexus2/Natives;->NativeAsyncTimerCallBackTimeStemp(II)V

    .line 64
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/NativesAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTimeOut(II)V
    .locals 3
    .param p1, "time"    # I
    .param p2, "timerIndex"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    .line 29
    iput p2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+---------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| NativesAsyncTask setTimeOut Idx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " END CALLBACK time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+---------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setTimeOut(III)V
    .locals 3
    .param p1, "time"    # I
    .param p2, "timerIndex"    # I
    .param p3, "timeStemp"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    .line 38
    iput p2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    .line 39
    iput p3, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeStemp:I

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+---------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| NativesAsyncTask setTimeOut Idx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " END CALLBACK time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gamevil/nexus2/NativesAsyncTask;->m_nTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeStemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+---------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    return-void
.end method
