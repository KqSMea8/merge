.class public final Lc8/cTe;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bTe;
    }
.end annotation


# instance fields
.field private final body:Lc8/dTe;

.field private volatile cacheControl:Lc8/iSe;

.field private cacheResponse:Lc8/cTe;

.field private final code:I

.field private final handshake:Lc8/DSe;

.field private final headers:Lc8/GSe;

.field private final message:Ljava/lang/String;

.field private networkResponse:Lc8/cTe;

.field private final priorResponse:Lc8/cTe;

.field private final protocol:Lcom/squareup/okhttp/Protocol;

.field private final request:Lc8/VSe;


# direct methods
.method private constructor <init>(Lc8/bTe;)V
    .locals 1
    .param p1, "builder"    # Lc8/bTe;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lc8/bTe;->access$000(Lc8/bTe;)Lc8/VSe;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->request:Lc8/VSe;

    .line 52
    invoke-static {p1}, Lc8/bTe;->access$100(Lc8/bTe;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 53
    invoke-static {p1}, Lc8/bTe;->access$200(Lc8/bTe;)I

    move-result v0

    iput v0, p0, Lc8/cTe;->code:I

    .line 54
    invoke-static {p1}, Lc8/bTe;->access$300(Lc8/bTe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->message:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lc8/bTe;->access$400(Lc8/bTe;)Lc8/DSe;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->handshake:Lc8/DSe;

    .line 56
    invoke-static {p1}, Lc8/bTe;->access$500(Lc8/bTe;)Lc8/FSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->headers:Lc8/GSe;

    .line 57
    invoke-static {p1}, Lc8/bTe;->access$600(Lc8/bTe;)Lc8/dTe;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->body:Lc8/dTe;

    .line 58
    invoke-static {p1}, Lc8/bTe;->access$700(Lc8/bTe;)Lc8/cTe;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->networkResponse:Lc8/cTe;

    .line 59
    invoke-static {p1}, Lc8/bTe;->access$800(Lc8/bTe;)Lc8/cTe;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->cacheResponse:Lc8/cTe;

    .line 60
    invoke-static {p1}, Lc8/bTe;->access$900(Lc8/bTe;)Lc8/cTe;

    move-result-object v0

    iput-object v0, p0, Lc8/cTe;->priorResponse:Lc8/cTe;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lc8/bTe;Lc8/aTe;)V
    .locals 0
    .param p1, "x0"    # Lc8/bTe;
    .param p2, "x1"    # Lc8/aTe;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lc8/cTe;-><init>(Lc8/bTe;)V

    return-void
.end method

.method static synthetic access$1100(Lc8/cTe;)Lc8/VSe;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->request:Lc8/VSe;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/cTe;)Lcom/squareup/okhttp/Protocol;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$1300(Lc8/cTe;)I
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget v0, p0, Lc8/cTe;->code:I

    return v0
.end method

.method static synthetic access$1400(Lc8/cTe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lc8/cTe;)Lc8/DSe;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->handshake:Lc8/DSe;

    return-object v0
.end method

.method static synthetic access$1600(Lc8/cTe;)Lc8/GSe;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->headers:Lc8/GSe;

    return-object v0
.end method

.method static synthetic access$1700(Lc8/cTe;)Lc8/dTe;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->body:Lc8/dTe;

    return-object v0
.end method

.method static synthetic access$1800(Lc8/cTe;)Lc8/cTe;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->networkResponse:Lc8/cTe;

    return-object v0
.end method

.method static synthetic access$1900(Lc8/cTe;)Lc8/cTe;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->cacheResponse:Lc8/cTe;

    return-object v0
.end method

.method static synthetic access$2000(Lc8/cTe;)Lc8/cTe;
    .locals 1
    .param p0, "x0"    # Lc8/cTe;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/cTe;->priorResponse:Lc8/cTe;

    return-object v0
.end method


# virtual methods
.method public body()Lc8/dTe;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lc8/cTe;->body:Lc8/dTe;

    return-object v0
.end method

.method public cacheControl()Lc8/iSe;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lc8/cTe;->cacheControl:Lc8/iSe;

    .line 206
    .local v0, "result":Lc8/iSe;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lc8/iSe;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lc8/iSe;
    :cond_0
    iget-object v1, p0, Lc8/cTe;->headers:Lc8/GSe;

    invoke-static {v1}, Lc8/iSe;->parse(Lc8/GSe;)Lc8/iSe;

    move-result-object v0

    .end local v0    # "result":Lc8/iSe;
    iput-object v0, p0, Lc8/cTe;->cacheControl:Lc8/iSe;

    goto :goto_0
.end method

.method public cacheResponse()Lc8/cTe;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lc8/cTe;->cacheResponse:Lc8/cTe;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/rSe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v1, p0, Lc8/cTe;->code:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 191
    const-string/jumbo v0, "WWW-Authenticate"

    .line 197
    .local v0, "responseField":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v1

    invoke-static {v1, v0}, Lc8/UUe;->parseChallenges(Lc8/GSe;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .end local v0    # "responseField":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 192
    :cond_0
    iget v1, p0, Lc8/cTe;->code:I

    const/16 v2, 0x197

    if-ne v1, v2, :cond_1

    .line 193
    const-string/jumbo v0, "Proxy-Authenticate"

    .restart local v0    # "responseField":Ljava/lang/String;
    goto :goto_0

    .line 195
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public code()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lc8/cTe;->code:I

    return v0
.end method

.method public handshake()Lc8/DSe;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lc8/cTe;->handshake:Lc8/DSe;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/cTe;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lc8/cTe;->headers:Lc8/GSe;

    invoke-virtual {v1, p1}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public headers()Lc8/GSe;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lc8/cTe;->headers:Lc8/GSe;

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
    .line 113
    iget-object v0, p0, Lc8/cTe;->headers:Lc8/GSe;

    invoke-virtual {v0, p1}, Lc8/GSe;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lc8/cTe;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lc8/cTe;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lc8/cTe;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lc8/cTe;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lc8/cTe;->networkResponse:Lc8/cTe;

    return-object v0
.end method

.method public newBuilder()Lc8/bTe;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lc8/bTe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/bTe;-><init>(Lc8/cTe;Lc8/aTe;)V

    return-object v0
.end method

.method public protocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/cTe;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public request()Lc8/VSe;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/cTe;->request:Lc8/VSe;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/cTe;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/cTe;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/cTe;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/cTe;->request:Lc8/VSe;

    .line 217
    invoke-virtual {v1}, Lc8/VSe;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
