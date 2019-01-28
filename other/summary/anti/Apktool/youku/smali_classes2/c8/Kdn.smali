.class public Lc8/Kdn;
.super Ljava/lang/Thread;
.source "BaseFileDownloadThread.java"


# instance fields
.field protected cancel:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Kdn;->cancel:Z

    .line 13
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Kdn;->cancel:Z

    .line 17
    return-void
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lc8/Kdn;->cancel:Z

    return v0
.end method
