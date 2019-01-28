.class public Lc8/JYn;
.super Ljava/lang/Object;
.source "HttpTask.java"

# interfaces
.implements Lc8/KYn;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connectStat:Lc8/QXn;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private recvData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lc8/JYn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/JYn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lc8/JYn;->recvData:Ljava/lang/String;

    .line 55
    new-instance v0, Lc8/QXn;

    invoke-direct {v0}, Lc8/QXn;-><init>()V

    iput-object v0, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    .line 58
    iput-object v1, p0, Lc8/JYn;->header:Ljava/util/Map;

    .line 61
    return-void
.end method

.method protected static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 168
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 169
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "Util"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/QYn;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 190
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Util"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/QYn;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 183
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 186
    :goto_2
    throw v4

    .line 184
    :catch_2
    move-exception v0

    .line 185
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Util"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/QYn;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setHttps(Ljava/net/HttpURLConnection;Ljava/net/URL;)V
    .locals 8
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    .line 89
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "protocol":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 95
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 98
    .local v2, "https":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    const-string/jumbo v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 99
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    new-instance v7, Lc8/IYn;

    invoke-direct {v7}, Lc8/IYn;-><init>()V

    aput-object v7, v5, v6

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 100
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    sget-object v4, Lc8/JYn;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/QYn;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public connectAPI(Lc8/TXn;)V
    .locals 14
    .param p1, "data"    # Lc8/TXn;

    .prologue
    const/4 v11, 0x0

    .line 112
    iget-object v9, p1, Lc8/TXn;->url:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 165
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v9, 0x0

    iput-object v9, p0, Lc8/JYn;->recvData:Ljava/lang/String;

    .line 116
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    iget-object v10, p1, Lc8/TXn;->url:Ljava/lang/String;

    iput-object v10, v9, Lc8/QXn;->url:Ljava/lang/String;

    .line 117
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    iput-boolean v11, v9, Lc8/QXn;->connect_success:Z

    .line 123
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p1, Lc8/TXn;->url:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    .local v8, "url":Ljava/net/URL;
    sget-object v9, Lc8/JYn;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "connectAPI url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 126
    .local v2, "conn":Ljava/net/URLConnection;
    iget v9, p1, Lc8/TXn;->connect_timeout:I

    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 127
    iget v9, p1, Lc8/TXn;->read_timeout:I

    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 128
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 129
    .local v4, "httpConn":Ljava/net/HttpURLConnection;
    invoke-direct {p0, v4, v8}, Lc8/JYn;->setHttps(Ljava/net/HttpURLConnection;Ljava/net/URL;)V

    .line 130
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 131
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 132
    const-string/jumbo v9, "GET"

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 134
    iget-object v9, p1, Lc8/TXn;->cookie:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 135
    const-string/jumbo v9, "Cookie"

    iget-object v10, p1, Lc8/TXn;->cookie:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-object v9, p1, Lc8/TXn;->agent:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 138
    const-string/jumbo v9, "User-Agent"

    iget-object v10, p1, Lc8/TXn;->agent:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    sget-object v9, Lc8/JYn;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "before http connect"

    invoke-static {v9, v10}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 142
    .local v6, "start":J
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 143
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, v9, Lc8/QXn;->connect_time:J

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 145
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    iput v10, v9, Lc8/QXn;->response_code:I

    .line 146
    sget-object v9, Lc8/JYn;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "http connect status :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    iget v11, v11, Lc8/QXn;->response_code:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    iget v9, v9, Lc8/QXn;->response_code:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_3

    .line 149
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lc8/QXn;->connect_success:Z

    .line 152
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 153
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {v5}, Lc8/JYn;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lc8/JYn;->recvData:Ljava/lang/String;

    .line 154
    iget-object v9, p0, Lc8/JYn;->recvData:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 155
    sget-object v9, Lc8/JYn;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "recv: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/JYn;->recvData:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/QYn;->d_long(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_3
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, v9, Lc8/QXn;->read_time:J

    .line 158
    sget-object v9, Lc8/JYn;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "httpConn time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    iget-wide v12, v11, Lc8/QXn;->read_time:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lc8/QXn;->header:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 161
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v6    # "start":J
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lc8/QXn;->errMsg:Ljava/lang/String;

    .line 163
    sget-object v9, Lc8/JYn;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/QYn;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getData(Lc8/TXn;)Lc8/RXn;
    .locals 4
    .param p1, "data"    # Lc8/TXn;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lc8/JYn;->connectAPI(Lc8/TXn;)V

    .line 69
    new-instance v0, Lc8/RXn;

    iget-object v1, p0, Lc8/JYn;->recvData:Ljava/lang/String;

    iget-object v2, p0, Lc8/JYn;->header:Ljava/util/Map;

    iget-object v3, p0, Lc8/JYn;->connectStat:Lc8/QXn;

    invoke-direct {v0, v1, v2, v3}, Lc8/RXn;-><init>(Ljava/lang/String;Ljava/util/Map;Lc8/QXn;)V

    goto :goto_0
.end method
