.class public abstract Lc8/Ktf;
.super Lc8/Ltf;
.source "AuthRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Ltf",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final CURVER_SDK:Ljava/lang/String; = "1.3.1"

.field private static final CURVER_SIGN:Ljava/lang/String; = "1.0"

.field private static final O_CODE_EXPIRED:Ljava/lang/String; = "10002"

.field private static final O_CODE_SUCCESS:Ljava/lang/String; = "success"

.field private static final SIGN_SEPARETOR:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "AuthRequest"


# instance fields
.field private mCurTimestamp:J

.field private mEncrypt:Lc8/Ptf;

.field private mIsAckReq:Z

.field private mMD5:Ljava/lang/String;

.field private mReqNo:Ljava/lang/String;

.field private mReqType:Ljava/lang/String;

.field private reqStrategy:Lc8/Ntf;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "isAckReq"    # Z
    .param p3, "reqType"    # Ljava/lang/String;
    .param p4, "retryMaxNum"    # I

    .prologue
    .line 61
    .local p0, "this":Lc8/Ktf;, "Lcom/taobao/orange/request/AuthRequest<TT;>;"
    invoke-direct {p0, p4}, Lc8/Ltf;-><init>(I)V

    .line 62
    iput-object p1, p0, Lc8/Ktf;->mMD5:Ljava/lang/String;

    .line 63
    iput-boolean p2, p0, Lc8/Ktf;->mIsAckReq:Z

    .line 64
    iput-object p3, p0, Lc8/Ktf;->mReqType:Ljava/lang/String;

    .line 65
    new-instance v0, Lc8/Ntf;

    invoke-direct {v0, p2}, Lc8/Ntf;-><init>(Z)V

    iput-object v0, p0, Lc8/Ktf;->reqStrategy:Lc8/Ntf;

    .line 66
    invoke-direct {p0}, Lc8/Ktf;->updateReqTimestamp()V

    .line 68
    sget-object v0, Lc8/Ksf;->mAppSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lc8/Otf;

    invoke-direct {v0}, Lc8/Otf;-><init>()V

    iput-object v0, p0, Lc8/Ktf;->mEncrypt:Lc8/Ptf;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lc8/Qtf;

    invoke-direct {v0}, Lc8/Qtf;-><init>()V

    iput-object v0, p0, Lc8/Ktf;->mEncrypt:Lc8/Ptf;

    goto :goto_0
.end method

.method private getRequestImpl(Ljava/lang/String;)Lc8/uM;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/Ktf;, "Lcom/taobao/orange/request/AuthRequest<TT;>;"
    const/4 v12, 0x1

    .line 198
    sget-object v7, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    invoke-static {v7}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "appKey":Ljava/lang/String;
    sget-object v7, Lc8/Ksf;->mAppVersion:Ljava/lang/String;

    invoke-static {v7}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "appVersion":Ljava/lang/String;
    sget-object v7, Lc8/Ksf;->mDeviceId:Ljava/lang/String;

    invoke-static {v7}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "deviceId":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/Ktf;->getReqPostBody()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "postReqBody":Ljava/lang/String;
    invoke-direct {p0, v3}, Lc8/Ktf;->getSignInfoHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "signInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    :cond_0
    const-string/jumbo v7, "AuthRequest"

    const-string/jumbo v8, "getRequestImpl error"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "signInfo"

    aput-object v11, v9, v10

    aput-object v5, v9, v12

    const/4 v10, 0x2

    const-string/jumbo v11, "appKey"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v0, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "appVersion"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    aput-object v1, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "deviceId"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    aput-object v2, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v4, 0x0

    .line 242
    :goto_0
    return-object v4

    .line 210
    :cond_1
    new-instance v4, Lc8/IN;

    invoke-direct {v4, p1}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, "request":Lc8/uM;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v4, v7}, Lc8/uM;->setCharset(Ljava/lang/String;)V

    .line 212
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 213
    const-string/jumbo v7, "POST"

    invoke-interface {v4, v7}, Lc8/uM;->setMethod(Ljava/lang/String;)V

    .line 214
    new-instance v7, Lanet/channel/request/ByteArrayEntry;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    invoke-interface {v4, v7}, Lc8/uM;->setBodyEntry(Lanet/channel/request/BodyEntry;)V

    .line 219
    :goto_1
    iget-boolean v7, p0, Lc8/Ktf;->mIsAckReq:Z

    if-eqz v7, :cond_2

    .line 220
    const-string/jumbo v7, "o-request-unique"

    iget-object v8, p0, Lc8/Ktf;->mReqNo:Ljava/lang/String;

    invoke-static {v8}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2
    const-string/jumbo v7, "o-timestamp"

    iget-wide v8, p0, Lc8/Ktf;->mCurTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v7, "o-sign-version"

    const-string/jumbo v8, "1.0"

    invoke-static {v8}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v7, "o-sdk-version"

    const-string/jumbo v8, "1.3.1"

    invoke-static {v8}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v7, "o-app-key"

    invoke-interface {v4, v7, v0}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v7, "o-app-version"

    invoke-interface {v4, v7, v1}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v7, "o-device-id"

    invoke-interface {v4, v7, v2}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v7, "o-sign"

    invoke-interface {v4, v7, v5}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v6, Lc8/Ksf;->mUserId:Ljava/lang/String;

    .line 231
    .local v6, "userInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 232
    const-string/jumbo v7, "o-user-info"

    invoke-interface {v4, v7, v6}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_3
    iget-object v7, p0, Lc8/Ktf;->reqStrategy:Lc8/Ntf;

    invoke-virtual {v7}, Lc8/Ntf;->getCurDomain()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 237
    const-string/jumbo v7, "host"

    iget-object v8, p0, Lc8/Ktf;->reqStrategy:Lc8/Ntf;

    invoke-virtual {v8}, Lc8/Ntf;->getCurDomain()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/cuf;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_4
    invoke-virtual {p0}, Lc8/Ktf;->getReqParams()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Lc8/uM;->setParams(Ljava/util/List;)V

    .line 241
    invoke-interface {v4, v12}, Lc8/uM;->setRetryTime(I)V

    goto/16 :goto_0

    .line 216
    .end local v6    # "userInfo":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "GET"

    invoke-interface {v4, v7}, Lc8/uM;->setMethod(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getSignInfoHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "reqBody"    # Ljava/lang/String;

    .prologue
    .line 254
    .local p0, "this":Lc8/Ktf;, "Lcom/taobao/orange/request/AuthRequest<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc8/Ktf;->mReqType:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "&"

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&"

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/Ksf;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&"

    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/Ksf;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&"

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lc8/Ktf;->mCurTimestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    .local v0, "signKey":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lc8/Ktf;->mIsAckReq:Z

    if-eqz v2, :cond_0

    .line 261
    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Ktf;->mReqNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v2, p0, Lc8/Ktf;->mEncrypt:Lc8/Ptf;

    sget-object v3, Lc8/Ksf;->mContext:Landroid/content/Context;

    sget-object v4, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lc8/Ksf;->mAuthCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lc8/Ptf;->sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "signValue":Ljava/lang/String;
    return-object v1
.end method

.method private updateReqTimestamp()V
    .locals 4

    .prologue
    .line 76
    .local p0, "this":Lc8/Ktf;, "Lcom/taobao/orange/request/AuthRequest<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lc8/Ntf;->reqTimestampOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Ktf;->mCurTimestamp:J

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/Ksf;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/Ktf;->mCurTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Ktf;->mReqNo:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public formateReqUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 180
    .local p0, "this":Lc8/Ktf;, "Lcom/taobao/orange/request/AuthRequest<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    sget-object v2, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    sget-object v3, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    if-ne v2, v3, :cond_1

    const-string/jumbo v1, "https"

    .line 182
    .local v1, "protocol":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    .local v0, "configDownloadUrl":Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .end local v0    # "configDownloadUrl":Ljava/lang/StringBuilder;
    .end local v1    # "protocol":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 181
    :cond_1
    const-string/jumbo v1, "http"

    goto :goto_0

    .line 188
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected abstract getReqParams()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getReqPostBody()Ljava/lang/String;
.end method

.method protected abstract parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public syncRequest()Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lc8/Ktf;, "Lcom/taobao/orange/request/AuthRequest<TT;>;"
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest start"

    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "isAckReq"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Ktf;->mIsAckReq:Z

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const-string/jumbo v27, "reqType"

    aput-object v27, v25, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->mReqType:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x4

    const-string/jumbo v27, "mRetryMaxNum"

    aput-object v27, v25, v26

    const/16 v26, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Ktf;->mRetryMaxNum:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v7, Lc8/sN;

    sget-object v21, Lc8/Ksf;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lc8/sN;-><init>(Landroid/content/Context;)V

    .line 90
    .local v7, "network":Lc8/hM;
    const/4 v14, 0x0

    .line 98
    .local v14, "resContent":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->reqStrategy:Lc8/Ntf;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lc8/Ntf;->getCurReqHost()Ljava/lang/String;

    move-result-object v6

    .local v6, "host":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 99
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest try"

    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "host"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    const/16 v26, 0x2

    const-string/jumbo v27, "isAckReq"

    aput-object v27, v25, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Ktf;->mIsAckReq:Z

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    const-string/jumbo v27, "reqType"

    aput-object v27, v25, v26

    const/16 v26, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->mReqType:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const/16 v19, 0x0

    .local v19, "retryNo":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Ktf;->mRetryMaxNum:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->mReqType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lc8/Ktf;->formateReqUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "reqUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lc8/Ktf;->getRequestImpl(Ljava/lang/String;)Lc8/uM;

    move-result-object v21

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Lc8/hM;->syncSend(Lc8/uM;Ljava/lang/Object;)Lc8/vM;

    move-result-object v17

    .line 103
    .local v17, "response":Lc8/vM;
    const-string/jumbo v21, "private_orange"

    const-string/jumbo v24, "auth_req"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->mReqType:Ljava/lang/String;

    move-object/from16 v25, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 105
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "host"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    const/16 v26, 0x2

    const-string/jumbo v27, "retryNo"

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Lc8/vM;->getStatusCode()I

    move-result v21

    const/16 v24, 0xc8

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 108
    invoke-interface/range {v17 .. v17}, Lc8/vM;->getConnHeadFields()Ljava/util/Map;

    move-result-object v16

    .line 110
    .local v16, "resHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1

    .line 111
    const-string/jumbo v21, "o-code"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lc8/cuf;->getDecodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, "ocode":Ljava/lang/String;
    const-string/jumbo v21, "o-msg"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lc8/cuf;->getDecodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, "omsg":Ljava/lang/String;
    const-string/jumbo v21, "10002"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 114
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest need retry as expired"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const-string/jumbo v21, "o-server-timestamp"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lc8/cuf;->getDecodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lc8/cuf;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 116
    .local v22, "server_timestamp":J
    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Ktf;->mCurTimestamp:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-eqz v21, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Ktf;->mCurTimestamp:J

    move-wide/from16 v24, v0

    sub-long v10, v22, v24

    .line 118
    .local v10, "offsetValue":J
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "update global reqTimestampOffset(s)"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    sput-wide v10, Lc8/Ntf;->reqTimestampOffset:J

    .line 120
    invoke-direct/range {p0 .. p0}, Lc8/Ktf;->updateReqTimestamp()V

    .line 100
    .end local v9    # "ocode":Ljava/lang/String;
    .end local v10    # "offsetValue":J
    .end local v12    # "omsg":Ljava/lang/String;
    .end local v22    # "server_timestamp":J
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 123
    .restart local v9    # "ocode":Ljava/lang/String;
    .restart local v12    # "omsg":Ljava/lang/String;
    :cond_2
    const-string/jumbo v21, "success"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 125
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ktf;->mErrorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_3
    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/Ktf;->mErrorMsg:Ljava/lang/String;

    .line 129
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest break"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "mErrorCode"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Ktf;->mErrorCode:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const-string/jumbo v27, "mErrorMsg"

    aput-object v27, v25, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->mErrorMsg:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 133
    :cond_3
    const-string/jumbo v21, "o-server-ip"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lc8/cuf;->getDecodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 134
    .local v20, "serverIps":Ljava/lang/String;
    const-string/jumbo v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "newIps":[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v0, v8

    move/from16 v21, v0

    if-lez v21, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->reqStrategy:Lc8/Ntf;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Ktf;->mIsAckReq:Z

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Lc8/Ntf;->updateReqIps(Z[Ljava/lang/String;)V

    .line 138
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Ktf;->mIsAckReq:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 139
    const/16 v21, 0xc8

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ktf;->mErrorCode:I

    .line 140
    const/16 v18, 0x0

    .line 176
    .end local v8    # "newIps":[Ljava/lang/String;
    .end local v9    # "ocode":Ljava/lang/String;
    .end local v12    # "omsg":Ljava/lang/String;
    .end local v13    # "reqUrl":Ljava/lang/String;
    .end local v16    # "resHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v17    # "response":Lc8/vM;
    .end local v19    # "retryNo":I
    .end local v20    # "serverIps":Ljava/lang/String;
    :goto_4
    return-object v18

    .line 142
    .restart local v8    # "newIps":[Ljava/lang/String;
    .restart local v9    # "ocode":Ljava/lang/String;
    .restart local v12    # "omsg":Ljava/lang/String;
    .restart local v13    # "reqUrl":Ljava/lang/String;
    .restart local v16    # "resHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "response":Lc8/vM;
    .restart local v19    # "retryNo":I
    .restart local v20    # "serverIps":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v17 .. v17}, Lc8/vM;->getBytedata()[B

    move-result-object v21

    if-eqz v21, :cond_6

    .line 144
    :try_start_1
    new-instance v15, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Lc8/vM;->getBytedata()[B

    move-result-object v21

    const-string/jumbo v24, "utf-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v14    # "resContent":Ljava/lang/String;
    .local v15, "resContent":Ljava/lang/String;
    move-object v14, v15

    .line 148
    .end local v15    # "resContent":Ljava/lang/String;
    .restart local v14    # "resContent":Ljava/lang/String;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->mMD5:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ktf;->mMD5:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v14}, Lc8/auf;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 149
    const/4 v14, 0x0

    .line 150
    const/16 v21, 0x1f43

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ktf;->mErrorCode:I

    .line 151
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest need retry as broken as MD5 not match"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 157
    .end local v8    # "newIps":[Ljava/lang/String;
    .end local v9    # "ocode":Ljava/lang/String;
    .end local v12    # "omsg":Ljava/lang/String;
    .end local v16    # "resHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v20    # "serverIps":Ljava/lang/String;
    :cond_7
    const-string/jumbo v24, "AuthRequest"

    const-string/jumbo v25, "syncRequest unreachable"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v21, 0x0

    const-string/jumbo v27, "host"

    aput-object v27, v26, v21

    const/16 v21, 0x1

    aput-object v6, v26, v21

    const/16 v21, 0x2

    const-string/jumbo v27, "response"

    aput-object v27, v26, v21

    const/16 v27, 0x3

    if-nez v17, :cond_8

    const-string/jumbo v21, "null"

    :goto_6
    aput-object v21, v26, v27

    const/16 v21, 0x4

    const-string/jumbo v27, "retryNo"

    aput-object v27, v26, v21

    const/16 v21, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v26, v21

    invoke-static/range {v24 .. v26}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface/range {v17 .. v17}, Lc8/vM;->getStatusCode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto :goto_6

    .line 163
    .end local v13    # "reqUrl":Ljava/lang/String;
    .end local v17    # "response":Lc8/vM;
    .end local v19    # "retryNo":I
    :cond_9
    const/16 v18, 0x0

    .line 164
    .local v18, "resultObj":Ljava/lang/Object;, "TT;"
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/Ktf;->parseResContent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 166
    if-eqz v18, :cond_a

    .line 167
    const/16 v21, 0xc8

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ktf;->mErrorCode:I

    .line 168
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "resultObj"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 170
    :cond_a
    const/16 v21, 0x1f44

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ktf;->mErrorCode:I

    .line 171
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest content illegal format"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 174
    :cond_b
    const-string/jumbo v21, "AuthRequest"

    const-string/jumbo v24, "syncRequest response is empty"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v18    # "resultObj":Ljava/lang/Object;, "TT;"
    .restart local v8    # "newIps":[Ljava/lang/String;
    .restart local v9    # "ocode":Ljava/lang/String;
    .restart local v12    # "omsg":Ljava/lang/String;
    .restart local v13    # "reqUrl":Ljava/lang/String;
    .restart local v16    # "resHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "response":Lc8/vM;
    .restart local v19    # "retryNo":I
    .restart local v20    # "serverIps":Ljava/lang/String;
    :catch_0
    move-exception v21

    goto/16 :goto_5

    .end local v8    # "newIps":[Ljava/lang/String;
    .end local v20    # "serverIps":Ljava/lang/String;
    :catch_1
    move-exception v21

    goto/16 :goto_3
.end method
