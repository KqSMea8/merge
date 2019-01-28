.class public Lc8/vlg;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Lc8/vlg;

.field protected static final c:Lc8/nlg;

.field private static d:Z


# instance fields
.field protected b:Lc8/mlg;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lc8/vlg;->a:Lc8/vlg;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lc8/vlg;->d:Z

    .line 43
    sget v2, Lc8/olg;->m:I

    .line 44
    sget-wide v10, Lc8/olg;->n:J

    .line 46
    invoke-static {}, Lc8/vlg;->c()Ljava/io/File;

    move-result-object v1

    .line 48
    new-instance v0, Lc8/nlg;

    sget v3, Lc8/olg;->g:I

    sget v4, Lc8/olg;->h:I

    sget-object v5, Lc8/olg;->c:Ljava/lang/String;

    sget v6, Lc8/olg;->i:I

    int-to-long v6, v6

    const/16 v8, 0xa

    sget-object v9, Lc8/olg;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lc8/nlg;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lc8/vlg;->c:Lc8/nlg;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lc8/mlg;

    sget-object v1, Lc8/vlg;->c:Lc8/nlg;

    invoke-direct {v0, v1}, Lc8/mlg;-><init>(Lc8/nlg;)V

    iput-object v0, p0, Lc8/vlg;->b:Lc8/mlg;

    .line 74
    return-void
.end method

.method public static a()Lc8/vlg;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lc8/vlg;->a:Lc8/vlg;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lc8/vlg;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lc8/vlg;->a:Lc8/vlg;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lc8/vlg;

    invoke-direct {v0}, Lc8/vlg;-><init>()V

    sput-object v0, Lc8/vlg;->a:Lc8/vlg;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lc8/vlg;->d:Z

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lc8/vlg;->a:Lc8/vlg;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lc8/vlg;->a()Lc8/vlg;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lc8/vlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lc8/vlg;->a()Lc8/vlg;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lc8/vlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 212
    const-class v1, Lc8/vlg;

    monitor-enter v1

    .line 213
    :try_start_0
    invoke-static {}, Lc8/vlg;->a()Lc8/vlg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/vlg;->d()V

    .line 214
    sget-object v0, Lc8/vlg;->a:Lc8/vlg;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    sput-object v0, Lc8/vlg;->a:Lc8/vlg;

    .line 217
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lc8/vlg;->a()Lc8/vlg;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lc8/vlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lc8/vlg;->a()Lc8/vlg;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0, p1, p2}, Lc8/vlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    return-void
.end method

.method protected static c()Ljava/io/File;
    .locals 6

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    sget-object v1, Lc8/olg;->d:Ljava/lang/String;

    .line 229
    invoke-static {}, Lc8/qlg;->b()Lc8/rlg;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v2}, Lc8/rlg;->c()J

    move-result-wide v2

    sget-wide v4, Lc8/olg;->f:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 237
    :cond_0
    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc8/kmg;->c()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lc8/vlg;->a()Lc8/vlg;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lc8/vlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lc8/vlg;->a()Lc8/vlg;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lc8/vlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lc8/vlg;->a()Lc8/vlg;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lc8/vlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v2, 0x20

    .line 77
    sget-boolean v0, Lc8/vlg;->d:Z

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lc8/kmg;->b()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SDK_VERSION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "3.1.0.lite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 83
    iget-object v0, p0, Lc8/vlg;->b:Lc8/mlg;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget-object v1, Lc8/ulg;->a:Lc8/ulg;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "openSDK_LOG"

    invoke-virtual/range {v1 .. v8}, Lc8/ulg;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget-object v1, p0, Lc8/vlg;->b:Lc8/mlg;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "openSDK_LOG"

    invoke-virtual/range {v1 .. v8}, Lc8/mlg;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lc8/vlg;->d:Z

    .line 92
    :cond_2
    sget-object v1, Lc8/ulg;->a:Lc8/ulg;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lc8/ulg;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    sget v0, Lc8/olg;->b:I

    invoke-static {v0, p1}, Lc8/plg;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lc8/vlg;->b:Lc8/mlg;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lc8/vlg;->b:Lc8/mlg;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lc8/mlg;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lc8/vlg;->b:Lc8/mlg;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lc8/vlg;->b:Lc8/mlg;

    invoke-virtual {v0}, Lc8/mlg;->a()V

    .line 247
    iget-object v0, p0, Lc8/vlg;->b:Lc8/mlg;

    invoke-virtual {v0}, Lc8/mlg;->b()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/vlg;->b:Lc8/mlg;

    .line 250
    :cond_0
    return-void
.end method
