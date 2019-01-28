.class public final Lc8/FPp;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BPp;,
        Lc8/CPp;,
        Lc8/EPp;
    }
.end annotation


# instance fields
.field public final appKey:Ljava/lang/String;

.field public final authCode:Ljava/lang/String;

.field public final bizId:I

.field public final body:Lc8/HPp;

.field public final connectTimeoutMills:I

.field public final env:I

.field public final headers:Ljava/util/Map;
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

.field public final method:Ljava/lang/String;

.field public final readTimeoutMills:I

.field public final reqContext:Ljava/lang/Object;

.field public final retryTimes:I

.field public final seqNo:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lc8/CPp;)V
    .locals 1
    .param p1, "builder"    # Lc8/CPp;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lc8/CPp;->access$000(Lc8/CPp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/FPp;->url:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lc8/CPp;->access$100(Lc8/CPp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/FPp;->method:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lc8/CPp;->access$200(Lc8/CPp;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/FPp;->headers:Ljava/util/Map;

    .line 53
    invoke-static {p1}, Lc8/CPp;->access$300(Lc8/CPp;)Lc8/HPp;

    move-result-object v0

    iput-object v0, p0, Lc8/FPp;->body:Lc8/HPp;

    .line 54
    invoke-static {p1}, Lc8/CPp;->access$400(Lc8/CPp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/FPp;->seqNo:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lc8/CPp;->access$500(Lc8/CPp;)I

    move-result v0

    iput v0, p0, Lc8/FPp;->connectTimeoutMills:I

    .line 56
    invoke-static {p1}, Lc8/CPp;->access$600(Lc8/CPp;)I

    move-result v0

    iput v0, p0, Lc8/FPp;->readTimeoutMills:I

    .line 57
    invoke-static {p1}, Lc8/CPp;->access$700(Lc8/CPp;)I

    move-result v0

    iput v0, p0, Lc8/FPp;->retryTimes:I

    .line 58
    invoke-static {p1}, Lc8/CPp;->access$800(Lc8/CPp;)I

    move-result v0

    iput v0, p0, Lc8/FPp;->bizId:I

    .line 59
    invoke-static {p1}, Lc8/CPp;->access$900(Lc8/CPp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/FPp;->appKey:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lc8/CPp;->access$1000(Lc8/CPp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/FPp;->authCode:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lc8/CPp;->access$1100(Lc8/CPp;)I

    move-result v0

    iput v0, p0, Lc8/FPp;->env:I

    .line 62
    invoke-static {p1}, Lc8/CPp;->access$1200(Lc8/CPp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/FPp;->reqContext:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lc8/CPp;Lc8/BPp;)V
    .locals 0
    .param p1, "x0"    # Lc8/CPp;
    .param p2, "x1"    # Lc8/BPp;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lc8/FPp;-><init>(Lc8/CPp;)V

    return-void
.end method


# virtual methods
.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/FPp;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lc8/FPp;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lc8/FPp;->url:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newBuilder()Lc8/CPp;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lc8/CPp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/CPp;-><init>(Lc8/FPp;Lc8/BPp;)V

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lc8/FPp;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Request{ url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/FPp;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/FPp;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v1, ", appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/FPp;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v1, ", authCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/FPp;->authCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/FPp;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/FPp;->body:Lc8/HPp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string/jumbo v1, ", seqNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/FPp;->seqNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v1, ", connectTimeoutMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/FPp;->connectTimeoutMills:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, ", readTimeoutMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/FPp;->readTimeoutMills:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v1, ", retryTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/FPp;->retryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v1, ", bizId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/FPp;->bizId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, ", env="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/FPp;->env:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, ", reqContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/FPp;->reqContext:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
