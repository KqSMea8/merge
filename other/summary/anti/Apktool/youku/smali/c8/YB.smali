.class public Lc8/YB;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final DEFAULT_HTTPS_ERROR_EXPIRED:Ljava/lang/String; = "EXPIRED"

.field public static final DEFAULT_HTTPS_ERROR_INVALID:Ljava/lang/String; = "INVALID"

.field public static final DEFAULT_HTTPS_ERROR_NONE:Ljava/lang/String; = "NONE"

.field public static final DEFAULT_MAX_LENGTH:I = 0x500000

.field public static final DEFAULT_MAX_REDIRECT_TIMES:I = 0x5


# instance fields
.field private connectTimeout:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpsVerifyError:Ljava/lang/String;

.field private isRedirect:Z

.field private method:Ljava/lang/String;

.field private postData:[B

.field private readTimeout:I

.field private retryTime:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x1388

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/YB;->method:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/YB;->headers:Ljava/util/Map;

    .line 29
    iput-boolean v1, p0, Lc8/YB;->isRedirect:Z

    .line 30
    iput v1, p0, Lc8/YB;->retryTime:I

    .line 32
    iput v2, p0, Lc8/YB;->connectTimeout:I

    .line 33
    iput v2, p0, Lc8/YB;->readTimeout:I

    .line 35
    const-string/jumbo v0, "NONE"

    iput-object v0, p0, Lc8/YB;->httpsVerifyError:Ljava/lang/String;

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "HttpRequest init error, url is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lc8/YB;->uri:Landroid/net/Uri;

    .line 42
    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lc8/YB;->connectTimeout:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lc8/YB;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpsVerifyError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lc8/YB;->httpsVerifyError:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/YB;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPostData()[B
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/YB;->postData:[B

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lc8/YB;->readTimeout:I

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lc8/YB;->retryTime:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc8/YB;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isRedirect()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lc8/YB;->isRedirect:Z

    return v0
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 83
    iput p1, p0, Lc8/YB;->connectTimeout:I

    .line 84
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/YB;->headers:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public setHttpsVerifyError(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpsVerifyError"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lc8/YB;->httpsVerifyError:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lc8/YB;->method:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPostData([B)V
    .locals 0
    .param p1, "postData"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lc8/YB;->postData:[B

    .line 60
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 91
    iput p1, p0, Lc8/YB;->readTimeout:I

    .line 92
    return-void
.end method

.method public setRedirect(Z)V
    .locals 0
    .param p1, "isRedirect"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lc8/YB;->isRedirect:Z

    .line 100
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0
    .param p1, "retryTime"    # I

    .prologue
    .line 107
    iput p1, p0, Lc8/YB;->retryTime:I

    .line 108
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lc8/YB;->uri:Landroid/net/Uri;

    .line 52
    :cond_0
    return-void
.end method
