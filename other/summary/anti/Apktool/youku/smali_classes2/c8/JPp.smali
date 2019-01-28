.class public Lc8/JPp;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KPp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lc8/LPp;

.field private code:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private request:Lc8/FPp;

.field private stat:Lmtopsdk/network/domain/NetworkStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lc8/JPp;->code:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lc8/JPp;)Lc8/FPp;
    .locals 1
    .param p0, "x0"    # Lc8/JPp;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/JPp;->request:Lc8/FPp;

    return-object v0
.end method

.method static synthetic access$100(Lc8/JPp;)I
    .locals 1
    .param p0, "x0"    # Lc8/JPp;

    .prologue
    .line 41
    iget v0, p0, Lc8/JPp;->code:I

    return v0
.end method

.method static synthetic access$200(Lc8/JPp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/JPp;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/JPp;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/JPp;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/JPp;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/JPp;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lc8/JPp;)Lc8/LPp;
    .locals 1
    .param p0, "x0"    # Lc8/JPp;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/JPp;->body:Lc8/LPp;

    return-object v0
.end method

.method static synthetic access$500(Lc8/JPp;)Lmtopsdk/network/domain/NetworkStats;
    .locals 1
    .param p0, "x0"    # Lc8/JPp;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/JPp;->stat:Lmtopsdk/network/domain/NetworkStats;

    return-object v0
.end method


# virtual methods
.method public body(Lc8/LPp;)Lc8/JPp;
    .locals 0
    .param p1, "body"    # Lc8/LPp;

    .prologue
    .line 74
    iput-object p1, p0, Lc8/JPp;->body:Lc8/LPp;

    .line 75
    return-object p0
.end method

.method public build()Lc8/KPp;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lc8/JPp;->request:Lc8/FPp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lc8/KPp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/KPp;-><init>(Lc8/JPp;Lc8/IPp;)V

    return-object v0
.end method

.method public code(I)Lc8/JPp;
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 59
    iput p1, p0, Lc8/JPp;->code:I

    .line 60
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lc8/JPp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lc8/JPp;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lc8/JPp;->headers:Ljava/util/Map;

    .line 70
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lc8/JPp;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/JPp;->message:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public request(Lc8/FPp;)Lc8/JPp;
    .locals 0
    .param p1, "request"    # Lc8/FPp;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/JPp;->request:Lc8/FPp;

    .line 55
    return-object p0
.end method

.method public stat(Lmtopsdk/network/domain/NetworkStats;)Lc8/JPp;
    .locals 0
    .param p1, "stat"    # Lmtopsdk/network/domain/NetworkStats;

    .prologue
    .line 79
    iput-object p1, p0, Lc8/JPp;->stat:Lmtopsdk/network/domain/NetworkStats;

    .line 80
    return-object p0
.end method
