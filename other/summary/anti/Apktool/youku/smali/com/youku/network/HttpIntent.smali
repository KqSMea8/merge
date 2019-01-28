.class public Lcom/youku/network/HttpIntent;
.super Landroid/content/Intent;
.source "HttpIntent.java"


# static fields
.field public static final CONNECT_TIMEOUT:Ljava/lang/String; = "connect_timeout"

.field public static final IS_CACHE_DATA:Ljava/lang/String; = "is_cache_data"

.field public static final IS_IGNORE_ETAG:Ljava/lang/String; = "is_ignore_etag"

.field public static final IS_SET_COOKIE:Ljava/lang/String; = "is_set_cookie"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final READ_TIMEOUT:Ljava/lang/String; = "read_timeout"

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reqMethod"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reqMethod"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reqMethod"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .param p4, "isCacheData"    # Z

    .prologue
    const/16 v1, 0x2710

    .line 61
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 62
    const-string/jumbo v0, "uri"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string/jumbo v0, "method"

    invoke-virtual {p0, v0, p2}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v0, "is_set_cookie"

    invoke-virtual {p0, v0, p3}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const-string/jumbo v0, "is_cache_data"

    invoke-virtual {p0, v0, p4}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string/jumbo v0, "connect_timeout"

    invoke-virtual {p0, v0, v1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string/jumbo v0, "read_timeout"

    invoke-virtual {p0, v0, v1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string/jumbo v0, "is_ignore_etag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "isSetCookie"    # Z

    .prologue
    .line 45
    const-string/jumbo v0, "GET"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "isSetCookie"    # Z
    .param p3, "isCacheData"    # Z

    .prologue
    .line 49
    const-string/jumbo v0, "GET"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isAdIntent"    # Z
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 58
    return-void
.end method


# virtual methods
.method public setCache(Z)Lcom/youku/network/HttpIntent;
    .locals 1
    .param p1, "isCacheData"    # Z

    .prologue
    .line 95
    const-string/jumbo v0, "is_cache_data"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/youku/network/HttpIntent;
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 76
    const-string/jumbo v0, "connect_timeout"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    return-object p0
.end method

.method public setIgnoreEtag(Z)Lcom/youku/network/HttpIntent;
    .locals 1
    .param p1, "isIgnoreEtag"    # Z

    .prologue
    .line 103
    const-string/jumbo v0, "is_ignore_etag"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    return-object p0
.end method

.method public setReadTimeout(I)Lcom/youku/network/HttpIntent;
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 85
    const-string/jumbo v0, "read_timeout"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    return-object p0
.end method
