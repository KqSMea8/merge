.class public Lc8/ebf;
.super Lc8/dbf;
.source "WriteBatch.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-static {}, Lc8/ebf;->nativeCreate()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lc8/dbf;-><init>(J)V

    .line 8
    return-void
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDelete(JLjava/nio/ByteBuffer;)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativePut(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "WriteBatch is closed"

    invoke-virtual {p0, v0}, Lc8/ebf;->assertOpen(Ljava/lang/String;)V

    .line 38
    iget-wide v0, p0, Lc8/ebf;->mPtr:J

    invoke-static {v0, v1}, Lc8/ebf;->nativeClear(J)V

    .line 39
    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 5
    invoke-super {p0}, Lc8/dbf;->close()V

    return-void
.end method

.method protected closeNativeObject(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 12
    invoke-static {p1, p2}, Lc8/ebf;->nativeDestroy(J)V

    .line 13
    return-void
.end method

.method public delete(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "key"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 16
    const-string/jumbo v0, "WriteBatch is closed"

    invoke-virtual {p0, v0}, Lc8/ebf;->assertOpen(Ljava/lang/String;)V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iget-wide v0, p0, Lc8/ebf;->mPtr:J

    invoke-static {v0, v1, p1}, Lc8/ebf;->nativeDelete(JLjava/nio/ByteBuffer;)V

    .line 22
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "key"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 25
    const-string/jumbo v0, "WriteBatch is closed"

    invoke-virtual {p0, v0}, Lc8/ebf;->assertOpen(Ljava/lang/String;)V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    iget-wide v0, p0, Lc8/ebf;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lc8/ebf;->nativePut(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 34
    return-void
.end method
