.class public Lc8/MMp;
.super Ljava/lang/Object;
.source "AntiAttackAfterFilter.java"

# interfaces
.implements Lc8/JMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.AntiAttackAfterFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 9
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 33
    iget-object v4, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 37
    .local v4, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    const/16 v5, 0x1a3

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 39
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 40
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v5, "location"

    invoke-static {v1, v5}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "location":Ljava/lang/String;
    const-string/jumbo v5, "x-location-ext"

    invoke-static {v1, v5}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "location_ext":Ljava/lang/String;
    iget-object v5, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v5}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v5

    iget-object v0, v5, Lc8/kOp;->antiAttackHandler:Lc8/kNp;

    .line 43
    .local v0, "antiAttackHandler":Lc8/kNp;
    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0, v2, v3}, Lc8/kNp;->handle(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    const-string/jumbo v5, "ANDROID_SYS_API_41X_ANTI_ATTACK"

    invoke-virtual {v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v5, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5(419)!"

    invoke-virtual {v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 50
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const-string/jumbo v5, "mtopsdk.AntiAttackAfterFilter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[doAfter] execute AntiAttackAfterFilter apiKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 54
    const-string/jumbo v5, "STOP"

    .line 57
    .end local v0    # "antiAttackHandler":Lc8/kNp;
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "location":Ljava/lang/String;
    .end local v3    # "location_ext":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 46
    .restart local v0    # "antiAttackHandler":Lc8/kNp;
    .restart local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v2    # "location":Ljava/lang/String;
    .restart local v3    # "location_ext":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "mtopsdk.AntiAttackAfterFilter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v7, "didn\'t register AntiAttackHandler."

    invoke-static {v5, v6, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "antiAttackHandler":Lc8/kNp;
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "location":Ljava/lang/String;
    .end local v3    # "location_ext":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "CONTINUE"

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "mtopsdk.AntiAttackAfterFilter"

    return-object v0
.end method
