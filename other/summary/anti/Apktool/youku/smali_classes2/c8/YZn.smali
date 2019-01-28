.class public Lc8/YZn;
.super Ljava/lang/Object;
.source "UUIDGen.java"


# static fields
.field private static atomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static lastMillis:J

.field private static nodeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/YZn;->atomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    sput v1, Lc8/YZn;->nodeId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private static createTimeUUIDBytes(J)[B
    .locals 8
    .param p0, "msb"    # J

    .prologue
    const/16 v6, 0x10

    .line 92
    invoke-static {}, Lc8/YZn;->getNodeMac()J

    move-result-wide v2

    .line 93
    .local v2, "lsb":J
    new-array v1, v6, [B

    .line 95
    .local v1, "uuidBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 96
    rsub-int/lit8 v4, v0, 0x7

    mul-int/lit8 v4, v4, 0x8

    ushr-long v4, p0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/16 v0, 0x8

    :goto_1
    if-ge v0, v6, :cond_1

    .line 99
    rsub-int/lit8 v4, v0, 0x7

    mul-int/lit8 v4, v4, 0x8

    ushr-long v4, v2, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_1
    return-object v1
.end method

.method public static decompose(Ljava/util/UUID;)[B
    .locals 10
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 74
    .local v4, "most":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 75
    .local v2, "least":J
    const/16 v6, 0x10

    new-array v0, v6, [B

    .line 76
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    .line 77
    rsub-int/lit8 v6, v1, 0x7

    shl-int/lit8 v6, v6, 0x3

    ushr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 78
    add-int/lit8 v6, v1, 0x8

    rsub-int/lit8 v7, v1, 0x7

    shl-int/lit8 v7, v7, 0x3

    ushr-long v8, v2, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v0
.end method

.method public static getNodeId()I
    .locals 8

    .prologue
    .line 45
    sget v6, Lc8/YZn;->nodeId:I

    if-nez v6, :cond_0

    .line 46
    invoke-static {}, Lc8/Pao;->getMacAddressAsLong()J

    move-result-wide v2

    .line 47
    .local v2, "mac":J
    const/16 v6, 0x18

    shr-long v0, v2, v6

    .line 48
    .local v0, "left8mac":J
    xor-long v4, v2, v0

    .line 49
    .local v4, "xor":J
    const-wide/32 v6, 0x186a0

    rem-long v6, v4, v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sput v6, Lc8/YZn;->nodeId:I

    .line 52
    :cond_0
    sget v6, Lc8/YZn;->nodeId:I

    return v6
.end method

.method public static getNodeMac()J
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lc8/Pao;->getMacAddressAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeAndNodeID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/YZn;->getUniqueTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%05d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lc8/YZn;->getNodeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getTimeSafe()J
    .locals 6

    .prologue
    .line 109
    const-class v3, Lc8/YZn;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, "time":J
    sget-wide v4, Lc8/YZn;->lastMillis:J

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 111
    sget-object v2, Lc8/YZn;->atomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 116
    :goto_0
    sput-wide v0, Lc8/YZn;->lastMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-wide v0

    .line 113
    :cond_0
    :try_start_1
    sget-object v2, Lc8/YZn;->atomic:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getTimeUUID()Ljava/util/UUID;
    .locals 6

    .prologue
    .line 56
    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lc8/YZn;->getTimeSafe()J

    move-result-wide v2

    invoke-static {}, Lc8/YZn;->getNodeMac()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public static getTimeUUIDBytes()[B
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lc8/YZn;->getTimeSafe()J

    move-result-wide v0

    invoke-static {v0, v1}, Lc8/YZn;->createTimeUUIDBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static getTimeUUIDBytes(J)[B
    .locals 2
    .param p0, "timeMillis"    # J

    .prologue
    .line 88
    invoke-static {}, Lc8/YZn;->getTimeSafe()J

    move-result-wide v0

    invoke-static {v0, v1}, Lc8/YZn;->createTimeUUIDBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static getUUID(Ljava/net/InetAddress;)Ljava/util/UUID;
    .locals 6
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 64
    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lc8/YZn;->getTimeSafe()J

    move-result-wide v2

    invoke-static {}, Lc8/YZn;->getNodeMac()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public static getUUID(Ljava/net/InetAddress;J)Ljava/util/UUID;
    .locals 7
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "seed"    # J

    .prologue
    .line 68
    invoke-static {}, Lc8/YZn;->getTimeSafe()J

    move-result-wide v2

    mul-long v0, v2, p1

    .line 69
    .local v0, "mostSigBits":J
    new-instance v2, Ljava/util/UUID;

    invoke-static {}, Lc8/YZn;->getNodeMac()J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2
.end method

.method public static getUUID(Ljava/nio/ByteBuffer;)Ljava/util/UUID;
    .locals 6
    .param p0, "raw"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 60
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public static getUniqueTimeMillis()J
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lc8/YZn;->getTimeSafe()J

    move-result-wide v0

    return-wide v0
.end method

.method public static uuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lc8/YZn;->uuidByTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uuidByTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 24
    invoke-static {}, Lc8/YZn;->getTimeUUIDBytes()[B

    move-result-object v3

    .line 25
    .local v3, "uuidBytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 27
    aget-byte v4, v3, v1

    and-int/lit16 v0, v4, 0xff

    .line 28
    .local v0, "b":I
    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    .line 29
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
