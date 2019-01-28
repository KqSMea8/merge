.class public Lc8/rVf;
.super Ljava/lang/Object;
.source "DefaultWXHttpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uVf;->sendRequest(Lc8/QXf;Lc8/CVf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uVf;

.field final synthetic val$listener:Lc8/CVf;

.field final synthetic val$request:Lc8/QXf;


# direct methods
.method constructor <init>(Lc8/uVf;Lc8/QXf;Lc8/CVf;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lc8/rVf;->this$0:Lc8/uVf;

    iput-object p2, p0, Lc8/rVf;->val$request:Lc8/QXf;

    iput-object p3, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 63
    new-instance v5, Lc8/SXf;

    invoke-direct {v5}, Lc8/SXf;-><init>()V

    .line 64
    .local v5, "response":Lc8/SXf;
    iget-object v7, p0, Lc8/rVf;->this$0:Lc8/uVf;

    invoke-virtual {v7}, Lc8/uVf;->getEventReporterDelegate()Lc8/sVf;

    move-result-object v4

    .line 66
    .local v4, "reporter":Lc8/sVf;
    :try_start_0
    iget-object v7, p0, Lc8/rVf;->this$0:Lc8/uVf;

    iget-object v8, p0, Lc8/rVf;->val$request:Lc8/QXf;

    iget-object v9, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    invoke-static {v7, v8, v9}, Lc8/uVf;->access$100(Lc8/uVf;Lc8/QXf;Lc8/CVf;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 67
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v7, p0, Lc8/rVf;->val$request:Lc8/QXf;

    iget-object v7, v7, Lc8/QXf;->body:Ljava/lang/String;

    invoke-interface {v4, v0, v7}, Lc8/sVf;->preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 69
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 70
    .local v6, "responseCode":I
    iget-object v7, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    if-eqz v7, :cond_0

    .line 71
    iget-object v7, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    invoke-interface {v7, v6, v2}, Lc8/CVf;->onHeadersReceived(ILjava/util/Map;)V

    .line 73
    :cond_0
    invoke-interface {v4}, Lc8/sVf;->postConnect()V

    .line 75
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 76
    const/16 v7, 0xc8

    if-lt v6, v7, :cond_2

    const/16 v7, 0x12b

    if-gt v6, v7, :cond_2

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 78
    .local v3, "rawStream":Ljava/io/InputStream;
    invoke-interface {v4, v3}, Lc8/sVf;->interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 79
    iget-object v7, p0, Lc8/rVf;->this$0:Lc8/uVf;

    iget-object v8, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    invoke-static {v7, v3, v8}, Lc8/uVf;->access$200(Lc8/uVf;Ljava/io/InputStream;Lc8/CVf;)[B

    move-result-object v7

    iput-object v7, v5, Lc8/SXf;->originalData:[B

    .line 83
    .end local v3    # "rawStream":Ljava/io/InputStream;
    :goto_0
    iget-object v7, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    if-eqz v7, :cond_1

    .line 84
    iget-object v7, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    invoke-interface {v7, v5}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    .line 98
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "responseCode":I
    :cond_1
    :goto_1
    return-void

    .line 81
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v6    # "responseCode":I
    :cond_2
    iget-object v7, p0, Lc8/rVf;->this$0:Lc8/uVf;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    iget-object v9, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    invoke-static {v7, v8, v9}, Lc8/uVf;->access$300(Lc8/uVf;Ljava/io/InputStream;Lc8/CVf;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lc8/SXf;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "responseCode":I
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const-string/jumbo v7, "-1"

    iput-object v7, v5, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 89
    const-string/jumbo v7, "-1"

    iput-object v7, v5, Lc8/SXf;->errorCode:Ljava/lang/String;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lc8/SXf;->errorMsg:Ljava/lang/String;

    .line 91
    iget-object v7, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    if-eqz v7, :cond_3

    .line 92
    iget-object v7, p0, Lc8/rVf;->val$listener:Lc8/CVf;

    invoke-interface {v7, v5}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    .line 94
    :cond_3
    instance-of v7, v1, Ljava/io/IOException;

    if-eqz v7, :cond_1

    .line 95
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-interface {v4, v1}, Lc8/sVf;->httpExchangeFailed(Ljava/io/IOException;)V

    goto :goto_1

    .line 86
    :catch_1
    move-exception v1

    goto :goto_2
.end method
