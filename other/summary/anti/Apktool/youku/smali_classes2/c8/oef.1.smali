.class public final Lc8/oef;
.super Ljava/lang/Object;
.source "TemplateCache.java"

# interfaces
.implements Lc8/ref;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)[B
    .locals 11
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 331
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 334
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 336
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 337
    const/16 v8, 0x2710

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 338
    const/16 v8, 0x2ee0

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 339
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 341
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/16 v10, 0xc8

    if-eq v8, v10, :cond_3

    .line 355
    if-eqz v5, :cond_0

    .line 356
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 357
    :cond_0
    if-eqz v4, :cond_1

    .line 358
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 363
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v8, v9

    .line 367
    .end local v7    # "url":Ljava/net/URL;
    :goto_1
    return-object v8

    .line 344
    .restart local v7    # "url":Ljava/net/URL;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 345
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v6, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    .local v6, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x1000

    :try_start_3
    new-array v3, v8, [B

    .line 349
    .local v3, "data":[B
    :goto_2
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_7

    .line 350
    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .end local v2    # "count":I
    .end local v3    # "data":[B
    :catch_0
    move-exception v8

    move-object v5, v6

    .line 355
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .restart local v5    # "output":Ljava/io/ByteArrayOutputStream;
    :goto_3
    if-eqz v5, :cond_4

    .line 356
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 357
    :cond_4
    if-eqz v4, :cond_5

    .line 358
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 363
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 364
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 367
    :cond_6
    :goto_5
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto :goto_1

    .line 355
    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_7
    if-eqz v6, :cond_8

    .line 356
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 357
    :cond_8
    if-eqz v4, :cond_9

    .line 358
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 363
    :cond_9
    :goto_6
    if-eqz v1, :cond_e

    .line 364
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v6

    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "output":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 354
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v8

    .line 355
    :goto_7
    if-eqz v5, :cond_a

    .line 356
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 357
    :cond_a
    if-eqz v4, :cond_b

    .line 358
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 363
    :cond_b
    :goto_8
    if-eqz v1, :cond_c

    .line 364
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v8

    :cond_d
    move-object v8, v9

    .line 367
    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_8

    .line 354
    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "output":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v7    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    goto :goto_4

    :catch_3
    move-exception v8

    goto :goto_3

    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_4
    move-exception v8

    goto :goto_6

    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v8

    goto :goto_0

    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_e
    move-object v5, v6

    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "output":Ljava/io/ByteArrayOutputStream;
    goto :goto_5
.end method
