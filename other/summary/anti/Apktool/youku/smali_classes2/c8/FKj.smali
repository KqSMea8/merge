.class public Lc8/FKj;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# instance fields
.field private final connectTimeout:I

.field private mContext:Landroid/content/Context;

.field private mProxy:Ljava/net/Proxy;

.field private final readTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x4e20

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lc8/FKj;->connectTimeout:I

    .line 44
    iput v0, p0, Lc8/FKj;->readTimeout:I

    .line 45
    iput-object v1, p0, Lc8/FKj;->mProxy:Ljava/net/Proxy;

    .line 46
    iput-object v1, p0, Lc8/FKj;->mContext:Landroid/content/Context;

    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/FKj;->mContext:Landroid/content/Context;

    .line 52
    :cond_0
    invoke-direct {p0}, Lc8/FKj;->setDefaultHostnameVerifier()V

    .line 53
    return-void
.end method

.method private detectProxy()V
    .locals 7

    .prologue
    .line 60
    iget-object v5, p0, Lc8/FKj;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 62
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 63
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 65
    .local v2, "port":I
    if-eqz v3, :cond_0

    .line 66
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 67
    .local v4, "sa":Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v5, p0, Lc8/FKj;->mProxy:Ljava/net/Proxy;

    .line 70
    .end local v2    # "port":I
    .end local v3    # "proxyHost":Ljava/lang/String;
    .end local v4    # "sa":Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method private setDefaultHostnameVerifier()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lc8/EKj;

    invoke-direct {v0, p0}, Lc8/EKj;-><init>(Lc8/FKj;)V

    .line 80
    .local v0, "hv":Ljavax/net/ssl/HostnameVerifier;
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 81
    return-void
.end method


# virtual methods
.method public SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "strReqData"    # Ljava/lang/String;
    .param p2, "strUrl"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string/jumbo v9, "PayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SendAndWaitResponse...strUrl:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lc8/FKj;->detectProxy()V

    .line 97
    const/4 v7, 0x0

    .line 98
    .local v7, "strResponse":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v6, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "requestData"

    invoke-direct {v9, v10, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v3, 0x0

    .line 104
    .local v3, "httpConnect":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v9, "utf-8"

    invoke-direct {v5, v6, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 106
    .local v5, "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 108
    .local v8, "url":Ljava/net/URL;
    iget-object v9, p0, Lc8/FKj;->mProxy:Ljava/net/Proxy;

    if-eqz v9, :cond_0

    .line 109
    iget-object v9, p0, Lc8/FKj;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v8, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 113
    :goto_0
    const/16 v9, 0x4e20

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 114
    const/16 v9, 0x4e20

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 115
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 116
    const-string/jumbo v9, "Content-type"

    const-string/jumbo v10, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v3, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 119
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 120
    .local v4, "os":Ljava/io/OutputStream;
    invoke-virtual {v5, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 121
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 123
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 124
    .local v1, "content":Ljava/io/InputStream;
    invoke-static {v1}, Lc8/pKj;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 125
    const-string/jumbo v9, "PayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SendAndWaitResponse...response:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 134
    const-string/jumbo v9, "PayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SendAndWaitResponse...finally:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v1    # "content":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v8    # "url":Ljava/net/URL;
    :goto_1
    return-object v7

    .line 111
    .restart local v5    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v5    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    const-string/jumbo v9, "PayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SendAndWaitResponse...IOException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 134
    const-string/jumbo v9, "PayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SendAndWaitResponse...finally:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const-string/jumbo v9, "PayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SendAndWaitResponse...Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 134
    const-string/jumbo v9, "PayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SendAndWaitResponse...finally:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 133
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 134
    const-string/jumbo v10, "PayManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SendAndWaitResponse...finally:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v9
.end method
