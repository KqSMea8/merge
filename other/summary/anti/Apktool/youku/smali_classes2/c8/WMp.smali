.class public Lc8/WMp;
.super Ljava/lang/Object;
.source "ProtocolParamBuilderBeforeFilter.java"

# interfaces
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ProtocolParamBuilderBeforeFilter"


# instance fields
.field private paramBuilder:Lc8/POp;


# direct methods
.method public constructor <init>(Lc8/POp;)V
    .locals 0
    .param p1, "paramBuilder"    # Lc8/POp;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lc8/WMp;->paramBuilder:Lc8/POp;

    .line 28
    return-void
.end method


# virtual methods
.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 9
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 38
    iget-object v5, p0, Lc8/WMp;->paramBuilder:Lc8/POp;

    invoke-interface {v5, p1}, Lc8/POp;->buildParams(Lc8/IMp;)Ljava/util/Map;

    move-result-object v3

    .line 39
    .local v3, "protocolParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 40
    .local v1, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    const/4 v2, 0x0

    .line 41
    .local v2, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    if-nez v3, :cond_1

    .line 42
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    .end local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ANDROID_SYS_INIT_MTOP_ISIGN_ERROR"

    const-string/jumbo v8, "\u521d\u59cb\u5316Mtop\u7b7e\u540d\u7c7bISign\u5931\u8d25"

    invoke-direct {v2, v5, v6, v7, v8}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .restart local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 54
    iput-object v2, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 56
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 57
    const-string/jumbo v5, "STOP"

    .line 61
    :goto_1
    return-object v5

    .line 43
    :cond_1
    const-string/jumbo v5, "sign"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 44
    const-string/jumbo v5, "SG_ERROR_CODE"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "errorCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .local v4, "retCode":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    if-eqz v0, :cond_2

    .line 48
    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_2
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    .end local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u751f\u6210Mtop\u7b7e\u540dsign\u5931\u8d25"

    invoke-direct {v2, v5, v6, v7, v8}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    goto :goto_0

    .line 60
    .end local v0    # "errorCode":Ljava/lang/String;
    .end local v4    # "retCode":Ljava/lang/StringBuilder;
    :cond_3
    iput-object v3, p1, Lc8/IMp;->protocolParams:Ljava/util/Map;

    .line 61
    const-string/jumbo v5, "CONTINUE"

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "mtopsdk.ProtocolParamBuilderBeforeFilter"

    return-object v0
.end method
