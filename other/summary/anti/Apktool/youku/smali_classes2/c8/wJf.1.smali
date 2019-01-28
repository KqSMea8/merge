.class public abstract Lc8/wJf;
.super Lc8/PIf;
.source "MtopConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/PIf",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;[B>;"
    }
.end annotation


# static fields
.field public static final KEY_API:Ljava/lang/String; = "api"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DID:Ljava/lang/String; = "did"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_REQ_MODE:Ljava/lang/String; = "req"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final REQ_MODE_GET:Ljava/lang/String; = "get"

.field public static final REQ_MODE_POST:Ljava/lang/String; = "post"

.field protected static final TAG:Ljava/lang/String; = "MtopConnection"


# instance fields
.field private mNext:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lc8/PIf;-><init>()V

    .line 120
    new-instance v0, Lc8/vJf;

    invoke-direct {v0, p0}, Lc8/vJf;-><init>(Lc8/wJf;)V

    iput-object v0, p0, Lc8/wJf;->mNext:Lc8/inq;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lc8/wJf;->type:I

    .line 45
    return-void
.end method

.method static synthetic access$002(Lc8/wJf;I)I
    .locals 0
    .param p0, "x0"    # Lc8/wJf;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lc8/wJf;->status:I

    return p1
.end method

.method static synthetic access$100(Lc8/wJf;)I
    .locals 1
    .param p0, "x0"    # Lc8/wJf;

    .prologue
    .line 28
    iget v0, p0, Lc8/wJf;->status:I

    return v0
.end method

.method static synthetic access$204(Lc8/wJf;)I
    .locals 1
    .param p0, "x0"    # Lc8/wJf;

    .prologue
    .line 28
    iget v0, p0, Lc8/wJf;->status:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/wJf;->status:I

    return v0
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;ILjava/util/Map;)V
    .locals 4
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "MtopConnection"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "type:"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lc8/wJf;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "response:"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "service:"

    aput-object v3, v2, v0

    const/4 v3, 0x6

    if-eqz p3, :cond_0

    const-string/jumbo v0, "service_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/tJf;

    invoke-direct {v1, p0, p1}, Lc8/tJf;-><init>(Lc8/wJf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/sJf;

    invoke-direct {v1, p0, p2, p3, p1}, Lc8/sJf;-><init>(Lc8/wJf;ILjava/util/Map;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    .line 118
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract request(Ljava/util/Map;Lc8/QJf;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/QJf;",
            ")V"
        }
    .end annotation
.end method

.method public send(Lc8/RJf;)V
    .locals 2
    .param p1, "p"    # Lc8/RJf;

    .prologue
    .line 51
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/DIf;->getResponseManager()Lc8/GIf;

    move-result-object v0

    iget-object v1, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v1}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/GIf;->record(Ljava/lang/String;Lc8/RJf;)V

    .line 52
    invoke-virtual {p0}, Lc8/wJf;->getConverter2Data()Lc8/MIf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/hBq;->io()Lc8/amq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toList()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {p0}, Lc8/wJf;->getConverter2Data()Lc8/MIf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->compose(Lc8/Ulq;)Lc8/Vlq;

    move-result-object v0

    iget-object v1, p0, Lc8/wJf;->mNext:Lc8/inq;

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    .line 54
    :cond_0
    return-void
.end method

.method public transCode(ILjava/lang/String;)I
    .locals 5
    .param p1, "code"    # I
    .param p2, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 58
    const/16 v0, 0x7d0

    .line 59
    .local v0, "retCodeInt":I
    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/16 v0, 0x3e8

    .line 81
    :goto_0
    return v0

    .line 61
    :cond_0
    const-string/jumbo v1, "ANDROID_SYS_MTOP_APICALL_ASYNC_TIMEOUT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0xca

    if-ne v1, p1, :cond_2

    .line 65
    :cond_1
    const/16 v0, -0xbb9

    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo v1, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0xfa1

    .line 68
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    :cond_3
    const/16 v0, 0xfa1

    goto :goto_0

    .line 71
    :cond_4
    const-string/jumbo v1, "ANDROID_SYS_NETWORK_ERROR"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 72
    const/16 v0, -0xbbc

    goto :goto_0

    .line 75
    :cond_5
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    const-string/jumbo v1, "MtopConnection"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "transCode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
