.class public Lc8/qLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lc8/Pwf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->createNetworkAnalyzer()Lc8/Pwf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 1247
    iput-object p1, p0, Lc8/qLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCertificateException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 1291
    instance-of v0, p1, Lcom/taobao/phenix/compat/mtop/MtopCertificateException;

    return v0
.end method

.method public isConnectTimeoutException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 1301
    instance-of v0, p1, Lcom/taobao/phenix/compat/mtop/MtopConnectTimeoutException;

    return v0
.end method

.method public isIndifferentException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 1311
    instance-of v0, p1, Lcom/taobao/phenix/compat/mtop/MtopIndifferentException;

    return v0
.end method

.method public isInvalidHostException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 1296
    instance-of v0, p1, Lcom/taobao/phenix/compat/mtop/MtopInvalidHostException;

    return v0
.end method

.method public isInvalidUrlException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 1306
    instance-of v0, p1, Lcom/taobao/phenix/compat/mtop/MtopInvalidUrlException;

    return v0
.end method

.method public isNoNetworkException(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 1280
    instance-of v0, p1, Lcom/taobao/phenix/compat/mtop/MtopIndifferentException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/taobao/phenix/compat/mtop/MtopIndifferentException;

    .line 1281
    .end local p1    # "thr":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/taobao/phenix/compat/mtop/MtopIndifferentException;->getExtraCode()I

    move-result v0

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadTimeoutException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 1286
    instance-of v0, p1, Lcom/taobao/phenix/compat/mtop/MtopReadTimeoutException;

    return v0
.end method

.method public keyOfCdnIpPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    const-string/jumbo v0, "mtop_extra_ip_port"

    return-object v0
.end method

.method public keyOfConnectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1255
    const-string/jumbo v0, "mtop_extra_connect_type"

    return-object v0
.end method

.method public keyOfFirstData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1265
    const-string/jumbo v0, "mtop_extra_first_data"

    return-object v0
.end method

.method public keyOfHitCdnCache()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1250
    const-string/jumbo v0, "mtop_extra_hit_cdn_cache"

    return-object v0
.end method

.method public keyOfResponseCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1275
    const-string/jumbo v0, "mtop_extra_response_code"

    return-object v0
.end method

.method public keyOfSendBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1270
    const-string/jumbo v0, "mtop_extra_send_before"

    return-object v0
.end method
