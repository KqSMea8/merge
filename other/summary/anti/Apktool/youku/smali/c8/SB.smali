.class public Lc8/SB;
.super Ljava/lang/Object;
.source "CdnApiAdapter.java"

# interfaces
.implements Lc8/hC;


# instance fields
.field private request:Lc8/fC;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wrapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 38
    :cond_0
    const-string/jumbo v5, ""

    .line 67
    :goto_0
    return-object v5

    .line 39
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    .local v0, "base":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 42
    .local v4, "urlBuilder":Landroid/net/Uri$Builder;
    iget-object v5, p0, Lc8/SB;->request:Lc8/fC;

    const-string/jumbo v6, "biztype"

    invoke-virtual {v5, v6}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    const-string/jumbo v5, "windvane"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    iget-object v5, p0, Lc8/SB;->request:Lc8/fC;

    const-string/jumbo v6, "api"

    invoke-virtual {v5, v6}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "h5-apps.json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    iget-object v5, p0, Lc8/SB;->request:Lc8/fC;

    const-string/jumbo v6, "wvgroupID"

    invoke-virtual {v5, v6}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    iget-object v5, p0, Lc8/SB;->request:Lc8/fC;

    const-string/jumbo v6, "wvgroupVersion"

    invoke-virtual {v5, v6}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v2, "sbstr":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v5

    invoke-virtual {v5}, Lc8/xB;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v6

    invoke-virtual {v6}, Lc8/xB;->getTtid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "8.3.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v5, p0, Lc8/SB;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->getDataParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v3

    .line 55
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 56
    const-string/jumbo v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/SB;->request:Lc8/fC;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/fC;->getDataParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    iget-object v5, p0, Lc8/SB;->request:Lc8/fC;

    const-string/jumbo v6, "api"

    invoke-virtual {v5, v6}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "h5-apps.json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 62
    iget-object v5, p0, Lc8/SB;->request:Lc8/fC;

    const-string/jumbo v6, "ABT"

    invoke-virtual {v5, v6}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    :cond_4
    iget-object v5, p0, Lc8/SB;->request:Lc8/fC;

    const-string/jumbo v6, "api"

    invoke-virtual {v5, v6}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method


# virtual methods
.method public formatBody(Lc8/fC;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lc8/fC;

    .prologue
    .line 33
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public formatUrl(Lc8/fC;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lc8/fC;

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    const-string/jumbo v0, ""

    .line 28
    :goto_0
    return-object v0

    .line 27
    :cond_0
    iput-object p1, p0, Lc8/SB;->request:Lc8/fC;

    .line 28
    invoke-static {}, Lc8/xB;->getCdnConfigUrlPre()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/SB;->wrapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
