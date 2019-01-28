.class public Lc8/IId;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/JId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lc8/KId;

.field private cacheResponse:Lc8/JId;

.field private code:I

.field private headers:Lc8/pId;

.field private message:Ljava/lang/String;

.field private networkResponse:Lc8/JId;

.field private priorResponse:Lc8/JId;

.field private request:Lc8/DId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lc8/IId;->code:I

    .line 176
    new-instance v0, Lc8/pId;

    invoke-direct {v0}, Lc8/pId;-><init>()V

    iput-object v0, p0, Lc8/IId;->headers:Lc8/pId;

    .line 177
    return-void
.end method

.method private constructor <init>(Lc8/JId;)V
    .locals 1
    .param p1, "response"    # Lc8/JId;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lc8/IId;->code:I

    .line 180
    invoke-static {p1}, Lc8/JId;->access$900(Lc8/JId;)Lc8/DId;

    move-result-object v0

    iput-object v0, p0, Lc8/IId;->request:Lc8/DId;

    .line 181
    invoke-static {p1}, Lc8/JId;->access$1000(Lc8/JId;)I

    move-result v0

    iput v0, p0, Lc8/IId;->code:I

    .line 182
    invoke-static {p1}, Lc8/JId;->access$1100(Lc8/JId;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/IId;->message:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Lc8/JId;->access$1200(Lc8/JId;)Lc8/qId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qId;->newBuilder()Lc8/pId;

    move-result-object v0

    iput-object v0, p0, Lc8/IId;->headers:Lc8/pId;

    .line 184
    invoke-static {p1}, Lc8/JId;->access$1300(Lc8/JId;)Lc8/KId;

    move-result-object v0

    iput-object v0, p0, Lc8/IId;->body:Lc8/KId;

    .line 185
    invoke-static {p1}, Lc8/JId;->access$1400(Lc8/JId;)Lc8/JId;

    move-result-object v0

    iput-object v0, p0, Lc8/IId;->networkResponse:Lc8/JId;

    .line 186
    invoke-static {p1}, Lc8/JId;->access$1500(Lc8/JId;)Lc8/JId;

    move-result-object v0

    iput-object v0, p0, Lc8/IId;->cacheResponse:Lc8/JId;

    .line 187
    invoke-static {p1}, Lc8/JId;->access$1600(Lc8/JId;)Lc8/JId;

    move-result-object v0

    iput-object v0, p0, Lc8/IId;->priorResponse:Lc8/JId;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lc8/JId;Lc8/HId;)V
    .locals 0
    .param p1, "x0"    # Lc8/JId;
    .param p2, "x1"    # Lc8/HId;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lc8/IId;-><init>(Lc8/JId;)V

    return-void
.end method

.method static synthetic access$000(Lc8/IId;)Lc8/DId;
    .locals 1
    .param p0, "x0"    # Lc8/IId;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/IId;->request:Lc8/DId;

    return-object v0
.end method

.method static synthetic access$100(Lc8/IId;)I
    .locals 1
    .param p0, "x0"    # Lc8/IId;

    .prologue
    .line 165
    iget v0, p0, Lc8/IId;->code:I

    return v0
.end method

.method static synthetic access$200(Lc8/IId;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/IId;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/IId;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/IId;)Lc8/pId;
    .locals 1
    .param p0, "x0"    # Lc8/IId;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/IId;->headers:Lc8/pId;

    return-object v0
.end method

.method static synthetic access$400(Lc8/IId;)Lc8/KId;
    .locals 1
    .param p0, "x0"    # Lc8/IId;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/IId;->body:Lc8/KId;

    return-object v0
.end method

.method static synthetic access$500(Lc8/IId;)Lc8/JId;
    .locals 1
    .param p0, "x0"    # Lc8/IId;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/IId;->networkResponse:Lc8/JId;

    return-object v0
.end method

.method static synthetic access$600(Lc8/IId;)Lc8/JId;
    .locals 1
    .param p0, "x0"    # Lc8/IId;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/IId;->cacheResponse:Lc8/JId;

    return-object v0
.end method

.method static synthetic access$700(Lc8/IId;)Lc8/JId;
    .locals 1
    .param p0, "x0"    # Lc8/IId;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/IId;->priorResponse:Lc8/JId;

    return-object v0
.end method


# virtual methods
.method public body(Lc8/KId;)Lc8/IId;
    .locals 0
    .param p1, "body"    # Lc8/KId;

    .prologue
    .line 235
    iput-object p1, p0, Lc8/IId;->body:Lc8/KId;

    .line 236
    return-object p0
.end method

.method public build()Lc8/JId;
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lc8/IId;->request:Lc8/DId;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget v0, p0, Lc8/IId;->code:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/IId;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    new-instance v0, Lc8/JId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/JId;-><init>(Lc8/IId;Lc8/HId;)V

    return-object v0
.end method

.method public code(I)Lc8/IId;
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 196
    iput p1, p0, Lc8/IId;->code:I

    .line 197
    return-object p0
.end method

.method public headers(Lc8/qId;)Lc8/IId;
    .locals 1
    .param p1, "headers"    # Lc8/qId;

    .prologue
    .line 230
    invoke-virtual {p1}, Lc8/qId;->newBuilder()Lc8/pId;

    move-result-object v0

    iput-object v0, p0, Lc8/IId;->headers:Lc8/pId;

    .line 231
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lc8/IId;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lc8/IId;->message:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public request(Lc8/DId;)Lc8/IId;
    .locals 0
    .param p1, "request"    # Lc8/DId;

    .prologue
    .line 191
    iput-object p1, p0, Lc8/IId;->request:Lc8/DId;

    .line 192
    return-object p0
.end method
