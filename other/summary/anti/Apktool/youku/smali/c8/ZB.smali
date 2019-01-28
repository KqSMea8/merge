.class public Lc8/ZB;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private data:[B

.field private errorMsg:Ljava/lang/String;

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

.field private httpCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lc8/ZB;->httpCode:I

    .line 28
    iput-object v1, p0, Lc8/ZB;->errorMsg:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/ZB;->headers:Ljava/util/Map;

    .line 38
    iput-object v1, p0, Lc8/ZB;->data:[B

    .line 41
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/ZB;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/ZB;->data:[B

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/ZB;->errorMsg:Ljava/lang/String;

    return-object v0
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
    .line 56
    iget-object v0, p0, Lc8/ZB;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lc8/ZB;->httpCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lc8/ZB;->httpCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 74
    iput-object p1, p0, Lc8/ZB;->data:[B

    .line 75
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lc8/ZB;->errorMsg:Ljava/lang/String;

    .line 83
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
    .line 60
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lc8/ZB;->headers:Ljava/util/Map;

    .line 63
    :cond_0
    return-void
.end method

.method public setHttpCode(I)V
    .locals 0
    .param p1, "httpCode"    # I

    .prologue
    .line 52
    iput p1, p0, Lc8/ZB;->httpCode:I

    .line 53
    return-void
.end method
