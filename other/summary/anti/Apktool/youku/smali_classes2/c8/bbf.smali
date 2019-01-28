.class public Lc8/bbf;
.super Lc8/dbf;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/abf;
    }
.end annotation


# instance fields
.field private mDestroyOnClose:Z

.field private final mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 18
    invoke-direct {p0}, Lc8/dbf;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/bbf;->mDestroyOnClose:Z

    .line 228
    const-string/jumbo v0, "leveldbjni"

    invoke-static {v0}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lc8/bbf;->mPath:Ljava/io/File;

    .line 24
    return-void
.end method

.method static synthetic access$000(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 7
    invoke-static {p0, p1, p2, p3}, Lc8/bbf;->nativeReleaseSnapshot(JJ)V

    return-void
.end method

.method public static destroy(Ljava/io/File;)V
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 192
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bbf;->nativeDestroy(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeDelete(J[B)V
.end method

.method private static native nativeDestroy(Ljava/lang/String;)V
.end method

.method private static native nativeGet(JJLjava/nio/ByteBuffer;)[B
.end method

.method private static native nativeGet(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
.end method

.method private static native nativeGet(JJ[B)[B
.end method

.method private static native nativeGet(JJ[B[B)[B
.end method

.method private static native nativeGetSnapshot(J)J
.end method

.method private static native nativeIterator(JJ)J
.end method

.method private static native nativeOpen(Ljava/lang/String;)J
.end method

.method private static native nativePut(J[B[B)V
.end method

.method private static native nativeReleaseSnapshot(JJ)V
.end method

.method private static native nativeWrite(JJ)V
.end method

.method private static native nativevagueGet(JJLjava/nio/ByteBuffer;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativevagueGet(JJ[B)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[B)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native stringFromJNI()Ljava/lang/String;
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0}, Lc8/dbf;->close()V

    return-void
.end method

.method protected closeNativeObject(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 32
    invoke-static {p1, p2}, Lc8/bbf;->nativeClose(J)V

    .line 34
    iget-boolean v0, p0, Lc8/bbf;->mDestroyOnClose:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lc8/bbf;->mPath:Ljava/io/File;

    invoke-static {v0}, Lc8/bbf;->destroy(Ljava/io/File;)V

    .line 37
    :cond_0
    return-void
.end method

.method public delete([B)V
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 130
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget-wide v0, p0, Lc8/bbf;->mPtr:J

    invoke-static {v0, v1, p1}, Lc8/bbf;->nativeDelete(J[B)V

    .line 136
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bbf;->mDestroyOnClose:Z

    .line 186
    invoke-virtual {p0}, Lc8/bbf;->getPtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lc8/bbf;->mPath:Ljava/io/File;

    invoke-static {v0}, Lc8/bbf;->destroy(Ljava/io/File;)V

    .line 189
    :cond_0
    return-void
.end method

.method public get(Lc8/abf;Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "snapshot"    # Lc8/abf;
    .param p2, "key"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 103
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 104
    if-nez p2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    iget-wide v2, p0, Lc8/bbf;->mPtr:J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/abf;->getPtr()J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v3, v0, v1, p2}, Lc8/bbf;->nativeGet(JJLjava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public get(Lc8/abf;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
    .locals 6
    .param p1, "snapshot"    # Lc8/abf;
    .param p2, "prikey"    # Ljava/nio/ByteBuffer;
    .param p3, "seckey"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 112
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 113
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :cond_1
    iget-wide v0, p0, Lc8/bbf;->mPtr:J

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc8/abf;->getPtr()J

    move-result-wide v2

    :goto_0
    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lc8/bbf;->nativeGet(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public get(Lc8/abf;[B)[B
    .locals 4
    .param p1, "snapshot"    # Lc8/abf;
    .param p2, "key"    # [B

    .prologue
    .line 64
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_0
    iget-wide v2, p0, Lc8/bbf;->mPtr:J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/abf;->getPtr()J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v3, v0, v1, p2}, Lc8/bbf;->nativeGet(JJ[B)[B

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public get(Lc8/abf;[B[B)[B
    .locals 6
    .param p1, "snapshot"    # Lc8/abf;
    .param p2, "prikey"    # [B
    .param p3, "seckey"    # [B

    .prologue
    .line 73
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 74
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_1
    iget-wide v0, p0, Lc8/bbf;->mPtr:J

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc8/abf;->getPtr()J

    move-result-wide v2

    :goto_0
    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lc8/bbf;->nativeGet(JJ[B[B)[B

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public get(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p1, "key"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 91
    const/4 v0, 0x0

    check-cast v0, Lc8/abf;

    invoke-virtual {p0, v0, p1}, Lc8/bbf;->get(Lc8/abf;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p1, "prikey"    # Ljava/nio/ByteBuffer;
    .param p2, "seckey"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lc8/bbf;->get(Lc8/abf;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public get([B)[B
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 52
    const/4 v0, 0x0

    check-cast v0, Lc8/abf;

    invoke-virtual {p0, v0, p1}, Lc8/bbf;->get(Lc8/abf;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public get([B[B)[B
    .locals 1
    .param p1, "prikey"    # [B
    .param p2, "seckey"    # [B

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lc8/bbf;->get(Lc8/abf;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSnapshot()Lc8/abf;
    .locals 4

    .prologue
    .line 174
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lc8/bbf;->ref()V

    .line 176
    new-instance v0, Lc8/Zaf;

    iget-wide v2, p0, Lc8/bbf;->mPtr:J

    invoke-static {v2, v3}, Lc8/bbf;->nativeGetSnapshot(J)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lc8/Zaf;-><init>(Lc8/bbf;J)V

    return-object v0
.end method

.method public iterator()Lc8/cbf;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/bbf;->iterator(Lc8/abf;)Lc8/cbf;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lc8/abf;)Lc8/cbf;
    .locals 6
    .param p1, "snapshot"    # Lc8/abf;

    .prologue
    .line 152
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lc8/bbf;->ref()V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lc8/abf;->ref()V

    .line 160
    :cond_0
    new-instance v2, Lc8/Yaf;

    iget-wide v4, p0, Lc8/bbf;->mPtr:J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/abf;->getPtr()J

    move-result-wide v0

    :goto_0
    invoke-static {v4, v5, v0, v1}, Lc8/bbf;->nativeIterator(JJ)J

    move-result-wide v0

    invoke-direct {v2, p0, v0, v1, p1}, Lc8/Yaf;-><init>(Lc8/bbf;JLc8/abf;)V

    return-object v2

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lc8/bbf;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bbf;->nativeOpen(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/bbf;->mPtr:J

    .line 28
    return-void
.end method

.method public put([B[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 40
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iget-wide v0, p0, Lc8/bbf;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lc8/bbf;->nativePut(J[B[B)V

    .line 49
    return-void
.end method

.method public vagueget(Lc8/abf;Ljava/nio/ByteBuffer;)Ljava/util/HashMap;
    .locals 4
    .param p1, "snapshot"    # Lc8/abf;
    .param p2, "pattern"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 121
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 122
    if-nez p2, :cond_0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 126
    :cond_0
    iget-wide v2, p0, Lc8/bbf;->mPtr:J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/abf;->getPtr()J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v3, v0, v1, p2}, Lc8/bbf;->nativevagueGet(JJLjava/nio/ByteBuffer;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public vagueget(Lc8/abf;[B)Ljava/util/HashMap;
    .locals 4
    .param p1, "snapshot"    # Lc8/abf;
    .param p2, "pattern"    # [B

    .prologue
    .line 82
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 83
    if-nez p2, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-wide v2, p0, Lc8/bbf;->mPtr:J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/abf;->getPtr()J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v3, v0, v1, p2}, Lc8/bbf;->nativevagueGet(JJ[B)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public vagueget(Ljava/nio/ByteBuffer;)Ljava/util/HashMap;
    .locals 1
    .param p1, "pattern"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 99
    const/4 v0, 0x0

    check-cast v0, Lc8/abf;

    invoke-virtual {p0, v0, p1}, Lc8/bbf;->vagueget(Lc8/abf;Ljava/nio/ByteBuffer;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public vagueget([B)Ljava/util/HashMap;
    .locals 1
    .param p1, "pattern"    # [B

    .prologue
    .line 60
    const/4 v0, 0x0

    check-cast v0, Lc8/abf;

    invoke-virtual {p0, v0, p1}, Lc8/bbf;->vagueget(Lc8/abf;[B)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/ebf;)V
    .locals 4
    .param p1, "batch"    # Lc8/ebf;

    .prologue
    .line 139
    const-string/jumbo v0, "Database is closed"

    invoke-virtual {p0, v0}, Lc8/bbf;->assertOpen(Ljava/lang/String;)V

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 144
    :cond_0
    iget-wide v0, p0, Lc8/bbf;->mPtr:J

    invoke-virtual {p1}, Lc8/ebf;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lc8/bbf;->nativeWrite(JJ)V

    .line 145
    return-void
.end method
