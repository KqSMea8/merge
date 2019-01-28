.class public Lc8/JId;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/IId;
    }
.end annotation


# instance fields
.field private final body:Lc8/KId;

.field private cacheResponse:Lc8/JId;

.field private final code:I

.field private final headers:Lc8/qId;

.field private final message:Ljava/lang/String;

.field private networkResponse:Lc8/JId;

.field private final priorResponse:Lc8/JId;

.field private final request:Lc8/DId;


# direct methods
.method private constructor <init>(Lc8/IId;)V
    .locals 1
    .param p1, "builder"    # Lc8/IId;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lc8/IId;->access$000(Lc8/IId;)Lc8/DId;

    move-result-object v0

    iput-object v0, p0, Lc8/JId;->request:Lc8/DId;

    .line 26
    invoke-static {p1}, Lc8/IId;->access$100(Lc8/IId;)I

    move-result v0

    iput v0, p0, Lc8/JId;->code:I

    .line 27
    invoke-static {p1}, Lc8/IId;->access$200(Lc8/IId;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/JId;->message:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lc8/IId;->access$300(Lc8/IId;)Lc8/pId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pId;->build()Lc8/qId;

    move-result-object v0

    iput-object v0, p0, Lc8/JId;->headers:Lc8/qId;

    .line 29
    invoke-static {p1}, Lc8/IId;->access$400(Lc8/IId;)Lc8/KId;

    move-result-object v0

    iput-object v0, p0, Lc8/JId;->body:Lc8/KId;

    .line 30
    invoke-static {p1}, Lc8/IId;->access$500(Lc8/IId;)Lc8/JId;

    move-result-object v0

    iput-object v0, p0, Lc8/JId;->networkResponse:Lc8/JId;

    .line 31
    invoke-static {p1}, Lc8/IId;->access$600(Lc8/IId;)Lc8/JId;

    move-result-object v0

    iput-object v0, p0, Lc8/JId;->cacheResponse:Lc8/JId;

    .line 32
    invoke-static {p1}, Lc8/IId;->access$700(Lc8/IId;)Lc8/JId;

    move-result-object v0

    iput-object v0, p0, Lc8/JId;->priorResponse:Lc8/JId;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lc8/IId;Lc8/HId;)V
    .locals 0
    .param p1, "x0"    # Lc8/IId;
    .param p2, "x1"    # Lc8/HId;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lc8/JId;-><init>(Lc8/IId;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/JId;)I
    .locals 1
    .param p0, "x0"    # Lc8/JId;

    .prologue
    .line 13
    iget v0, p0, Lc8/JId;->code:I

    return v0
.end method

.method static synthetic access$1100(Lc8/JId;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/JId;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/JId;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/JId;)Lc8/qId;
    .locals 1
    .param p0, "x0"    # Lc8/JId;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/JId;->headers:Lc8/qId;

    return-object v0
.end method

.method static synthetic access$1300(Lc8/JId;)Lc8/KId;
    .locals 1
    .param p0, "x0"    # Lc8/JId;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/JId;->body:Lc8/KId;

    return-object v0
.end method

.method static synthetic access$1400(Lc8/JId;)Lc8/JId;
    .locals 1
    .param p0, "x0"    # Lc8/JId;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/JId;->networkResponse:Lc8/JId;

    return-object v0
.end method

.method static synthetic access$1500(Lc8/JId;)Lc8/JId;
    .locals 1
    .param p0, "x0"    # Lc8/JId;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/JId;->cacheResponse:Lc8/JId;

    return-object v0
.end method

.method static synthetic access$1600(Lc8/JId;)Lc8/JId;
    .locals 1
    .param p0, "x0"    # Lc8/JId;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/JId;->priorResponse:Lc8/JId;

    return-object v0
.end method

.method static synthetic access$900(Lc8/JId;)Lc8/DId;
    .locals 1
    .param p0, "x0"    # Lc8/JId;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/JId;->request:Lc8/DId;

    return-object v0
.end method


# virtual methods
.method public body()Lc8/KId;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lc8/JId;->body:Lc8/KId;

    return-object v0
.end method

.method public code()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lc8/JId;->code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Response{protocol=, code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/JId;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/JId;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/JId;->request:Lc8/DId;

    .line 161
    invoke-virtual {v1}, Lc8/DId;->url()Lc8/wId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    return-object v0
.end method
