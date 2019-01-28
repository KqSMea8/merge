.class public Lcom/taobao/accs/net/InAppConnection$Auth$1;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Lc8/VI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/InAppConnection$Auth;->auth(Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/InAppConnection$Auth;

.field final synthetic val$accsSession:Lanet/channel/Session;

.field final synthetic val$authCallback:Lanet/channel/IAuth$AuthCallback;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/InAppConnection$Auth;Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->this$0:Lcom/taobao/accs/net/InAppConnection$Auth;

    iput-object p2, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->val$accsSession:Lanet/channel/Session;

    iput-object p3, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->val$authCallback:Lanet/channel/IAuth$AuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 0
    .param p1, "data"    # Lanet/channel/bytes/ByteArray;
    .param p2, "fin"    # Z

    .prologue
    .line 498
    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "rs"    # Lanet/channel/statist/RequestStatistic;

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->this$0:Lcom/taobao/accs/net/InAppConnection$Auth;

    invoke-static {v0}, Lcom/taobao/accs/net/InAppConnection$Auth;->access$000(Lcom/taobao/accs/net/InAppConnection$Auth;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AUTH onFinish"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "statusCode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "seq"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->val$accsSession:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->val$authCallback:Lanet/channel/IAuth$AuthCallback;

    const-string/jumbo v1, "onFinish auth fail"

    invoke-interface {v0, p1, v1}, Lanet/channel/IAuth$AuthCallback;->onAuthFail(ILjava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 7
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->this$0:Lcom/taobao/accs/net/InAppConnection$Auth;

    invoke-static {v2}, Lcom/taobao/accs/net/InAppConnection$Auth;->access$000(Lcom/taobao/accs/net/InAppConnection$Auth;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AUTH"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "httpStatusCode"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "seq"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->val$accsSession:Lanet/channel/Session;

    iget-object v6, v6, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->val$authCallback:Lanet/channel/IAuth$AuthCallback;

    invoke-interface {v2}, Lanet/channel/IAuth$AuthCallback;->onAuthSuccess()V

    .line 488
    :goto_0
    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->getHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 489
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "x-at"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 490
    .local v1, "serverToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->this$0:Lcom/taobao/accs/net/InAppConnection$Auth;

    invoke-static {v2}, Lcom/taobao/accs/net/InAppConnection$Auth;->access$100(Lcom/taobao/accs/net/InAppConnection$Auth;)Lcom/taobao/accs/net/BaseConnection;

    move-result-object v2

    iput-object v1, v2, Lcom/taobao/accs/net/BaseConnection;->mConnToken:Ljava/lang/String;

    .line 493
    :cond_0
    return-void

    .line 485
    .end local v0    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "serverToken":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$Auth$1;->val$authCallback:Lanet/channel/IAuth$AuthCallback;

    const-string/jumbo v3, "auth fail"

    invoke-interface {v2, p1, v3}, Lanet/channel/IAuth$AuthCallback;->onAuthFail(ILjava/lang/String;)V

    goto :goto_0
.end method
