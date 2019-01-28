.class public Lc8/Uhb;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lc8/Uhb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Uhb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 21
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 32
    .local v1, "data":[B
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 33
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {p0}, Lc8/Uhb;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 35
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    invoke-static {p0}, Lc8/Uhb;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4
.end method
