.class public Lc8/Kwf;
.super Ljava/lang/Object;
.source "MtopHttpLoader.java"

# interfaces
.implements Lc8/Exf;


# static fields
.field public static final MTOP_EXTRA_CDN_IP_PORT:Ljava/lang/String; = "mtop_extra_ip_port"

.field public static final MTOP_EXTRA_CONNECT_TYPE:Ljava/lang/String; = "mtop_extra_connect_type"

.field public static final MTOP_EXTRA_FIRST_DATA:Ljava/lang/String; = "mtop_extra_first_data"

.field public static final MTOP_EXTRA_HIT_CDN_CACHE:Ljava/lang/String; = "mtop_extra_hit_cdn_cache"

.field public static final MTOP_EXTRA_RESPONSE_CODE:Ljava/lang/String; = "mtop_extra_response_code"

.field public static final MTOP_EXTRA_SEND_BEFORE:Ljava/lang/String; = "mtop_extra_send_before"

.field public static final MTOP_PREFIX:Ljava/lang/String; = "MtopHttpLoader"


# instance fields
.field private mConnectTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mReadTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/Kwf;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public connectTimeout(I)V
    .locals 0
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 35
    iput p1, p0, Lc8/Kwf;->mConnectTimeout:I

    .line 36
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/util/Map;Lc8/Dxf;)Ljava/util/concurrent/Future;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "finishCallback"    # Lc8/Dxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/Dxf;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 45
    const-string/jumbo v3, "Network"

    const-string/jumbo v4, "%s async download image"

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "MtopHttpLoader"

    aput-object v6, v5, v7

    invoke-static {v3, p1, v4, v5}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance v1, Lc8/IN;

    invoke-direct {v1, p1}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "httpRequest":Lc8/uM;
    invoke-interface {v1, v7}, Lc8/uM;->setCookieEnabled(Z)V

    .line 49
    invoke-interface {v1, v8}, Lc8/uM;->setFollowRedirects(Z)V

    .line 50
    iget v3, p0, Lc8/Kwf;->mConnectTimeout:I

    invoke-interface {v1, v3}, Lc8/uM;->setConnectTimeout(I)V

    .line 51
    iget v3, p0, Lc8/Kwf;->mReadTimeout:I

    invoke-interface {v1, v3}, Lc8/uM;->setReadTimeout(I)V

    .line 52
    const-string/jumbo v3, "f-refer"

    const-string/jumbo v4, "picture"

    invoke-interface {v1, v3, v4}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz p2, :cond_0

    const-string/jumbo v3, "bundle_biz_code"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "bizCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lc8/uM;->setBizId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "bizCode":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v3, Lc8/sN;

    iget-object v4, p0, Lc8/Kwf;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lc8/sN;-><init>(Landroid/content/Context;)V

    new-instance v4, Lc8/Mwf;

    invoke-direct {v4, p3, p2}, Lc8/Mwf;-><init>(Lc8/Dxf;Ljava/util/Map;)V

    invoke-virtual {v3, v1, v9, v9, v4}, Lc8/sN;->asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;

    move-result-object v3

    return-object v3

    .line 58
    .restart local v0    # "bizCode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "ne":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "Network"

    const-string/jumbo v4, "%s get biz code from extras error=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "MtopHttpLoader"

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-static {v3, p1, v4, v5}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public readTimeout(I)V
    .locals 0
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 40
    iput p1, p0, Lc8/Kwf;->mReadTimeout:I

    .line 41
    return-void
.end method
