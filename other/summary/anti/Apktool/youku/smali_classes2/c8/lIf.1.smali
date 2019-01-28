.class public Lc8/lIf;
.super Ljava/lang/Object;
.source "RemoteDebugBusiness.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lc8/lIf;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTTID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lc8/lIf;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/lIf;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/lIf;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/lIf;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lc8/lIf;->mInstance:Lc8/lIf;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lc8/lIf;

    invoke-direct {v0, p0, p1}, Lc8/lIf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lc8/lIf;->mInstance:Lc8/lIf;

    .line 40
    :cond_0
    sget-object v0, Lc8/lIf;->mInstance:Lc8/lIf;

    return-object v0
.end method


# virtual methods
.method public queryTaskInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 104
    :try_start_0
    new-instance v2, Lc8/jIf;

    invoke-direct {v2}, Lc8/jIf;-><init>()V

    .line 105
    .local v2, "request":Lc8/jIf;
    invoke-virtual {v2, p1}, Lc8/jIf;->setAppVersion(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, p2}, Lc8/jIf;->setAppKey(Ljava/lang/String;)V

    .line 107
    invoke-static {p3}, Lc8/IHf;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lc8/jIf;->setData(Ljava/lang/String;)V

    .line 110
    iget-object v6, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 111
    iget-object v6, p0, Lc8/lIf;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v6

    const-string/jumbo v7, "600000"

    invoke-virtual {v6, v2, v7}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v1

    .line 116
    .local v1, "reqInstance":Lc8/COp;
    :goto_0
    sget-object v6, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v1, v6}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    .line 117
    invoke-virtual {v1}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 118
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 120
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_0

    .line 121
    const-string/jumbo v6, "data"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 122
    .local v0, "content":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 123
    const-string/jumbo v6, "data"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/IHf;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .end local v0    # "content":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "reqInstance":Lc8/COp;
    .end local v2    # "request":Lc8/jIf;
    .end local v3    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    .end local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_1
    return-object v5

    .line 113
    .restart local v2    # "request":Lc8/jIf;
    :cond_1
    iget-object v6, p0, Lc8/lIf;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-static {v6, v7}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v6

    iget-object v7, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v1

    .restart local v1    # "reqInstance":Lc8/COp;
    goto :goto_0

    .line 128
    .restart local v3    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_2
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 140
    .end local v1    # "reqInstance":Lc8/COp;
    .end local v2    # "request":Lc8/jIf;
    .end local v3    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public queryTraceStatusInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 49
    new-instance v3, Lc8/rIf;

    invoke-direct {v3}, Lc8/rIf;-><init>()V

    .line 50
    .local v3, "request":Lc8/rIf;
    invoke-virtual {v3, p1}, Lc8/rIf;->setAppVersion(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, p2}, Lc8/rIf;->setAppKey(Ljava/lang/String;)V

    .line 52
    invoke-static {p3}, Lc8/IHf;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lc8/rIf;->setData(Ljava/lang/String;)V

    .line 55
    iget-object v7, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    iget-object v7, p0, Lc8/lIf;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v7

    const-string/jumbo v8, "600000"

    invoke-virtual {v7, v3, v8}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v2

    .line 62
    .local v2, "reqInstance":Lc8/COp;
    :goto_0
    sget-object v7, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v2, v7}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    .line 64
    invoke-virtual {v2}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v4

    .line 65
    .local v4, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 76
    .local v5, "result":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_0

    .line 77
    const-string/jumbo v7, "data"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 78
    .local v0, "content":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v6, "data"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "encryptStr":Ljava/lang/String;
    invoke-static {v1}, Lc8/IHf;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .end local v0    # "content":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "encryptStr":Ljava/lang/String;
    .end local v5    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_1
    return-object v6

    .line 58
    .end local v2    # "reqInstance":Lc8/COp;
    .end local v4    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_1
    iget-object v7, p0, Lc8/lIf;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-static {v7, v8}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v7

    iget-object v8, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v2

    .restart local v2    # "reqInstance":Lc8/COp;
    goto :goto_0

    .line 87
    .restart local v4    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_2
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v7

    if-nez v7, :cond_0

    .line 90
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1
.end method

.method public responseTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/JNp;)V
    .locals 4
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/JNp;

    .prologue
    .line 146
    new-instance v1, Lc8/kIf;

    invoke-direct {v1}, Lc8/kIf;-><init>()V

    .line 147
    .local v1, "resRequest":Lc8/kIf;
    invoke-virtual {v1, p1}, Lc8/kIf;->setAppVersion(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, p2}, Lc8/kIf;->setAppKey(Ljava/lang/String;)V

    .line 149
    invoke-static {p3}, Lc8/IHf;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/kIf;->setData(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lc8/lIf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v2

    const-string/jumbo v3, "600000"

    invoke-virtual {v2, v1, v3}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    .line 158
    .local v0, "reqInstance":Lc8/COp;
    :goto_0
    sget-object v2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v2}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    .line 159
    invoke-virtual {v0, p4}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v2

    invoke-virtual {v2}, Lc8/COp;->asyncRequest()Lc8/ENp;

    .line 160
    return-void

    .line 155
    .end local v0    # "reqInstance":Lc8/COp;
    :cond_0
    iget-object v2, p0, Lc8/lIf;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v2

    iget-object v3, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    .restart local v0    # "reqInstance":Lc8/COp;
    goto :goto_0
.end method

.method public setTTID(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lc8/lIf;->mTTID:Ljava/lang/String;

    .line 45
    return-void
.end method
