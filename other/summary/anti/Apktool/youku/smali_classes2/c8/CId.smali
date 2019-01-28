.class public Lc8/CId;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lc8/GId;

.field private headers:Lc8/pId;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Lc8/wId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/CId;->method:Ljava/lang/String;

    .line 103
    new-instance v0, Lc8/pId;

    invoke-direct {v0}, Lc8/pId;-><init>()V

    iput-object v0, p0, Lc8/CId;->headers:Lc8/pId;

    .line 104
    return-void
.end method

.method private constructor <init>(Lc8/DId;)V
    .locals 1
    .param p1, "request"    # Lc8/DId;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lc8/DId;->access$600(Lc8/DId;)Lc8/wId;

    move-result-object v0

    iput-object v0, p0, Lc8/CId;->url:Lc8/wId;

    .line 108
    invoke-static {p1}, Lc8/DId;->access$700(Lc8/DId;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/CId;->method:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lc8/DId;->access$800(Lc8/DId;)Lc8/GId;

    move-result-object v0

    iput-object v0, p0, Lc8/CId;->body:Lc8/GId;

    .line 110
    invoke-static {p1}, Lc8/DId;->access$900(Lc8/DId;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/CId;->tag:Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Lc8/DId;->access$1000(Lc8/DId;)Lc8/qId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qId;->newBuilder()Lc8/pId;

    move-result-object v0

    iput-object v0, p0, Lc8/CId;->headers:Lc8/pId;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lc8/DId;Lc8/BId;)V
    .locals 0
    .param p1, "x0"    # Lc8/DId;
    .param p2, "x1"    # Lc8/BId;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lc8/CId;-><init>(Lc8/DId;)V

    return-void
.end method

.method static synthetic access$000(Lc8/CId;)Lc8/wId;
    .locals 1
    .param p0, "x0"    # Lc8/CId;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/CId;->url:Lc8/wId;

    return-object v0
.end method

.method static synthetic access$100(Lc8/CId;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/CId;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/CId;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/CId;)Lc8/pId;
    .locals 1
    .param p0, "x0"    # Lc8/CId;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/CId;->headers:Lc8/pId;

    return-object v0
.end method

.method static synthetic access$300(Lc8/CId;)Lc8/GId;
    .locals 1
    .param p0, "x0"    # Lc8/CId;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/CId;->body:Lc8/GId;

    return-object v0
.end method

.method static synthetic access$400(Lc8/CId;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/CId;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/CId;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/CId;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lc8/CId;->headers:Lc8/pId;

    invoke-virtual {v0, p1, p2}, Lc8/pId;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/pId;

    .line 172
    return-object p0
.end method

.method public build()Lc8/DId;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lc8/CId;->url:Lc8/wId;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    new-instance v0, Lc8/DId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/DId;-><init>(Lc8/CId;Lc8/BId;)V

    return-object v0
.end method

.method public delete(Lc8/GId;)Lc8/CId;
    .locals 1
    .param p1, "body"    # Lc8/GId;

    .prologue
    .line 200
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lc8/CId;->method(Ljava/lang/String;Lc8/GId;)Lc8/CId;

    move-result-object v0

    return-object v0
.end method

.method public get()Lc8/CId;
    .locals 2

    .prologue
    .line 188
    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/CId;->method(Ljava/lang/String;Lc8/GId;)Lc8/CId;

    move-result-object v0

    return-object v0
.end method

.method public head()Lc8/CId;
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/CId;->method(Ljava/lang/String;Lc8/GId;)Lc8/CId;

    move-result-object v0

    return-object v0
.end method

.method public headers(Lc8/qId;)Lc8/CId;
    .locals 1
    .param p1, "headers"    # Lc8/qId;

    .prologue
    .line 182
    invoke-virtual {p1}, Lc8/qId;->newBuilder()Lc8/pId;

    move-result-object v0

    iput-object v0, p0, Lc8/CId;->headers:Lc8/pId;

    .line 183
    return-object p0
.end method

.method public method(Ljava/lang/String;Lc8/GId;)Lc8/CId;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lc8/GId;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lc8/rId;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lc8/rId;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_3
    iput-object p1, p0, Lc8/CId;->method:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lc8/CId;->body:Lc8/GId;

    .line 227
    return-object p0
.end method

.method public patch(Lc8/GId;)Lc8/CId;
    .locals 1
    .param p1, "body"    # Lc8/GId;

    .prologue
    .line 212
    const-string/jumbo v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lc8/CId;->method(Ljava/lang/String;Lc8/GId;)Lc8/CId;

    move-result-object v0

    return-object v0
.end method

.method public post(Lc8/GId;)Lc8/CId;
    .locals 1
    .param p1, "body"    # Lc8/GId;

    .prologue
    .line 196
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1}, Lc8/CId;->method(Ljava/lang/String;Lc8/GId;)Lc8/CId;

    move-result-object v0

    return-object v0
.end method

.method public put(Lc8/GId;)Lc8/CId;
    .locals 1
    .param p1, "body"    # Lc8/GId;

    .prologue
    .line 208
    const-string/jumbo v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lc8/CId;->method(Ljava/lang/String;Lc8/GId;)Lc8/CId;

    move-result-object v0

    return-object v0
.end method

.method public url(Lc8/wId;)Lc8/CId;
    .locals 2
    .param p1, "url"    # Lc8/wId;

    .prologue
    .line 115
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lc8/CId;->url:Lc8/wId;

    .line 117
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lc8/CId;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    const-string/jumbo v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    :cond_1
    :goto_0
    invoke-static {p1}, Lc8/wId;->parse(Ljava/lang/String;)Lc8/wId;

    move-result-object v6

    .line 137
    .local v6, "parsed":Lc8/wId;
    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    .end local v6    # "parsed":Lc8/wId;
    :cond_2
    const-string/jumbo v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 138
    .restart local v6    # "parsed":Lc8/wId;
    :cond_3
    invoke-virtual {p0, v6}, Lc8/CId;->url(Lc8/wId;)Lc8/CId;

    move-result-object v0

    return-object v0
.end method
