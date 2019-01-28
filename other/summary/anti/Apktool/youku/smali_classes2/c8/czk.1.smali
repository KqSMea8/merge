.class public Lc8/czk;
.super Lc8/wJf;
.source "MKTHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtopConnectionImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dzk;


# direct methods
.method public constructor <init>(Lc8/dzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dzk;

    .prologue
    .line 184
    iput-object p1, p0, Lc8/czk;->this$0:Lc8/dzk;

    invoke-direct {p0}, Lc8/wJf;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Ljava/util/Map;Lc8/QJf;)V
    .locals 6
    .param p2, "callback"    # Lc8/QJf;
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

    .prologue
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 187
    new-instance v1, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v1}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 188
    .local v1, "mtopReq":Lmtopsdk/mtop/domain/MtopRequest;
    const-string/jumbo v3, "api"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v3, "version"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 191
    invoke-virtual {v1, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 192
    const-string/jumbo v3, "data"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 193
    new-instance v4, Lc8/COp;

    const-string/jumbo v3, "did"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v1, v3}, Lc8/COp;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    const-string/jumbo v3, "post"

    const-string/jumbo v5, "req"

    .line 194
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    :goto_0
    invoke-virtual {v4, v3}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    move-result-object v3

    const-string/jumbo v4, "context"

    .line 195
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/COp;->reqContext(Ljava/lang/Object;)Lc8/COp;

    move-result-object v3

    new-instance v4, Lc8/bzk;

    invoke-direct {v4, p0, p2}, Lc8/bzk;-><init>(Lc8/czk;Lc8/QJf;)V

    .line 197
    invoke-virtual {v3, v4}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v0

    .line 212
    .local v0, "builder":Lc8/COp;
    const-string/jumbo v3, "timeout"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "time":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 213
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "time":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Lc8/COp;->setSocketTimeoutMilliSecond(I)Lc8/COp;

    .line 214
    :cond_0
    invoke-virtual {v0}, Lc8/COp;->asyncRequest()Lc8/ENp;

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RequestNet mtop send normal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v3, "api"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    return-void

    .line 194
    .end local v0    # "builder":Lc8/COp;
    :cond_1
    sget-object v3, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_0
.end method
