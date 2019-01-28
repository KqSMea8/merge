.class public Lc8/uVf;
.super Ljava/lang/Object;
.source "DefaultWXHttpAdapter.java"

# interfaces
.implements Lc8/DVf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tVf;,
        Lc8/sVf;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Lc8/sVf;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lc8/tVf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/tVf;-><init>(Lc8/rVf;)V

    sput-object v0, Lc8/uVf;->DEFAULT_DELEGATE:Lc8/sVf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    return-void
.end method

.method static synthetic access$100(Lc8/uVf;Lc8/QXf;Lc8/CVf;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lc8/uVf;
    .param p1, "x1"    # Lc8/QXf;
    .param p2, "x2"    # Lc8/CVf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lc8/uVf;->openConnection(Lc8/QXf;Lc8/CVf;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/uVf;Ljava/io/InputStream;Lc8/CVf;)[B
    .locals 1
    .param p0, "x0"    # Lc8/uVf;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Lc8/CVf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lc8/uVf;->readInputStreamAsBytes(Ljava/io/InputStream;Lc8/CVf;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/uVf;Ljava/io/InputStream;Lc8/CVf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/uVf;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Lc8/CVf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lc8/uVf;->readInputStream(Ljava/io/InputStream;Lc8/CVf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/uVf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc8/uVf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 52
    :cond_0
    iget-object v0, p0, Lc8/uVf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method private openConnection(Lc8/QXf;Lc8/CVf;)Ljava/net/HttpURLConnection;
    .locals 10
    .param p1, "request"    # Lc8/QXf;
    .param p2, "listener"    # Lc8/CVf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    new-instance v5, Ljava/net/URL;

    iget-object v6, p1, Lc8/QXf;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {p0, v5}, Lc8/uVf;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 114
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget v6, p1, Lc8/QXf;->timeoutMs:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 115
    iget v6, p1, Lc8/QXf;->timeoutMs:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 117
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 119
    iget-object v6, p1, Lc8/QXf;->paramMap:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 120
    iget-object v6, p1, Lc8/QXf;->paramMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 121
    .local v3, "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p1, Lc8/QXf;->paramMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v6, "POST"

    iget-object v7, p1, Lc8/QXf;->method:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "PUT"

    iget-object v7, p1, Lc8/QXf;->method:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "PATCH"

    iget-object v7, p1, Lc8/QXf;->method:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 127
    :cond_1
    iget-object v6, p1, Lc8/QXf;->method:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 128
    iget-object v6, p1, Lc8/QXf;->body:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 129
    if-eqz p2, :cond_2

    .line 130
    invoke-interface {p2, v8}, Lc8/CVf;->onHttpUploadProgress(I)V

    .line 132
    :cond_2
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 133
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v4, "out":Ljava/io/DataOutputStream;
    iget-object v6, p1, Lc8/QXf;->body:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 136
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 137
    if-eqz p2, :cond_3

    .line 138
    const/16 v6, 0x64

    invoke-interface {p2, v6}, Lc8/CVf;->onHttpUploadProgress(I)V

    .line 147
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :cond_3
    :goto_1
    return-object v0

    .line 141
    :cond_4
    iget-object v6, p1, Lc8/QXf;->method:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 142
    iget-object v6, p1, Lc8/QXf;->method:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_5
    const-string/jumbo v6, "GET"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readInputStream(Ljava/io/InputStream;Lc8/CVf;)Ljava/lang/String;
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lc8/CVf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v4, 0x0

    .line 188
    :goto_0
    return-object v4

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    const/16 v4, 0x800

    new-array v1, v4, [C

    .line 181
    .local v1, "data":[C
    :cond_1
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 182
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 183
    if-eqz p2, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-interface {p2, v4}, Lc8/CVf;->onHttpResponseProgress(I)V

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private readInputStreamAsBytes(Ljava/io/InputStream;Lc8/CVf;)[B
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lc8/CVf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 152
    const/4 v4, 0x0

    .line 170
    :goto_0
    return-object v4

    .line 154
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 158
    .local v3, "readCount":I
    const/16 v4, 0x800

    new-array v1, v4, [B

    .line 160
    .local v1, "data":[B
    :cond_1
    :goto_1
    array-length v4, v1

    invoke-virtual {p1, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 161
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 162
    add-int/2addr v3, v2

    .line 163
    if-eqz p2, :cond_1

    .line 164
    invoke-interface {p2, v3}, Lc8/CVf;->onHttpResponseProgress(I)V

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 170
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getEventReporterDelegate()Lc8/sVf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lc8/uVf;->DEFAULT_DELEGATE:Lc8/sVf;

    return-object v0
.end method

.method public sendRequest(Lc8/QXf;Lc8/CVf;)V
    .locals 1
    .param p1, "request"    # Lc8/QXf;
    .param p2, "listener"    # Lc8/CVf;

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    invoke-interface {p2}, Lc8/CVf;->onHttpStart()V

    .line 60
    :cond_0
    new-instance v0, Lc8/rVf;

    invoke-direct {v0, p0, p1, p2}, Lc8/rVf;-><init>(Lc8/uVf;Lc8/QXf;Lc8/CVf;)V

    invoke-direct {p0, v0}, Lc8/uVf;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
