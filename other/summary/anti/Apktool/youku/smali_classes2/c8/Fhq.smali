.class public final Lc8/Fhq;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ehq;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static readBodyToBytesIfNecessary(Lc8/Vhq;)Lc8/Vhq;
    .locals 7
    .param p0, "request"    # Lc8/Vhq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lc8/Vhq;->getBody()Lc8/Hiq;

    move-result-object v1

    .line 56
    .local v1, "body":Lc8/Hiq;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lc8/Eiq;

    if-eqz v3, :cond_1

    .line 65
    .end local p0    # "request":Lc8/Vhq;
    :cond_0
    :goto_0
    return-object p0

    .line 60
    .restart local p0    # "request":Lc8/Vhq;
    :cond_1
    invoke-interface {v1}, Lc8/Hiq;->mimeType()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "bodyMime":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v1, v0}, Lc8/Hiq;->writeTo(Ljava/io/OutputStream;)V

    .line 63
    new-instance v1, Lc8/Eiq;

    .end local v1    # "body":Lc8/Hiq;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/Eiq;-><init>(Ljava/lang/String;[B)V

    .line 65
    .restart local v1    # "body":Lc8/Hiq;
    new-instance v3, Lc8/Vhq;

    invoke-virtual {p0}, Lc8/Vhq;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lc8/Vhq;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lc8/Vhq;->getHeaders()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lc8/Vhq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lc8/Hiq;)V

    move-object p0, v3

    goto :goto_0
.end method

.method static readBodyToBytesIfNecessary(Lc8/Whq;)Lc8/Whq;
    .locals 7
    .param p0, "response"    # Lc8/Whq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lc8/Whq;->getBody()Lc8/Giq;

    move-result-object v0

    .line 74
    .local v0, "body":Lc8/Giq;
    if-eqz v0, :cond_0

    instance-of v5, v0, Lc8/Eiq;

    if-eqz v5, :cond_1

    .line 90
    .end local p0    # "response":Lc8/Whq;
    :cond_0
    :goto_0
    return-object p0

    .line 78
    .restart local p0    # "response":Lc8/Whq;
    :cond_1
    invoke-interface {v0}, Lc8/Giq;->mimeType()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "bodyMime":Ljava/lang/String;
    invoke-interface {v0}, Lc8/Giq;->in()Ljava/io/InputStream;

    move-result-object v4

    .line 81
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v4}, Lc8/Fhq;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 82
    .local v2, "bodyBytes":[B
    new-instance v1, Lc8/Eiq;

    invoke-direct {v1, v3, v2}, Lc8/Eiq;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "body":Lc8/Giq;
    .local v1, "body":Lc8/Giq;
    :try_start_1
    invoke-static {p0, v1}, Lc8/Fhq;->replaceResponseBody(Lc8/Whq;Lc8/Giq;)Lc8/Whq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p0

    .line 86
    .end local p0    # "response":Lc8/Whq;
    if-eqz v4, :cond_2

    .line 88
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v0, v1

    .line 90
    .end local v1    # "body":Lc8/Giq;
    .restart local v0    # "body":Lc8/Giq;
    goto :goto_0

    .line 86
    .end local v2    # "bodyBytes":[B
    .restart local p0    # "response":Lc8/Whq;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v4, :cond_3

    .line 88
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 90
    :cond_3
    :goto_3
    throw v5

    .end local v0    # "body":Lc8/Giq;
    .end local p0    # "response":Lc8/Whq;
    .restart local v1    # "body":Lc8/Giq;
    .restart local v2    # "bodyBytes":[B
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v1    # "body":Lc8/Giq;
    .end local v2    # "bodyBytes":[B
    .restart local v0    # "body":Lc8/Giq;
    .restart local p0    # "response":Lc8/Whq;
    :catch_1
    move-exception v6

    goto :goto_3

    .line 86
    .end local v0    # "body":Lc8/Giq;
    .restart local v1    # "body":Lc8/Giq;
    .restart local v2    # "bodyBytes":[B
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "body":Lc8/Giq;
    .restart local v0    # "body":Lc8/Giq;
    goto :goto_2
.end method

.method static replaceResponseBody(Lc8/Whq;Lc8/Giq;)Lc8/Whq;
    .locals 6
    .param p0, "response"    # Lc8/Whq;
    .param p1, "body"    # Lc8/Giq;

    .prologue
    .line 96
    new-instance v0, Lc8/Whq;

    invoke-virtual {p0}, Lc8/Whq;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc8/Whq;->getStatus()I

    move-result v2

    invoke-virtual {p0}, Lc8/Whq;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {p0}, Lc8/Whq;->getHeaders()Ljava/util/List;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lc8/Whq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lc8/Giq;)V

    return-object v0
.end method

.method static streamToBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_0

    .line 41
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 43
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "r":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 47
    .end local v1    # "buf":[B
    .end local v2    # "r":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method static validateServiceClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only interface endpoint definitions are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Interface definitions must not extend other interfaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    return-void
.end method
