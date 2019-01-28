.class public final Lc8/VSe;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/USe;
    }
.end annotation


# instance fields
.field private final body:Lc8/ZSe;

.field private volatile cacheControl:Lc8/iSe;

.field private final headers:Lc8/GSe;

.field private volatile javaNetUri:Ljava/net/URI;

.field private volatile javaNetUrl:Ljava/net/URL;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lc8/JSe;


# direct methods
.method private constructor <init>(Lc8/USe;)V
    .locals 1
    .param p1, "builder"    # Lc8/USe;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lc8/USe;->access$000(Lc8/USe;)Lc8/JSe;

    move-result-object v0

    iput-object v0, p0, Lc8/VSe;->url:Lc8/JSe;

    .line 41
    invoke-static {p1}, Lc8/USe;->access$100(Lc8/USe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VSe;->method:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lc8/USe;->access$200(Lc8/USe;)Lc8/FSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v0

    iput-object v0, p0, Lc8/VSe;->headers:Lc8/GSe;

    .line 43
    invoke-static {p1}, Lc8/USe;->access$300(Lc8/USe;)Lc8/ZSe;

    move-result-object v0

    iput-object v0, p0, Lc8/VSe;->body:Lc8/ZSe;

    .line 44
    invoke-static {p1}, Lc8/USe;->access$400(Lc8/USe;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc8/USe;->access$400(Lc8/USe;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/VSe;->tag:Ljava/lang/Object;

    .line 45
    return-void

    :cond_0
    move-object v0, p0

    .line 44
    goto :goto_0
.end method

.method synthetic constructor <init>(Lc8/USe;Lc8/TSe;)V
    .locals 0
    .param p1, "x0"    # Lc8/USe;
    .param p2, "x1"    # Lc8/TSe;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lc8/VSe;-><init>(Lc8/USe;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/VSe;)Lc8/GSe;
    .locals 1
    .param p0, "x0"    # Lc8/VSe;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/VSe;->headers:Lc8/GSe;

    return-object v0
.end method

.method static synthetic access$600(Lc8/VSe;)Lc8/JSe;
    .locals 1
    .param p0, "x0"    # Lc8/VSe;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/VSe;->url:Lc8/JSe;

    return-object v0
.end method

.method static synthetic access$700(Lc8/VSe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/VSe;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/VSe;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lc8/VSe;)Lc8/ZSe;
    .locals 1
    .param p0, "x0"    # Lc8/VSe;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/VSe;->body:Lc8/ZSe;

    return-object v0
.end method

.method static synthetic access$900(Lc8/VSe;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/VSe;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/VSe;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public body()Lc8/ZSe;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lc8/VSe;->body:Lc8/ZSe;

    return-object v0
.end method

.method public cacheControl()Lc8/iSe;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lc8/VSe;->cacheControl:Lc8/iSe;

    .line 103
    .local v0, "result":Lc8/iSe;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lc8/iSe;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lc8/iSe;
    :cond_0
    iget-object v1, p0, Lc8/VSe;->headers:Lc8/GSe;

    invoke-static {v1}, Lc8/iSe;->parse(Lc8/GSe;)Lc8/iSe;

    move-result-object v0

    .end local v0    # "result":Lc8/iSe;
    iput-object v0, p0, Lc8/VSe;->cacheControl:Lc8/iSe;

    goto :goto_0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lc8/VSe;->headers:Lc8/GSe;

    invoke-virtual {v0, p1}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lc8/GSe;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lc8/VSe;->headers:Lc8/GSe;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lc8/VSe;->headers:Lc8/GSe;

    invoke-virtual {v0, p1}, Lc8/GSe;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public httpUrl()Lc8/JSe;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc8/VSe;->url:Lc8/JSe;

    return-object v0
.end method

.method public isHttps()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lc8/VSe;->url:Lc8/JSe;

    invoke-virtual {v0}, Lc8/JSe;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/VSe;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lc8/USe;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lc8/USe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/USe;-><init>(Lc8/VSe;Lc8/TSe;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lc8/VSe;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/VSe;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/VSe;->url:Lc8/JSe;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/VSe;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lc8/VSe;->tag:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uri()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lc8/VSe;->javaNetUri:Ljava/net/URI;

    .line 59
    .local v1, "result":Ljava/net/URI;
    if-eqz v1, :cond_0

    .end local v1    # "result":Ljava/net/URI;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/net/URI;
    :cond_0
    iget-object v2, p0, Lc8/VSe;->url:Lc8/JSe;

    invoke-virtual {v2}, Lc8/JSe;->uri()Ljava/net/URI;

    move-result-object v1

    .end local v1    # "result":Ljava/net/URI;
    iput-object v1, p0, Lc8/VSe;->javaNetUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public url()Ljava/net/URL;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lc8/VSe;->javaNetUrl:Ljava/net/URL;

    .line 53
    .local v0, "result":Ljava/net/URL;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/net/URL;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/net/URL;
    :cond_0
    iget-object v1, p0, Lc8/VSe;->url:Lc8/JSe;

    invoke-virtual {v1}, Lc8/JSe;->url()Ljava/net/URL;

    move-result-object v0

    .end local v0    # "result":Ljava/net/URL;
    iput-object v0, p0, Lc8/VSe;->javaNetUrl:Ljava/net/URL;

    goto :goto_0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/VSe;->url:Lc8/JSe;

    invoke-virtual {v0}, Lc8/JSe;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
