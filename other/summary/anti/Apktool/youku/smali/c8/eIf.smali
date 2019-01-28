.class public Lc8/eIf;
.super Ljava/lang/Object;
.source "LogCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dIf;
    }
.end annotation


# static fields
.field private static API_INVORK_COUNT:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final DEFAULT_LOG_LENGTH:I = 0x200

.field private static final FLUSH_BUFFER:I = 0x2

.field private static final PRIORITY:I = 0x5

.field private static final PROFESSION_LOG:I = 0x9

.field private static final REAL_TIME:I = 0x4

.field private static final RENAME_FILE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TLog.LogCache"

.field private static final WRITE_FILE:I = 0x1

.field private static instance:Lc8/eIf;


# instance fields
.field private volatile isInited:Z

.field private mBuffer:Ljava/lang/StringBuilder;

.field private mFileWriter:Lc8/gIf;

.field private mFormatBuffer:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMemoryLimit:J

.field private mMessageQueueSize:J

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc8/eIf;->API_INVORK_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Lc8/eIf;

    invoke-direct {v0}, Lc8/eIf;-><init>()V

    sput-object v0, Lc8/eIf;->instance:Lc8/eIf;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x200

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/eIf;->isInited:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/eIf;->mMessageQueueSize:J

    .line 44
    const-wide/32 v0, 0x7d000

    iput-wide v0, p0, Lc8/eIf;->mMemoryLimit:J

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc8/eIf;->mFormatBuffer:Ljava/lang/StringBuilder;

    .line 48
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lc8/eIf;->mFormatBuffer:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lc8/eIf;->mFormatter:Ljava/util/Formatter;

    .line 50
    const/16 v0, 0x13

    iput v0, p0, Lc8/eIf;->mPriority:I

    .line 52
    return-void
.end method

.method static synthetic access$022(Lc8/eIf;J)J
    .locals 3
    .param p0, "x0"    # Lc8/eIf;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iget-wide v0, p0, Lc8/eIf;->mMessageQueueSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lc8/eIf;->mMessageQueueSize:J

    return-wide v0
.end method

.method static synthetic access$100(Lc8/eIf;Lc8/BHf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/eIf;
    .param p1, "x1"    # Lc8/BHf;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lc8/eIf;->formatTLog(Lc8/BHf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/eIf;)Lc8/gIf;
    .locals 1
    .param p0, "x0"    # Lc8/eIf;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/eIf;->mFileWriter:Lc8/gIf;

    return-object v0
.end method

.method static synthetic access$202(Lc8/eIf;Lc8/gIf;)Lc8/gIf;
    .locals 0
    .param p0, "x0"    # Lc8/eIf;
    .param p1, "x1"    # Lc8/gIf;

    .prologue
    .line 23
    iput-object p1, p0, Lc8/eIf;->mFileWriter:Lc8/gIf;

    return-object p1
.end method

.method static synthetic access$300(Lc8/eIf;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/eIf;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lc8/eIf;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lc8/eIf;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/eIf;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private formatTLog(Lc8/BHf;)Ljava/lang/String;
    .locals 6
    .param p1, "tLogEntity"    # Lc8/BHf;

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-object v1

    .line 68
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 69
    iget-object v2, p1, Lc8/BHf;->logLevel:Lcom/taobao/tao/log/LogLevel;

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->logLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v3}, Lcom/taobao/tao/log/LogLevel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lc8/BHf;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->serverID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lc8/BHf;->serialnumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    iget-object v2, p1, Lc8/BHf;->format:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 87
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v2, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    .line 89
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->format:Ljava/lang/String;

    iget-object v4, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v2, p0, Lc8/eIf;->mFormatBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc8/eIf;->mFormatter:Ljava/util/Formatter;

    iget-object v4, p1, Lc8/BHf;->format:Ljava/lang/String;

    iget-object v5, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_4
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-object v3, Lc8/zHf;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lc8/eIf;->mBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 100
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public static getInstance()Lc8/eIf;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lc8/eIf;->instance:Lc8/eIf;

    return-object v0
.end method


# virtual methods
.method public flushBuffer()V
    .locals 2

    .prologue
    .line 301
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 303
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 304
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 306
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getAPIInvorkCountAndClear()I
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lc8/eIf;->API_INVORK_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    return v0
.end method

.method public getCurrentFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lc8/eIf;->mFileWriter:Lc8/gIf;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lc8/eIf;->mFileWriter:Lc8/gIf;

    invoke-virtual {v0}, Lc8/gIf;->getCurrentFileName()Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMemoryLog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Lc8/dIf;

    invoke-direct {v0, p0, v1}, Lc8/dIf;-><init>(Lc8/eIf;Ljava/lang/StringBuilder;)V

    .line 335
    .local v0, "printer":Lc8/dIf;
    iget-object v2, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The message queue log is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized init()V
    .locals 5

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lc8/eIf;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "LogCache"

    iget v4, p0, Lc8/eIf;->mPriority:I

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lc8/eIf;->mHandlerThread:Landroid/os/HandlerThread;

    .line 111
    iget-object v2, p0, Lc8/eIf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v2, Lc8/cIf;

    iget-object v3, p0, Lc8/eIf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lc8/cIf;-><init>(Lc8/eIf;Landroid/os/Looper;)V

    iput-object v2, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    .line 190
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/eIf;->isInited:Z

    .line 192
    iget-object v2, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 193
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Lc8/BHf;

    invoke-direct {v0}, Lc8/BHf;-><init>()V

    .line 194
    .local v0, "entity":Lc8/BHf;
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    iput-object v2, v0, Lc8/BHf;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 195
    const-string/jumbo v2, "StartRecordLog"

    iput-object v2, v0, Lc8/BHf;->tag:Ljava/lang/String;

    .line 196
    const-string/jumbo v2, "C"

    iput-object v2, v0, Lc8/BHf;->type:Ljava/lang/String;

    .line 197
    const-string/jumbo v2, ""

    iput-object v2, v0, Lc8/BHf;->clientID:Ljava/lang/String;

    .line 198
    const-string/jumbo v2, ""

    iput-object v2, v0, Lc8/BHf;->serverID:Ljava/lang/String;

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/BHf;->timestamp:J

    .line 200
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lc8/BHf;->serialnumber:J

    .line 201
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "start to record tlog!"

    aput-object v4, v2, v3

    iput-object v2, v0, Lc8/BHf;->content:[Ljava/lang/Object;

    .line 202
    invoke-static {v0}, Lc8/IHf;->countLengthOfLog(Lc8/BHf;)I

    move-result v2

    iput v2, v0, Lc8/BHf;->length:I

    .line 203
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 206
    iget-object v2, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "entity":Lc8/BHf;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isMemoryLimit()Z
    .locals 4

    .prologue
    .line 273
    iget-wide v0, p0, Lc8/eIf;->mMessageQueueSize:J

    iget-wide v2, p0, Lc8/eIf;->mMemoryLimit:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 274
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Lc8/BHf;Ljava/lang/String;)V
    .locals 6
    .param p1, "entity"    # Lc8/BHf;
    .param p2, "catgory"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-boolean v1, p0, Lc8/eIf;->isInited:Z

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lc8/eIf;->init()V

    .line 215
    :cond_0
    iget-boolean v1, p0, Lc8/eIf;->isInited:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-wide v2, p0, Lc8/eIf;->mMessageQueueSize:J

    iget v1, p1, Lc8/BHf;->length:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/eIf;->mMessageQueueSize:J

    .line 221
    const-string/jumbo v1, "normal"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    sget-object v1, Lc8/eIf;->API_INVORK_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 225
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    invoke-static {}, Lc8/bIf;->getInstance()Lc8/bIf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/bIf;->isRealTimeChannalOver()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 237
    :cond_3
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 243
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 244
    .restart local v0    # "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 247
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public renameLogFile()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 324
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 326
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setMemoryLimit(J)V
    .locals 1
    .param p1, "upperLimit"    # J

    .prologue
    .line 285
    iput-wide p1, p0, Lc8/eIf;->mMemoryLimit:J

    .line 286
    return-void
.end method

.method public setThreadPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .prologue
    .line 257
    iput p1, p0, Lc8/eIf;->mPriority:I

    .line 258
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 261
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 262
    iget-object v1, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public stopLogRecording()V
    .locals 2

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/eIf;->isInited:Z

    .line 290
    iget-object v0, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lc8/eIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 294
    :cond_0
    iget-object v0, p0, Lc8/eIf;->mFileWriter:Lc8/gIf;

    if-nez v0, :cond_1

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lc8/eIf;->mFileWriter:Lc8/gIf;

    invoke-virtual {v0}, Lc8/gIf;->close()V

    goto :goto_0
.end method
