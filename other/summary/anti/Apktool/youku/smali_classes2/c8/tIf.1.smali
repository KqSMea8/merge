.class public Lc8/tIf;
.super Ljava/lang/Object;
.source "TraceIDCreater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sIf;
    }
.end annotation


# instance fields
.field private mAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mClientTimestamp:J

.field private mDevicesID:Ljava/lang/String;

.field private mProcessID:Ljava/lang/String;

.field private mServiceTimestamp:J

.field private mType:C


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x43

    iput-char v0, p0, Lc8/tIf;->mType:C

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/tIf;->mAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    return-void
.end method

.method public static getInstance()Lc8/tIf;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lc8/sIf;->access$000()Lc8/tIf;

    move-result-object v0

    return-object v0
.end method

.method private getTimeInterval()J
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    .local v0, "currentTime":J
    iget-wide v2, p0, Lc8/tIf;->mClientTimestamp:J

    sub-long v2, v0, v2

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized getTraceID()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 28
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lc8/tIf;->mDevicesID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-wide v6, p0, Lc8/tIf;->mServiceTimestamp:J

    invoke-direct {p0}, Lc8/tIf;->getTimeInterval()J

    move-result-wide v8

    add-long v4, v6, v8

    .line 32
    .local v4, "time":J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v6, p0, Lc8/tIf;->mAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 34
    .local v2, "serialNum":I
    const/16 v6, 0x270f

    if-le v2, v6, :cond_0

    .line 35
    iget-object v6, p0, Lc8/tIf;->mAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 36
    iget-object v6, p0, Lc8/tIf;->mAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 38
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "serialString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v10, :cond_1

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 41
    .local v0, "length":I
    :goto_0
    if-le v10, v0, :cond_1

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 45
    .end local v0    # "length":I
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-char v6, p0, Lc8/tIf;->mType:C

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    iget-object v6, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    monitor-exit p0

    return-object v6

    .line 28
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "serialNum":I
    .end local v3    # "serialString":Ljava/lang/String;
    .end local v4    # "time":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setBaseData(Ljava/lang/String;J)Lc8/tIf;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    const/4 v2, 0x4

    .line 53
    iput-wide p2, p0, Lc8/tIf;->mServiceTimestamp:J

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/tIf;->mClientTimestamp:J

    .line 55
    iput-object p1, p0, Lc8/tIf;->mDevicesID:Ljava/lang/String;

    .line 56
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 58
    iget-object v0, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    iget-object v1, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    .line 64
    :cond_0
    return-object p0

    .line 59
    :cond_1
    iget-object v0, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 60
    :goto_0
    iget-object v0, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/tIf;->mProcessID:Ljava/lang/String;

    goto :goto_0
.end method
