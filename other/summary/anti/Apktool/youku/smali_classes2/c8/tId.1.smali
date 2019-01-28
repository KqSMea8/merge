.class public Lc8/tId;
.super Ljava/lang/Object;
.source "HttpURLConnectionCall.java"

# interfaces
.implements Lc8/kId;


# instance fields
.field originalRequest:Lc8/DId;


# direct methods
.method public constructor <init>(Lc8/DId;)V
    .locals 0
    .param p1, "originalRequest"    # Lc8/DId;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lc8/tId;->originalRequest:Lc8/DId;

    .line 21
    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lc8/DId;)V
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "request"    # Lc8/DId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Lc8/DId;->body()Lc8/GId;

    move-result-object v0

    .line 169
    .local v0, "body":Lc8/GId;
    if-eqz v0, :cond_0

    .line 170
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 171
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v0}, Lc8/GId;->contentType()Lc8/xId;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2}, Lc8/EJd;->sink(Ljava/io/OutputStream;)Lc8/LJd;

    move-result-object v2

    invoke-static {v2}, Lc8/EJd;->buffer(Lc8/LJd;)Lc8/zJd;

    move-result-object v1

    .line 173
    .local v1, "fromSink":Lc8/zJd;
    invoke-virtual {v0, v1}, Lc8/GId;->writeTo(Lc8/zJd;)V

    .line 174
    invoke-interface {v1}, Lc8/zJd;->close()V

    .line 176
    .end local v1    # "fromSink":Lc8/zJd;
    :cond_0
    return-void
.end method

.method private static createOkBody(Ljava/net/HttpURLConnection;)Lc8/KId;
    .locals 2
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 61
    :goto_0
    return-object v1

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Lc8/tId;->isSuccessfulSend(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 59
    :goto_1
    invoke-static {v1}, Lc8/EJd;->source(Ljava/io/InputStream;)Lc8/MJd;

    move-result-object v1

    invoke-static {v1}, Lc8/EJd;->buffer(Lc8/MJd;)Lc8/AJd;

    move-result-object v0

    .line 61
    .local v0, "body":Lc8/AJd;
    new-instance v1, Lc8/sId;

    invoke-direct {v1, p0, v0}, Lc8/sId;-><init>(Ljava/net/HttpURLConnection;Lc8/AJd;)V

    goto :goto_0

    .line 60
    .end local v0    # "body":Lc8/AJd;
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1
.end method

.method protected static isSuccessfulSend(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 79
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openConnection(Lc8/DId;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "request"    # Lc8/DId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xea60

    .line 108
    invoke-virtual {p1}, Lc8/DId;->url()Lc8/wId;

    move-result-object v3

    invoke-virtual {v3}, Lc8/wId;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "parsedUrl":Ljava/net/URL;
    invoke-virtual {p0, v1}, Lc8/tId;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 111
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 112
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 113
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 114
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 116
    invoke-virtual {p1}, Lc8/DId;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "https://push.statics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    :cond_0
    return-object v0
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lc8/DId;)V
    .locals 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "request"    # Lc8/DId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p1}, Lc8/DId;->getmethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    const-string/jumbo v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 145
    :pswitch_1
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_2
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1}, Lc8/tId;->addBodyIfExists(Ljava/net/HttpURLConnection;Lc8/DId;)V

    goto :goto_0

    .line 152
    :pswitch_3
    const-string/jumbo v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 153
    invoke-static {p0, p1}, Lc8/tId;->addBodyIfExists(Ljava/net/HttpURLConnection;Lc8/DId;)V

    goto :goto_0

    .line 156
    :pswitch_4
    const-string/jumbo v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_5
    const-string/jumbo v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 160
    invoke-static {p0, p1}, Lc8/tId;->addBodyIfExists(Ljava/net/HttpURLConnection;Lc8/DId;)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 131
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 132
    return-object v0
.end method

.method public execute()Lc8/JId;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v6, p0, Lc8/tId;->originalRequest:Lc8/DId;

    invoke-direct {p0, v6}, Lc8/tId;->openConnection(Lc8/DId;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 31
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v6, p0, Lc8/tId;->originalRequest:Lc8/DId;

    invoke-virtual {v6}, Lc8/DId;->headers()Lc8/qId;

    move-result-object v6

    invoke-virtual {v6}, Lc8/qId;->names()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    .local v1, "headerName":Ljava/lang/String;
    iget-object v7, p0, Lc8/tId;->originalRequest:Lc8/DId;

    invoke-virtual {v7, v1}, Lc8/DId;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current header name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/IHd;->i(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v1    # "headerName":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lc8/tId;->originalRequest:Lc8/DId;

    invoke-static {v0, v6}, Lc8/tId;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lc8/DId;)V

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 38
    .local v3, "responseCode":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "responseMessage":Ljava/lang/String;
    new-instance v6, Lc8/IId;

    invoke-direct {v6}, Lc8/IId;-><init>()V

    .line 41
    invoke-virtual {v6, v3}, Lc8/IId;->code(I)Lc8/IId;

    move-result-object v6

    iget-object v7, p0, Lc8/tId;->originalRequest:Lc8/DId;

    .line 42
    invoke-virtual {v7}, Lc8/DId;->headers()Lc8/qId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/IId;->headers(Lc8/qId;)Lc8/IId;

    move-result-object v6

    .line 43
    invoke-virtual {v6, v4}, Lc8/IId;->message(Ljava/lang/String;)Lc8/IId;

    move-result-object v6

    iget-object v7, p0, Lc8/tId;->originalRequest:Lc8/DId;

    .line 44
    invoke-virtual {v6, v7}, Lc8/IId;->request(Lc8/DId;)Lc8/IId;

    move-result-object v6

    .line 45
    invoke-static {v0}, Lc8/tId;->createOkBody(Ljava/net/HttpURLConnection;)Lc8/KId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/IId;->body(Lc8/KId;)Lc8/IId;

    move-result-object v6

    .line 46
    invoke-virtual {v6}, Lc8/IId;->build()Lc8/JId;

    move-result-object v2

    .line 48
    .local v2, "response":Lc8/JId;
    return-object v2
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public request()Lc8/DId;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lc8/tId;->originalRequest:Lc8/DId;

    return-object v0
.end method
