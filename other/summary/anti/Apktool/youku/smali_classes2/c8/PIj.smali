.class public Lc8/PIj;
.super Ljava/lang/Thread;
.source "DisposableHttpTask.java"


# static fields
.field private static final AD_TAG:Ljava/lang/String; = "HttpCommunication.advertisement"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string/jumbo v0, "DisposableHttpTask"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lc8/PIj;->url:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 31
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 32
    invoke-static {}, Lc8/tSh;->hasInternet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    invoke-static {}, Lc8/tSh;->disableConnectionReuseIfNecessary()V

    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lc8/PIj;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, "uri":Ljava/net/URL;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "advertisement exposure url\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/PIj;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 39
    const/16 v5, 0x3a98

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 40
    const/16 v5, 0x3a98

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 41
    const-string/jumbo v5, "User-Agent"

    sget-object v6, Lc8/uSh;->User_Agent:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 43
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 44
    .local v3, "response":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the response of advertisement exposure url\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "response":I
    .end local v4    # "uri":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "response":I
    .restart local v4    # "uri":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "response":I
    .end local v4    # "uri":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 46
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "HttpCommunication.advertisement"

    const-string/jumbo v6, "DisposableHttpTask run Exception"

    invoke-static {v5, v6, v2}, Lc8/nSh;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 53
    :catch_2
    move-exception v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 50
    if-eqz v1, :cond_1

    .line 51
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 55
    :cond_1
    :goto_1
    throw v5

    .line 53
    :catch_3
    move-exception v2

    .line 54
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
