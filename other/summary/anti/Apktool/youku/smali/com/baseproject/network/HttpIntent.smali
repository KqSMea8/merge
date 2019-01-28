.class public Lcom/baseproject/network/HttpIntent;
.super Landroid/content/Intent;
.source "HttpIntent.java"


# static fields
.field public static final CONNECT_TIMEOUT:Ljava/lang/String; = "connect_timeout"

.field public static final IS_CACHE_DATA:Ljava/lang/String; = "is_cache_data"

.field public static final IS_SET_COOKIE:Ljava/lang/String; = "is_set_cookie"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final READ_TIMEOUT:Ljava/lang/String; = "read_timeout"

.field public static final URI:Ljava/lang/String; = "uri"


# instance fields
.field public connectTimeout:I

.field private parseObject:Ljava/lang/Object;

.field public readTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baseproject/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reqMethod"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baseproject/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reqMethod"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 49
    const-string/jumbo v0, "uri"

    invoke-virtual {p0, v0, p1}, Lcom/baseproject/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v0, "method"

    invoke-virtual {p0, v0, p2}, Lcom/baseproject/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v0, "is_set_cookie"

    invoke-virtual {p0, v0, p3}, Lcom/baseproject/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    const-string/jumbo v0, "is_cache_data"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baseproject/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    const-string/jumbo v0, "connect_timeout"

    const/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1}, Lcom/baseproject/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string/jumbo v0, "read_timeout"

    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/baseproject/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "isSetCookie"    # Z

    .prologue
    .line 45
    const-string/jumbo v0, "GET"

    invoke-direct {p0, p1, v0, p2}, Lcom/baseproject/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public getParseObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baseproject/network/HttpIntent;->parseObject:Ljava/lang/Object;

    return-object v0
.end method

.method public putParseObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baseproject/network/HttpIntent;->parseObject:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/baseproject/network/HttpIntent;->connectTimeout:I

    .line 64
    const-string/jumbo v0, "connect_timeout"

    invoke-virtual {p0, v0, p1}, Lcom/baseproject/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/baseproject/network/HttpIntent;->readTimeout:I

    .line 72
    const-string/jumbo v0, "read_timeout"

    invoke-virtual {p0, v0, p1}, Lcom/baseproject/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    return-void
.end method
