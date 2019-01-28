.class public Lc8/DId;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/CId;
    }
.end annotation


# instance fields
.field private final body:Lc8/GId;

.field private final headers:Lc8/qId;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lc8/wId;


# direct methods
.method private constructor <init>(Lc8/CId;)V
    .locals 1
    .param p1, "builder"    # Lc8/CId;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lc8/CId;->access$000(Lc8/CId;)Lc8/wId;

    move-result-object v0

    iput-object v0, p0, Lc8/DId;->url:Lc8/wId;

    .line 23
    invoke-static {p1}, Lc8/CId;->access$100(Lc8/CId;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/DId;->method:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lc8/CId;->access$200(Lc8/CId;)Lc8/pId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pId;->build()Lc8/qId;

    move-result-object v0

    iput-object v0, p0, Lc8/DId;->headers:Lc8/qId;

    .line 25
    invoke-static {p1}, Lc8/CId;->access$300(Lc8/CId;)Lc8/GId;

    move-result-object v0

    iput-object v0, p0, Lc8/DId;->body:Lc8/GId;

    .line 26
    invoke-static {p1}, Lc8/CId;->access$400(Lc8/CId;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc8/CId;->access$400(Lc8/CId;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/DId;->tag:Ljava/lang/Object;

    .line 27
    return-void

    :cond_0
    move-object v0, p0

    .line 26
    goto :goto_0
.end method

.method synthetic constructor <init>(Lc8/CId;Lc8/BId;)V
    .locals 0
    .param p1, "x0"    # Lc8/CId;
    .param p2, "x1"    # Lc8/BId;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lc8/DId;-><init>(Lc8/CId;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/DId;)Lc8/qId;
    .locals 1
    .param p0, "x0"    # Lc8/DId;

    .prologue
    .line 12
    iget-object v0, p0, Lc8/DId;->headers:Lc8/qId;

    return-object v0
.end method

.method static synthetic access$600(Lc8/DId;)Lc8/wId;
    .locals 1
    .param p0, "x0"    # Lc8/DId;

    .prologue
    .line 12
    iget-object v0, p0, Lc8/DId;->url:Lc8/wId;

    return-object v0
.end method

.method static synthetic access$700(Lc8/DId;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/DId;

    .prologue
    .line 12
    iget-object v0, p0, Lc8/DId;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lc8/DId;)Lc8/GId;
    .locals 1
    .param p0, "x0"    # Lc8/DId;

    .prologue
    .line 12
    iget-object v0, p0, Lc8/DId;->body:Lc8/GId;

    return-object v0
.end method

.method static synthetic access$900(Lc8/DId;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/DId;

    .prologue
    .line 12
    iget-object v0, p0, Lc8/DId;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public body()Lc8/GId;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/DId;->body:Lc8/GId;

    return-object v0
.end method

.method public getmethod()I
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "method":I
    const-string/jumbo v1, "GET"

    invoke-virtual {p0}, Lc8/DId;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const/4 v0, 0x0

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    const-string/jumbo v1, "POST"

    invoke-virtual {p0}, Lc8/DId;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v1, "PUT"

    invoke-virtual {p0}, Lc8/DId;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    const/4 v0, 0x2

    goto :goto_0

    .line 45
    :cond_3
    const-string/jumbo v1, "DELETE"

    invoke-virtual {p0}, Lc8/DId;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    const/4 v0, 0x3

    goto :goto_0

    .line 47
    :cond_4
    const-string/jumbo v1, "HEAD"

    invoke-virtual {p0}, Lc8/DId;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    const/4 v0, 0x4

    goto :goto_0

    .line 49
    :cond_5
    const-string/jumbo v1, "PATCH"

    invoke-virtual {p0}, Lc8/DId;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lc8/DId;->headers:Lc8/qId;

    invoke-virtual {v0, p1}, Lc8/qId;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lc8/qId;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/DId;->headers:Lc8/qId;

    return-object v0
.end method

.method public isHttps()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/DId;->url:Lc8/wId;

    invoke-virtual {v0}, Lc8/wId;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lc8/DId;->method:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DId;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DId;->url:Lc8/wId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/DId;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lc8/DId;->tag:Ljava/lang/Object;

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

.method public url()Lc8/wId;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lc8/DId;->url:Lc8/wId;

    return-object v0
.end method
