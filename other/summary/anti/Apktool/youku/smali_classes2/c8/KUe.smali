.class public final Lc8/KUe;
.super Ljava/lang/Object;
.source "Http2xStream.java"

# interfaces
.implements Lc8/SUe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JUe;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lokio/ByteString;

.field private static final ENCODING:Lokio/ByteString;

.field private static final HOST:Lokio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lokio/ByteString;

.field private static final PROXY_CONNECTION:Lokio/ByteString;

.field private static final SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final TE:Lokio/ByteString;

.field private static final TRANSFER_ENCODING:Lokio/ByteString;

.field private static final UPGRADE:Lokio/ByteString;


# instance fields
.field private final framedConnection:Lc8/TTe;

.field private httpEngine:Lc8/QUe;

.field private stream:Lc8/YTe;

.field private final streamAllocation:Lc8/aVe;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string/jumbo v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/KUe;->CONNECTION:Lokio/ByteString;

    .line 54
    const-string/jumbo v0, "host"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/KUe;->HOST:Lokio/ByteString;

    .line 55
    const-string/jumbo v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/KUe;->KEEP_ALIVE:Lokio/ByteString;

    .line 56
    const-string/jumbo v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/KUe;->PROXY_CONNECTION:Lokio/ByteString;

    .line 57
    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/KUe;->TRANSFER_ENCODING:Lokio/ByteString;

    .line 58
    const-string/jumbo v0, "te"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/KUe;->TE:Lokio/ByteString;

    .line 59
    const-string/jumbo v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/KUe;->ENCODING:Lokio/ByteString;

    .line 60
    const-string/jumbo v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lc8/KUe;->UPGRADE:Lokio/ByteString;

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lc8/KUe;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lc8/KUe;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lc8/KUe;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lc8/KUe;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lc8/KUe;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lc8/ZTe;->TARGET_METHOD:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lc8/ZTe;->TARGET_PATH:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lc8/ZTe;->TARGET_SCHEME:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lc8/ZTe;->TARGET_AUTHORITY:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lc8/ZTe;->TARGET_HOST:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lc8/ZTe;->VERSION:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lc8/ATe;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/KUe;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lc8/KUe;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lc8/KUe;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lc8/KUe;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lc8/KUe;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lc8/KUe;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v1, v0, v7

    invoke-static {v0}, Lc8/ATe;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/KUe;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    .line 83
    const/16 v0, 0xe

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lc8/KUe;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lc8/KUe;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lc8/KUe;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lc8/KUe;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lc8/KUe;->TE:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lc8/KUe;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lc8/KUe;->ENCODING:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lc8/KUe;->UPGRADE:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lc8/ZTe;->TARGET_METHOD:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lc8/ZTe;->TARGET_PATH:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lc8/ZTe;->TARGET_SCHEME:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lc8/ZTe;->TARGET_AUTHORITY:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lc8/ZTe;->TARGET_HOST:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lc8/ZTe;->VERSION:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lc8/ATe;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/KUe;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 98
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lc8/KUe;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lc8/KUe;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lc8/KUe;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lc8/KUe;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lc8/KUe;->TE:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lc8/KUe;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lc8/KUe;->ENCODING:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lc8/KUe;->UPGRADE:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lc8/ATe;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/KUe;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lc8/aVe;Lc8/TTe;)V
    .locals 0
    .param p1, "streamAllocation"    # Lc8/aVe;
    .param p2, "framedConnection"    # Lc8/TTe;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lc8/KUe;->streamAllocation:Lc8/aVe;

    .line 115
    iput-object p2, p0, Lc8/KUe;->framedConnection:Lc8/TTe;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lc8/KUe;)Lc8/aVe;
    .locals 1
    .param p0, "x0"    # Lc8/KUe;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/KUe;->streamAllocation:Lc8/aVe;

    return-object v0
.end method

.method public static http2HeadersList(Lc8/VSe;)Ljava/util/List;
    .locals 8
    .param p0, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/VSe;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lc8/VSe;->headers()Lc8/GSe;

    move-result-object v0

    .line 201
    .local v0, "headers":Lc8/GSe;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lc8/GSe;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    new-instance v5, Lc8/ZTe;

    sget-object v6, Lc8/ZTe;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v5, Lc8/ZTe;

    sget-object v6, Lc8/ZTe;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v7

    invoke-static {v7}, Lc8/WUe;->requestPath(Lc8/JSe;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v5, Lc8/ZTe;

    sget-object v6, Lc8/ZTe;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-virtual {p0}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v7

    invoke-static {v7}, Lc8/ATe;->hostHeader(Lc8/JSe;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v5, Lc8/ZTe;

    sget-object v6, Lc8/ZTe;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v7

    invoke-virtual {v7}, Lc8/JSe;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lc8/GSe;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 209
    invoke-virtual {v0, v1}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    .line 210
    .local v2, "name":Lokio/ByteString;
    sget-object v5, Lc8/KUe;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    new-instance v5, Lc8/ZTe;

    invoke-virtual {v0, v1}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "name":Lokio/ByteString;
    :cond_1
    return-object v3
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lc8/bTe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)",
            "Lc8/bTe;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v4, 0x0

    .line 256
    .local v4, "status":Ljava/lang/String;
    new-instance v0, Lc8/FSe;

    invoke-direct {v0}, Lc8/FSe;-><init>()V

    .line 257
    .local v0, "headersBuilder":Lc8/FSe;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 258
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/ZTe;

    iget-object v2, v7, Lc8/ZTe;->name:Lokio/ByteString;

    .line 260
    .local v2, "name":Lokio/ByteString;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/ZTe;

    iget-object v7, v7, Lc8/ZTe;->value:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "value":Ljava/lang/String;
    sget-object v7, Lc8/ZTe;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v2, v7}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 262
    move-object v4, v6

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    sget-object v7, Lc8/KUe;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 264
    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    goto :goto_1

    .line 267
    .end local v2    # "name":Lokio/ByteString;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    new-instance v7, Ljava/net/ProtocolException;

    const-string/jumbo v8, "Expected \':status\' header not present"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/ZUe;->parse(Ljava/lang/String;)Lc8/ZUe;

    move-result-object v5

    .line 270
    .local v5, "statusLine":Lc8/ZUe;
    new-instance v7, Lc8/bTe;

    invoke-direct {v7}, Lc8/bTe;-><init>()V

    sget-object v8, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    .line 271
    invoke-virtual {v7, v8}, Lc8/bTe;->protocol(Lcom/squareup/okhttp/Protocol;)Lc8/bTe;

    move-result-object v7

    iget v8, v5, Lc8/ZUe;->code:I

    .line 272
    invoke-virtual {v7, v8}, Lc8/bTe;->code(I)Lc8/bTe;

    move-result-object v7

    iget-object v8, v5, Lc8/ZUe;->message:Ljava/lang/String;

    .line 273
    invoke-virtual {v7, v8}, Lc8/bTe;->message(Ljava/lang/String;)Lc8/bTe;

    move-result-object v7

    .line 274
    invoke-virtual {v0}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/bTe;->headers(Lc8/GSe;)Lc8/bTe;

    move-result-object v7

    return-object v7
.end method

.method public static readSpdy3HeadersList(Ljava/util/List;)Lc8/bTe;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)",
            "Lc8/bTe;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v6, 0x0

    .line 220
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v10, "HTTP/1.1"

    .line 221
    .local v10, "version":Ljava/lang/String;
    new-instance v1, Lc8/FSe;

    invoke-direct {v1}, Lc8/FSe;-><init>()V

    .line 222
    .local v1, "headersBuilder":Lc8/FSe;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 223
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/ZTe;

    iget-object v3, v11, Lc8/ZTe;->name:Lokio/ByteString;

    .line 225
    .local v3, "name":Lokio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/ZTe;

    iget-object v11, v11, Lc8/ZTe;->value:Lokio/ByteString;

    invoke-virtual {v11}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "values":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "start":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 227
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 228
    .local v0, "end":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_0

    .line 229
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 231
    :cond_0
    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "value":Ljava/lang/String;
    sget-object v11, Lc8/ZTe;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 233
    move-object v6, v8

    .line 239
    :cond_1
    :goto_2
    add-int/lit8 v5, v0, 0x1

    .line 240
    goto :goto_1

    .line 234
    :cond_2
    sget-object v11, Lc8/ZTe;->VERSION:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 235
    move-object v10, v8

    goto :goto_2

    .line 236
    :cond_3
    sget-object v11, Lc8/KUe;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 237
    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v8}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    goto :goto_2

    .line 222
    .end local v0    # "end":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "name":Lokio/ByteString;
    .end local v5    # "start":I
    .end local v9    # "values":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    new-instance v11, Ljava/net/ProtocolException;

    const-string/jumbo v12, "Expected \':status\' header not present"

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 244
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/ZUe;->parse(Ljava/lang/String;)Lc8/ZUe;

    move-result-object v7

    .line 245
    .local v7, "statusLine":Lc8/ZUe;
    new-instance v11, Lc8/bTe;

    invoke-direct {v11}, Lc8/bTe;-><init>()V

    sget-object v12, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    .line 246
    invoke-virtual {v11, v12}, Lc8/bTe;->protocol(Lcom/squareup/okhttp/Protocol;)Lc8/bTe;

    move-result-object v11

    iget v12, v7, Lc8/ZUe;->code:I

    .line 247
    invoke-virtual {v11, v12}, Lc8/bTe;->code(I)Lc8/bTe;

    move-result-object v11

    iget-object v12, v7, Lc8/ZUe;->message:Ljava/lang/String;

    .line 248
    invoke-virtual {v11, v12}, Lc8/bTe;->message(Ljava/lang/String;)Lc8/bTe;

    move-result-object v11

    .line 249
    invoke-virtual {v1}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v12

    invoke-virtual {v11, v12}, Lc8/bTe;->headers(Lc8/GSe;)Lc8/bTe;

    move-result-object v11

    return-object v11
.end method

.method public static spdy3HeadersList(Lc8/VSe;)Ljava/util/List;
    .locals 12
    .param p0, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/VSe;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lc8/VSe;->headers()Lc8/GSe;

    move-result-object v1

    .line 161
    .local v1, "headers":Lc8/GSe;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lc8/GSe;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    new-instance v9, Lc8/ZTe;

    sget-object v10, Lc8/ZTe;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v9, Lc8/ZTe;

    sget-object v10, Lc8/ZTe;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v11

    invoke-static {v11}, Lc8/WUe;->requestPath(Lc8/JSe;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v9, Lc8/ZTe;

    sget-object v10, Lc8/ZTe;->VERSION:Lokio/ByteString;

    const-string/jumbo v11, "HTTP/1.1"

    invoke-direct {v9, v10, v11}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v9, Lc8/ZTe;

    sget-object v10, Lc8/ZTe;->TARGET_HOST:Lokio/ByteString;

    invoke-virtual {p0}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v11

    invoke-static {v11}, Lc8/ATe;->hostHeader(Lc8/JSe;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v9, Lc8/ZTe;

    sget-object v10, Lc8/ZTe;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v11

    invoke-virtual {v11}, Lc8/JSe;->scheme()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 169
    .local v5, "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lc8/GSe;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v2, v7, :cond_3

    .line 171
    invoke-virtual {v1, v2}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    .line 174
    .local v4, "name":Lokio/ByteString;
    sget-object v9, Lc8/KUe;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 177
    invoke-virtual {v1, v2}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 179
    new-instance v9, Lc8/ZTe;

    invoke-direct {v9, v4, v8}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 185
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/ZTe;

    iget-object v9, v9, Lc8/ZTe;->name:Lokio/ByteString;

    invoke-virtual {v9, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 186
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/ZTe;

    iget-object v9, v9, Lc8/ZTe;->value:Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lc8/KUe;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v9, Lc8/ZTe;

    invoke-direct {v9, v4, v0}, Lc8/ZTe;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 184
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 192
    .end local v3    # "j":I
    .end local v4    # "name":Lokio/ByteString;
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    return-object v6
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lc8/KUe;->stream:Lc8/YTe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/KUe;->stream:Lc8/YTe;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lc8/YTe;->closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 284
    :cond_0
    return-void
.end method

.method public createRequestBody(Lc8/VSe;J)Lc8/tWp;
    .locals 1
    .param p1, "request"    # Lc8/VSe;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lc8/KUe;->stream:Lc8/YTe;

    invoke-virtual {v0}, Lc8/YTe;->getSink()Lc8/tWp;

    move-result-object v0

    return-object v0
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lc8/KUe;->stream:Lc8/YTe;

    invoke-virtual {v0}, Lc8/YTe;->getSink()Lc8/tWp;

    move-result-object v0

    invoke-interface {v0}, Lc8/tWp;->close()V

    .line 146
    return-void
.end method

.method public openResponseBody(Lc8/cTe;)Lc8/dTe;
    .locals 4
    .param p1, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lc8/JUe;

    iget-object v1, p0, Lc8/KUe;->stream:Lc8/YTe;

    invoke-virtual {v1}, Lc8/YTe;->getSource()Lc8/uWp;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/JUe;-><init>(Lc8/KUe;Lc8/uWp;)V

    .line 279
    .local v0, "source":Lc8/uWp;
    new-instance v1, Lc8/VUe;

    invoke-virtual {p1}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v2

    invoke-static {v0}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/VUe;-><init>(Lc8/GSe;Lc8/aWp;)V

    return-object v1
.end method

.method public readResponseHeaders()Lc8/bTe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lc8/KUe;->framedConnection:Lc8/TTe;

    invoke-virtual {v0}, Lc8/TTe;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc8/KUe;->stream:Lc8/YTe;

    .line 150
    invoke-virtual {v0}, Lc8/YTe;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/KUe;->readHttp2HeadersList(Ljava/util/List;)Lc8/bTe;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lc8/KUe;->stream:Lc8/YTe;

    .line 151
    invoke-virtual {v0}, Lc8/YTe;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/KUe;->readSpdy3HeadersList(Ljava/util/List;)Lc8/bTe;

    move-result-object v0

    goto :goto_0
.end method

.method public setHttpEngine(Lc8/QUe;)V
    .locals 0
    .param p1, "httpEngine"    # Lc8/QUe;

    .prologue
    .line 119
    iput-object p1, p0, Lc8/KUe;->httpEngine:Lc8/QUe;

    .line 120
    return-void
.end method

.method public writeRequestBody(Lc8/XUe;)V
    .locals 1
    .param p1, "requestBody"    # Lc8/XUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lc8/KUe;->stream:Lc8/YTe;

    invoke-virtual {v0}, Lc8/YTe;->getSink()Lc8/tWp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/XUe;->writeToSocket(Lc8/tWp;)V

    .line 142
    return-void
.end method

.method public writeRequestHeaders(Lc8/VSe;)V
    .locals 7
    .param p1, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v3, p0, Lc8/KUe;->stream:Lc8/YTe;

    if-eqz v3, :cond_0

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v3, p0, Lc8/KUe;->httpEngine:Lc8/QUe;

    invoke-virtual {v3}, Lc8/QUe;->writingRequestHeaders()V

    .line 130
    iget-object v3, p0, Lc8/KUe;->httpEngine:Lc8/QUe;

    invoke-virtual {v3, p1}, Lc8/QUe;->permitsRequestBody(Lc8/VSe;)Z

    move-result v1

    .line 131
    .local v1, "permitsRequestBody":Z
    iget-object v3, p0, Lc8/KUe;->framedConnection:Lc8/TTe;

    invoke-virtual {v3}, Lc8/TTe;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v4, :cond_1

    .line 132
    invoke-static {p1}, Lc8/KUe;->http2HeadersList(Lc8/VSe;)Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :goto_1
    const/4 v0, 0x1

    .line 135
    .local v0, "hasResponseBody":Z
    iget-object v3, p0, Lc8/KUe;->framedConnection:Lc8/TTe;

    invoke-virtual {v3, v2, v1, v0}, Lc8/TTe;->newStream(Ljava/util/List;ZZ)Lc8/YTe;

    move-result-object v3

    iput-object v3, p0, Lc8/KUe;->stream:Lc8/YTe;

    .line 136
    iget-object v3, p0, Lc8/KUe;->stream:Lc8/YTe;

    invoke-virtual {v3}, Lc8/YTe;->readTimeout()Lc8/wWp;

    move-result-object v3

    iget-object v4, p0, Lc8/KUe;->httpEngine:Lc8/QUe;

    iget-object v4, v4, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v4}, Lc8/QSe;->getReadTimeout()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lc8/wWp;->timeout(JLjava/util/concurrent/TimeUnit;)Lc8/wWp;

    .line 137
    iget-object v3, p0, Lc8/KUe;->stream:Lc8/YTe;

    invoke-virtual {v3}, Lc8/YTe;->writeTimeout()Lc8/wWp;

    move-result-object v3

    iget-object v4, p0, Lc8/KUe;->httpEngine:Lc8/QUe;

    iget-object v4, v4, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v4}, Lc8/QSe;->getWriteTimeout()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lc8/wWp;->timeout(JLjava/util/concurrent/TimeUnit;)Lc8/wWp;

    goto :goto_0

    .line 133
    .end local v0    # "hasResponseBody":Z
    .end local v2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :cond_1
    invoke-static {p1}, Lc8/KUe;->spdy3HeadersList(Lc8/VSe;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method
