.class public Lc8/bTe;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lc8/dTe;

.field private cacheResponse:Lc8/cTe;

.field private code:I

.field private handshake:Lc8/DSe;

.field private headers:Lc8/FSe;

.field private message:Ljava/lang/String;

.field private networkResponse:Lc8/cTe;

.field private priorResponse:Lc8/cTe;

.field private protocol:Lcom/squareup/okhttp/Protocol;

.field private request:Lc8/VSe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lc8/bTe;->code:I

    .line 234
    new-instance v0, Lc8/FSe;

    invoke-direct {v0}, Lc8/FSe;-><init>()V

    iput-object v0, p0, Lc8/bTe;->headers:Lc8/FSe;

    .line 235
    return-void
.end method

.method private constructor <init>(Lc8/cTe;)V
    .locals 1
    .param p1, "response"    # Lc8/cTe;

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lc8/bTe;->code:I

    .line 238
    invoke-static {p1}, Lc8/cTe;->access$1100(Lc8/cTe;)Lc8/VSe;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->request:Lc8/VSe;

    .line 239
    invoke-static {p1}, Lc8/cTe;->access$1200(Lc8/cTe;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 240
    invoke-static {p1}, Lc8/cTe;->access$1300(Lc8/cTe;)I

    move-result v0

    iput v0, p0, Lc8/bTe;->code:I

    .line 241
    invoke-static {p1}, Lc8/cTe;->access$1400(Lc8/cTe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->message:Ljava/lang/String;

    .line 242
    invoke-static {p1}, Lc8/cTe;->access$1500(Lc8/cTe;)Lc8/DSe;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->handshake:Lc8/DSe;

    .line 243
    invoke-static {p1}, Lc8/cTe;->access$1600(Lc8/cTe;)Lc8/GSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/GSe;->newBuilder()Lc8/FSe;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->headers:Lc8/FSe;

    .line 244
    invoke-static {p1}, Lc8/cTe;->access$1700(Lc8/cTe;)Lc8/dTe;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->body:Lc8/dTe;

    .line 245
    invoke-static {p1}, Lc8/cTe;->access$1800(Lc8/cTe;)Lc8/cTe;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->networkResponse:Lc8/cTe;

    .line 246
    invoke-static {p1}, Lc8/cTe;->access$1900(Lc8/cTe;)Lc8/cTe;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->cacheResponse:Lc8/cTe;

    .line 247
    invoke-static {p1}, Lc8/cTe;->access$2000(Lc8/cTe;)Lc8/cTe;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->priorResponse:Lc8/cTe;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lc8/cTe;Lc8/aTe;)V
    .locals 0
    .param p1, "x0"    # Lc8/cTe;
    .param p2, "x1"    # Lc8/aTe;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lc8/bTe;-><init>(Lc8/cTe;)V

    return-void
.end method

.method static synthetic access$000(Lc8/bTe;)Lc8/VSe;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->request:Lc8/VSe;

    return-object v0
.end method

.method static synthetic access$100(Lc8/bTe;)Lcom/squareup/okhttp/Protocol;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$200(Lc8/bTe;)I
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget v0, p0, Lc8/bTe;->code:I

    return v0
.end method

.method static synthetic access$300(Lc8/bTe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/bTe;)Lc8/DSe;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->handshake:Lc8/DSe;

    return-object v0
.end method

.method static synthetic access$500(Lc8/bTe;)Lc8/FSe;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->headers:Lc8/FSe;

    return-object v0
.end method

.method static synthetic access$600(Lc8/bTe;)Lc8/dTe;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->body:Lc8/dTe;

    return-object v0
.end method

.method static synthetic access$700(Lc8/bTe;)Lc8/cTe;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->networkResponse:Lc8/cTe;

    return-object v0
.end method

.method static synthetic access$800(Lc8/bTe;)Lc8/cTe;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->cacheResponse:Lc8/cTe;

    return-object v0
.end method

.method static synthetic access$900(Lc8/bTe;)Lc8/cTe;
    .locals 1
    .param p0, "x0"    # Lc8/bTe;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/bTe;->priorResponse:Lc8/cTe;

    return-object v0
.end method

.method private checkPriorResponse(Lc8/cTe;)V
    .locals 2
    .param p1, "response"    # Lc8/cTe;

    .prologue
    .line 340
    invoke-static {p1}, Lc8/cTe;->access$1700(Lc8/cTe;)Lc8/dTe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lc8/cTe;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lc8/cTe;

    .prologue
    .line 322
    invoke-static {p2}, Lc8/cTe;->access$1700(Lc8/cTe;)Lc8/dTe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    invoke-static {p2}, Lc8/cTe;->access$1800(Lc8/cTe;)Lc8/cTe;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    invoke-static {p2}, Lc8/cTe;->access$1900(Lc8/cTe;)Lc8/cTe;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    invoke-static {p2}, Lc8/cTe;->access$2000(Lc8/cTe;)Lc8/cTe;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/bTe;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lc8/bTe;->headers:Lc8/FSe;

    invoke-virtual {v0, p1, p2}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    .line 290
    return-object p0
.end method

.method public body(Lc8/dTe;)Lc8/bTe;
    .locals 0
    .param p1, "body"    # Lc8/dTe;

    .prologue
    .line 305
    iput-object p1, p0, Lc8/bTe;->body:Lc8/dTe;

    .line 306
    return-object p0
.end method

.method public build()Lc8/cTe;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lc8/bTe;->request:Lc8/VSe;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lc8/bTe;->protocol:Lcom/squareup/okhttp/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget v0, p0, Lc8/bTe;->code:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/bTe;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    new-instance v0, Lc8/cTe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/cTe;-><init>(Lc8/bTe;Lc8/aTe;)V

    return-object v0
.end method

.method public cacheResponse(Lc8/cTe;)Lc8/bTe;
    .locals 1
    .param p1, "cacheResponse"    # Lc8/cTe;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const-string/jumbo v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lc8/bTe;->checkSupportResponse(Ljava/lang/String;Lc8/cTe;)V

    .line 317
    :cond_0
    iput-object p1, p0, Lc8/bTe;->cacheResponse:Lc8/cTe;

    .line 318
    return-object p0
.end method

.method public code(I)Lc8/bTe;
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 261
    iput p1, p0, Lc8/bTe;->code:I

    .line 262
    return-object p0
.end method

.method public handshake(Lc8/DSe;)Lc8/bTe;
    .locals 0
    .param p1, "handshake"    # Lc8/DSe;

    .prologue
    .line 271
    iput-object p1, p0, Lc8/bTe;->handshake:Lc8/DSe;

    .line 272
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lc8/bTe;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lc8/bTe;->headers:Lc8/FSe;

    invoke-virtual {v0, p1, p2}, Lc8/FSe;->set(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    .line 281
    return-object p0
.end method

.method public headers(Lc8/GSe;)Lc8/bTe;
    .locals 1
    .param p1, "headers"    # Lc8/GSe;

    .prologue
    .line 300
    invoke-virtual {p1}, Lc8/GSe;->newBuilder()Lc8/FSe;

    move-result-object v0

    iput-object v0, p0, Lc8/bTe;->headers:Lc8/FSe;

    .line 301
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lc8/bTe;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lc8/bTe;->message:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public networkResponse(Lc8/cTe;)Lc8/bTe;
    .locals 1
    .param p1, "networkResponse"    # Lc8/cTe;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string/jumbo v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lc8/bTe;->checkSupportResponse(Ljava/lang/String;Lc8/cTe;)V

    .line 311
    :cond_0
    iput-object p1, p0, Lc8/bTe;->networkResponse:Lc8/cTe;

    .line 312
    return-object p0
.end method

.method public priorResponse(Lc8/cTe;)Lc8/bTe;
    .locals 0
    .param p1, "priorResponse"    # Lc8/cTe;

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lc8/bTe;->checkPriorResponse(Lc8/cTe;)V

    .line 335
    :cond_0
    iput-object p1, p0, Lc8/bTe;->priorResponse:Lc8/cTe;

    .line 336
    return-object p0
.end method

.method public protocol(Lcom/squareup/okhttp/Protocol;)Lc8/bTe;
    .locals 0
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;

    .prologue
    .line 256
    iput-object p1, p0, Lc8/bTe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 257
    return-object p0
.end method

.method public request(Lc8/VSe;)Lc8/bTe;
    .locals 0
    .param p1, "request"    # Lc8/VSe;

    .prologue
    .line 251
    iput-object p1, p0, Lc8/bTe;->request:Lc8/VSe;

    .line 252
    return-object p0
.end method
