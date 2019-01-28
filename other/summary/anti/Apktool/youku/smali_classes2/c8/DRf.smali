.class public Lc8/DRf;
.super Ljava/lang/Object;
.source "HttpUpdateApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "httpUrl"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v8, 0x0

    .line 17
    .local v8, "urlConn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 19
    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 20
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 21
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_2

    .line 22
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v4, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 25
    .local v1, "buffer":[B
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "n":I
    if-eq v9, v3, :cond_1

    .line 26
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    .end local v1    # "buffer":[B
    .end local v3    # "n":I
    .end local v4    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    const/4 v5, 0x0

    .line 39
    if-eqz v8, :cond_0

    .line 40
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-object v5

    .line 28
    .restart local v1    # "buffer":[B
    .restart local v3    # "n":I
    .restart local v4    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 29
    .local v6, "resultData":[B
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v5, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .local v5, "rawStr":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 40
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 39
    .end local v1    # "buffer":[B
    .end local v3    # "n":I
    .end local v4    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "rawStr":Ljava/lang/String;
    .end local v6    # "resultData":[B
    :cond_2
    if-eqz v8, :cond_3

    .line 40
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    :cond_3
    const-string/jumbo v5, ""

    goto :goto_1

    .line 39
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 40
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v9
.end method
