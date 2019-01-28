.class public final Lc8/hUe;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lc8/uUe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eUe;,
        Lc8/dUe;,
        Lc8/gUe;,
        Lc8/fUe;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lokio/ByteString;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lc8/eUe;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc8/hUe;->logger:Ljava/util/logging/Logger;

    .line 49
    const-string/jumbo v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 50
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/hUe;->CONNECTION_PREFACE:Lokio/ByteString;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    return-void
.end method

.method static synthetic access$000()Lokio/ByteString;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lc8/hUe;->CONNECTION_PREFACE:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lc8/hUe;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p1}, Lc8/hUe;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/aWp;)I
    .locals 1
    .param p0, "x0"    # Lc8/aWp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lc8/hUe;->readMedium(Lc8/aWp;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(IBS)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # B
    .param p2, "x2"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lc8/hUe;->lengthWithoutPadding(IBS)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 42
    invoke-static {p0, p1}, Lc8/hUe;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lc8/ZVp;I)V
    .locals 0
    .param p0, "x0"    # Lc8/ZVp;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p1}, Lc8/hUe;->writeMedium(Lc8/ZVp;I)V

    return-void
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lengthWithoutPadding(IBS)I
    .locals 4
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 644
    :cond_0
    if-le p2, p0, :cond_1

    .line 645
    const-string/jumbo v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/hUe;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 647
    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method private static readMedium(Lc8/aWp;)I
    .locals 2
    .param p0, "source"    # Lc8/aWp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-interface {p0}, Lc8/aWp;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 762
    invoke-interface {p0}, Lc8/aWp;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 763
    invoke-interface {p0}, Lc8/aWp;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static writeMedium(Lc8/ZVp;I)V
    .locals 1
    .param p0, "sink"    # Lc8/ZVp;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 768
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 769
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 770
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public newReader(Lc8/aWp;Z)Lc8/DTe;
    .locals 2
    .param p1, "source"    # Lc8/aWp;
    .param p2, "client"    # Z

    .prologue
    .line 80
    new-instance v0, Lc8/fUe;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1, p2}, Lc8/fUe;-><init>(Lc8/aWp;IZ)V

    return-object v0
.end method

.method public newWriter(Lc8/ZVp;Z)Lc8/ETe;
    .locals 1
    .param p1, "sink"    # Lc8/ZVp;
    .param p2, "client"    # Z

    .prologue
    .line 84
    new-instance v0, Lc8/gUe;

    invoke-direct {v0, p1, p2}, Lc8/gUe;-><init>(Lc8/ZVp;Z)V

    return-object v0
.end method
