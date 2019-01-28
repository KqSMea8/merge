.class public Lc8/USe;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/VSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lc8/ZSe;

.field private headers:Lc8/FSe;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Lc8/JSe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/USe;->method:Ljava/lang/String;

    .line 129
    new-instance v0, Lc8/FSe;

    invoke-direct {v0}, Lc8/FSe;-><init>()V

    iput-object v0, p0, Lc8/USe;->headers:Lc8/FSe;

    .line 130
    return-void
.end method

.method private constructor <init>(Lc8/VSe;)V
    .locals 1
    .param p1, "request"    # Lc8/VSe;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Lc8/VSe;->access$600(Lc8/VSe;)Lc8/JSe;

    move-result-object v0

    iput-object v0, p0, Lc8/USe;->url:Lc8/JSe;

    .line 134
    invoke-static {p1}, Lc8/VSe;->access$700(Lc8/VSe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/USe;->method:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lc8/VSe;->access$800(Lc8/VSe;)Lc8/ZSe;

    move-result-object v0

    iput-object v0, p0, Lc8/USe;->body:Lc8/ZSe;

    .line 136
    invoke-static {p1}, Lc8/VSe;->access$900(Lc8/VSe;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/USe;->tag:Ljava/lang/Object;

    .line 137
    invoke-static {p1}, Lc8/VSe;->access$1000(Lc8/VSe;)Lc8/GSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/GSe;->newBuilder()Lc8/FSe;

    move-result-object v0

    iput-object v0, p0, Lc8/USe;->headers:Lc8/FSe;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lc8/VSe;Lc8/TSe;)V
    .locals 0
    .param p1, "x0"    # Lc8/VSe;
    .param p2, "x1"    # Lc8/TSe;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lc8/USe;-><init>(Lc8/VSe;)V

    return-void
.end method

.method static synthetic access$000(Lc8/USe;)Lc8/JSe;
    .locals 1
    .param p0, "x0"    # Lc8/USe;

    .prologue
    .line 120
    iget-object v0, p0, Lc8/USe;->url:Lc8/JSe;

    return-object v0
.end method

.method static synthetic access$100(Lc8/USe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/USe;

    .prologue
    .line 120
    iget-object v0, p0, Lc8/USe;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/USe;)Lc8/FSe;
    .locals 1
    .param p0, "x0"    # Lc8/USe;

    .prologue
    .line 120
    iget-object v0, p0, Lc8/USe;->headers:Lc8/FSe;

    return-object v0
.end method

.method static synthetic access$300(Lc8/USe;)Lc8/ZSe;
    .locals 1
    .param p0, "x0"    # Lc8/USe;

    .prologue
    .line 120
    iget-object v0, p0, Lc8/USe;->body:Lc8/ZSe;

    return-object v0
.end method

.method static synthetic access$400(Lc8/USe;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/USe;

    .prologue
    .line 120
    iget-object v0, p0, Lc8/USe;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lc8/USe;->headers:Lc8/FSe;

    invoke-virtual {v0, p1, p2}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    .line 198
    return-object p0
.end method

.method public build()Lc8/VSe;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lc8/USe;->url:Lc8/JSe;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    new-instance v0, Lc8/VSe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/VSe;-><init>(Lc8/USe;Lc8/TSe;)V

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lc8/USe;->headers:Lc8/FSe;

    invoke-virtual {v0, p1, p2}, Lc8/FSe;->set(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    .line 186
    return-object p0
.end method

.method public headers(Lc8/GSe;)Lc8/USe;
    .locals 1
    .param p1, "headers"    # Lc8/GSe;

    .prologue
    .line 208
    invoke-virtual {p1}, Lc8/GSe;->newBuilder()Lc8/FSe;

    move-result-object v0

    iput-object v0, p0, Lc8/USe;->headers:Lc8/FSe;

    .line 209
    return-object p0
.end method

.method public method(Ljava/lang/String;Lc8/ZSe;)Lc8/USe;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lc8/ZSe;

    .prologue
    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lc8/RUe;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
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

    .line 258
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lc8/RUe;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
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

    .line 261
    :cond_3
    iput-object p1, p0, Lc8/USe;->method:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lc8/USe;->body:Lc8/ZSe;

    .line 263
    return-object p0
.end method

.method public post(Lc8/ZSe;)Lc8/USe;
    .locals 1
    .param p1, "body"    # Lc8/ZSe;

    .prologue
    .line 232
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1}, Lc8/USe;->method(Ljava/lang/String;Lc8/ZSe;)Lc8/USe;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lc8/USe;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lc8/USe;->headers:Lc8/FSe;

    invoke-virtual {v0, p1}, Lc8/FSe;->removeAll(Ljava/lang/String;)Lc8/FSe;

    .line 203
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lc8/USe;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 272
    iput-object p1, p0, Lc8/USe;->tag:Ljava/lang/Object;

    .line 273
    return-object p0
.end method

.method public url(Lc8/JSe;)Lc8/USe;
    .locals 2
    .param p1, "url"    # Lc8/JSe;

    .prologue
    .line 141
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lc8/USe;->url:Lc8/JSe;

    .line 143
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lc8/USe;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    const-string/jumbo v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
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

    .line 162
    :cond_1
    :goto_0
    invoke-static {p1}, Lc8/JSe;->parse(Ljava/lang/String;)Lc8/JSe;

    move-result-object v6

    .line 163
    .local v6, "parsed":Lc8/JSe;
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

    .line 158
    .end local v6    # "parsed":Lc8/JSe;
    :cond_2
    const-string/jumbo v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
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

    .line 164
    .restart local v6    # "parsed":Lc8/JSe;
    :cond_3
    invoke-virtual {p0, v6}, Lc8/USe;->url(Lc8/JSe;)Lc8/USe;

    move-result-object v0

    return-object v0
.end method
