.class public Lc8/nE;
.super Ljava/lang/Object;
.source "BlowSensor.java"


# static fields
.field public static final BLOW_HANDLER_BLOWING:I = 0x1005

.field public static final BLOW_HANDLER_FAIL:I = 0x1006


# instance fields
.field private BLOW_ACTIVI:I

.field private SAMPLE_RATE_IN_HZ:I

.field private ar:Landroid/media/AudioRecord;

.field private bs:I

.field private buffer:[B

.field private mHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field private number:I

.field private time:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lc8/nE;->bs:I

    .line 32
    const/16 v0, 0x1f40

    iput v0, p0, Lc8/nE;->SAMPLE_RATE_IN_HZ:I

    .line 33
    iput v1, p0, Lc8/nE;->number:I

    .line 35
    const-wide/16 v6, 0x1

    iput-wide v6, p0, Lc8/nE;->time:J

    .line 37
    const/16 v0, 0xbb8

    iput v0, p0, Lc8/nE;->BLOW_ACTIVI:I

    .line 40
    iput-object p1, p0, Lc8/nE;->mHandler:Landroid/os/Handler;

    .line 41
    iget v0, p0, Lc8/nE;->SAMPLE_RATE_IN_HZ:I

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lc8/nE;->bs:I

    .line 42
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lc8/nE;->SAMPLE_RATE_IN_HZ:I

    iget v5, p0, Lc8/nE;->bs:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lc8/nE;->ar:Landroid/media/AudioRecord;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lc8/nE;)V
    .locals 0
    .param p0, "x0"    # Lc8/nE;

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/nE;->recordBlow()V

    return-void
.end method

.method private recordBlow()V
    .locals 12

    .prologue
    .line 48
    :try_start_0
    iget v8, p0, Lc8/nE;->number:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lc8/nE;->number:I

    .line 49
    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    .local v0, "currenttime":J
    iget-object v8, p0, Lc8/nE;->ar:Landroid/media/AudioRecord;

    iget-object v9, p0, Lc8/nE;->buffer:[B

    const/4 v10, 0x0

    iget v11, p0, Lc8/nE;->bs:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioRecord;->read([BII)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 52
    .local v5, "r":I
    const/4 v6, 0x0

    .line 53
    .local v6, "v":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Lc8/nE;->buffer:[B

    array-length v8, v8

    if-ge v4, v8, :cond_0

    .line 54
    iget-object v8, p0, Lc8/nE;->buffer:[B

    aget-byte v8, v8, v4

    iget-object v9, p0, Lc8/nE;->buffer:[B

    aget-byte v9, v9, v4

    mul-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_0
    div-int v7, v6, v5

    .line 57
    .local v7, "value":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    .local v2, "endtime":J
    iget-wide v8, p0, Lc8/nE;->time:J

    sub-long v10, v2, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lc8/nE;->time:J

    .line 59
    iget-wide v8, p0, Lc8/nE;->time:J

    const-wide/16 v10, 0x1f4

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    iget v8, p0, Lc8/nE;->number:I

    const/4 v9, 0x5

    if-le v8, v9, :cond_2

    .line 60
    :cond_1
    iget v8, p0, Lc8/nE;->BLOW_ACTIVI:I

    if-le v7, v8, :cond_2

    .line 62
    iget-object v8, p0, Lc8/nE;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1005

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    const/4 v8, 0x1

    iput v8, p0, Lc8/nE;->number:I

    .line 64
    const-wide/16 v8, 0x1

    iput-wide v8, p0, Lc8/nE;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "currenttime":J
    .end local v2    # "endtime":J
    .end local v4    # "i":I
    .end local v5    # "r":I
    .end local v6    # "v":I
    .end local v7    # "value":I
    :cond_2
    :goto_1
    return-void

    .line 68
    :catch_0
    move-exception v8

    iget-object v8, p0, Lc8/nE;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1006

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    invoke-virtual {p0}, Lc8/nE;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public start()V
    .locals 6

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lc8/nE;->ar:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 76
    iget v0, p0, Lc8/nE;->bs:I

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/nE;->buffer:[B

    .line 78
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "WVBlowTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/nE;->mTimer:Ljava/util/Timer;

    .line 79
    iget-object v0, p0, Lc8/nE;->mTimer:Ljava/util/Timer;

    new-instance v1, Lc8/mE;

    invoke-direct {v1, p0}, Lc8/mE;-><init>(Lc8/nE;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lc8/nE;->stop()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lc8/nE;->ar:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lc8/nE;->ar:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 94
    iget-object v0, p0, Lc8/nE;->ar:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lc8/nE;->bs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/nE;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lc8/nE;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 102
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
