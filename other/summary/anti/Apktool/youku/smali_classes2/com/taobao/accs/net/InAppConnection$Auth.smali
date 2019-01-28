.class public Lcom/taobao/accs/net/InAppConnection$Auth;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Lc8/UI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/net/InAppConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auth"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private authUrl:Ljava/lang/String;

.field private connection:Lcom/taobao/accs/net/BaseConnection;

.field private connectionType:I


# direct methods
.method public constructor <init>(Lcom/taobao/accs/net/BaseConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p1}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->TAG:Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/accs/net/BaseConnection;->buildAuthUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->authUrl:Ljava/lang/String;

    .line 465
    iget v0, p1, Lcom/taobao/accs/net/BaseConnection;->mConnectionType:I

    iput v0, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->connectionType:I

    .line 466
    iput-object p1, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->connection:Lcom/taobao/accs/net/BaseConnection;

    .line 467
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/net/InAppConnection$Auth;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/InAppConnection$Auth;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/accs/net/InAppConnection$Auth;)Lcom/taobao/accs/net/BaseConnection;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/InAppConnection$Auth;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->connection:Lcom/taobao/accs/net/BaseConnection;

    return-object v0
.end method


# virtual methods
.method public auth(Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V
    .locals 9
    .param p1, "session"    # Lanet/channel/Session;
    .param p2, "cb"    # Lanet/channel/IAuth$AuthCallback;

    .prologue
    const/4 v8, 0x0

    .line 471
    move-object v0, p1

    .line 472
    .local v0, "accsSession":Lanet/channel/Session;
    move-object v1, p2

    .line 473
    .local v1, "authCallback":Lanet/channel/IAuth$AuthCallback;
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "auth begin"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "seq"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, v0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->connectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " auth URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->authUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    new-instance v3, Lc8/cK;

    invoke-direct {v3}, Lc8/cK;-><init>()V

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$Auth;->authUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/cK;->setUrl(Ljava/lang/String;)Lc8/cK;

    move-result-object v3

    invoke-virtual {v3}, Lc8/cK;->build()Lc8/eK;

    move-result-object v2

    .line 478
    .local v2, "request":Lc8/eK;
    new-instance v3, Lcom/taobao/accs/net/InAppConnection$Auth$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/taobao/accs/net/InAppConnection$Auth$1;-><init>(Lcom/taobao/accs/net/InAppConnection$Auth;Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V

    invoke-virtual {v0, v2, v3}, Lanet/channel/Session;->request(Lc8/eK;Lc8/VI;)Lc8/ZJ;

    .line 508
    return-void
.end method
