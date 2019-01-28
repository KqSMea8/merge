.class public Lc8/CPp;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/FPp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private bizId:I

.field private body:Lc8/HPp;

.field private connectTimeoutMills:I

.field private env:I

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

.field private method:Ljava/lang/String;

.field private readTimeoutMills:I

.field private reqContext:Ljava/lang/Object;

.field private retryTimes:I

.field private seqNo:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x3a98

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v0, p0, Lc8/CPp;->connectTimeoutMills:I

    .line 115
    iput v0, p0, Lc8/CPp;->readTimeoutMills:I

    .line 126
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/CPp;->method:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/CPp;->headers:Ljava/util/Map;

    .line 128
    return-void
.end method

.method private constructor <init>(Lc8/FPp;)V
    .locals 1
    .param p1, "request"    # Lc8/FPp;

    .prologue
    const/16 v0, 0x3a98

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v0, p0, Lc8/CPp;->connectTimeoutMills:I

    .line 115
    iput v0, p0, Lc8/CPp;->readTimeoutMills:I

    .line 131
    iget-object v0, p1, Lc8/FPp;->url:Ljava/lang/String;

    iput-object v0, p0, Lc8/CPp;->url:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lc8/FPp;->method:Ljava/lang/String;

    iput-object v0, p0, Lc8/CPp;->method:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lc8/FPp;->body:Lc8/HPp;

    iput-object v0, p0, Lc8/CPp;->body:Lc8/HPp;

    .line 134
    iget-object v0, p1, Lc8/FPp;->headers:Ljava/util/Map;

    iput-object v0, p0, Lc8/CPp;->headers:Ljava/util/Map;

    .line 135
    iget-object v0, p1, Lc8/FPp;->seqNo:Ljava/lang/String;

    iput-object v0, p0, Lc8/CPp;->seqNo:Ljava/lang/String;

    .line 136
    iget v0, p1, Lc8/FPp;->connectTimeoutMills:I

    iput v0, p0, Lc8/CPp;->connectTimeoutMills:I

    .line 137
    iget v0, p1, Lc8/FPp;->readTimeoutMills:I

    iput v0, p0, Lc8/CPp;->readTimeoutMills:I

    .line 138
    iget v0, p1, Lc8/FPp;->retryTimes:I

    iput v0, p0, Lc8/CPp;->retryTimes:I

    .line 139
    iget v0, p1, Lc8/FPp;->bizId:I

    iput v0, p0, Lc8/CPp;->bizId:I

    .line 140
    iget-object v0, p1, Lc8/FPp;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lc8/CPp;->appKey:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lc8/FPp;->authCode:Ljava/lang/String;

    iput-object v0, p0, Lc8/CPp;->authCode:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lc8/FPp;->reqContext:Ljava/lang/Object;

    iput-object v0, p0, Lc8/CPp;->reqContext:Ljava/lang/Object;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lc8/FPp;Lc8/BPp;)V
    .locals 0
    .param p1, "x0"    # Lc8/FPp;
    .param p2, "x1"    # Lc8/BPp;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lc8/CPp;-><init>(Lc8/FPp;)V

    return-void
.end method

.method static synthetic access$000(Lc8/CPp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/CPp;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/CPp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/CPp;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/CPp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/CPp;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lc8/CPp;)I
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget v0, p0, Lc8/CPp;->env:I

    return v0
.end method

.method static synthetic access$1200(Lc8/CPp;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/CPp;->reqContext:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lc8/CPp;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/CPp;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lc8/CPp;)Lc8/HPp;
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/CPp;->body:Lc8/HPp;

    return-object v0
.end method

.method static synthetic access$400(Lc8/CPp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/CPp;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lc8/CPp;)I
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget v0, p0, Lc8/CPp;->connectTimeoutMills:I

    return v0
.end method

.method static synthetic access$600(Lc8/CPp;)I
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget v0, p0, Lc8/CPp;->readTimeoutMills:I

    return v0
.end method

.method static synthetic access$700(Lc8/CPp;)I
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget v0, p0, Lc8/CPp;->retryTimes:I

    return v0
.end method

.method static synthetic access$800(Lc8/CPp;)I
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget v0, p0, Lc8/CPp;->bizId:I

    return v0
.end method

.method static synthetic access$900(Lc8/CPp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/CPp;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/CPp;->appKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public appKey(Ljava/lang/String;)Lc8/CPp;
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lc8/CPp;->appKey:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public authCode(Ljava/lang/String;)Lc8/CPp;
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lc8/CPp;->authCode:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public bizId(I)Lc8/CPp;
    .locals 0
    .param p1, "bizId"    # I

    .prologue
    .line 204
    iput p1, p0, Lc8/CPp;->bizId:I

    .line 205
    return-object p0
.end method

.method public build()Lc8/FPp;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lc8/CPp;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v0, Lc8/FPp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/FPp;-><init>(Lc8/CPp;Lc8/BPp;)V

    return-object v0
.end method

.method public connectTimeout(I)Lc8/CPp;
    .locals 0
    .param p1, "connectTimeoutMills"    # I

    .prologue
    .line 185
    if-lez p1, :cond_0

    .line 186
    iput p1, p0, Lc8/CPp;->connectTimeoutMills:I

    .line 188
    :cond_0
    return-object p0
.end method

.method public env(I)Lc8/CPp;
    .locals 0
    .param p1, "env"    # I

    .prologue
    .line 219
    iput p1, p0, Lc8/CPp;->env:I

    .line 220
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lc8/CPp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/CPp;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 174
    iput-object p1, p0, Lc8/CPp;->headers:Ljava/util/Map;

    .line 176
    :cond_0
    return-object p0
.end method

.method public method(Ljava/lang/String;Lc8/HPp;)Lc8/CPp;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lc8/HPp;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    if-nez p2, :cond_2

    invoke-static {p1}, Lc8/cQp;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
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

    .line 243
    :cond_2
    iput-object p1, p0, Lc8/CPp;->method:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lc8/CPp;->body:Lc8/HPp;

    .line 245
    return-object p0
.end method

.method public post(Lc8/HPp;)Lc8/CPp;
    .locals 1
    .param p1, "body"    # Lc8/HPp;

    .prologue
    .line 229
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1}, Lc8/CPp;->method(Ljava/lang/String;Lc8/HPp;)Lc8/CPp;

    move-result-object v0

    return-object v0
.end method

.method public readTimeout(I)Lc8/CPp;
    .locals 0
    .param p1, "readTimeoutMills"    # I

    .prologue
    .line 192
    if-lez p1, :cond_0

    .line 193
    iput p1, p0, Lc8/CPp;->readTimeoutMills:I

    .line 195
    :cond_0
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lc8/CPp;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/CPp;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-object p0
.end method

.method public reqContext(Ljava/lang/Object;)Lc8/CPp;
    .locals 0
    .param p1, "reqContext"    # Ljava/lang/Object;

    .prologue
    .line 224
    iput-object p1, p0, Lc8/CPp;->reqContext:Ljava/lang/Object;

    .line 225
    return-object p0
.end method

.method public retryTimes(I)Lc8/CPp;
    .locals 0
    .param p1, "retryTimes"    # I

    .prologue
    .line 199
    iput p1, p0, Lc8/CPp;->retryTimes:I

    .line 200
    return-object p0
.end method

.method public seqNo(Ljava/lang/String;)Lc8/CPp;
    .locals 0
    .param p1, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lc8/CPp;->seqNo:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/CPp;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lc8/CPp;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lc8/CPp;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 146
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput-object p1, p0, Lc8/CPp;->url:Ljava/lang/String;

    .line 148
    return-object p0
.end method
