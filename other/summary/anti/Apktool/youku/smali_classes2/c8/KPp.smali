.class public final Lc8/KPp;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/IPp;,
        Lc8/JPp;
    }
.end annotation


# instance fields
.field public final body:Lc8/LPp;

.field public final code:I

.field public final headers:Ljava/util/Map;
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

.field public final message:Ljava/lang/String;

.field public final request:Lc8/FPp;

.field public final stat:Lmtopsdk/network/domain/NetworkStats;


# direct methods
.method private constructor <init>(Lc8/JPp;)V
    .locals 1
    .param p1, "builder"    # Lc8/JPp;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lc8/JPp;->access$000(Lc8/JPp;)Lc8/FPp;

    move-result-object v0

    iput-object v0, p0, Lc8/KPp;->request:Lc8/FPp;

    .line 21
    invoke-static {p1}, Lc8/JPp;->access$100(Lc8/JPp;)I

    move-result v0

    iput v0, p0, Lc8/KPp;->code:I

    .line 22
    invoke-static {p1}, Lc8/JPp;->access$200(Lc8/JPp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/KPp;->message:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lc8/JPp;->access$300(Lc8/JPp;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/KPp;->headers:Ljava/util/Map;

    .line 24
    invoke-static {p1}, Lc8/JPp;->access$400(Lc8/JPp;)Lc8/LPp;

    move-result-object v0

    iput-object v0, p0, Lc8/KPp;->body:Lc8/LPp;

    .line 25
    invoke-static {p1}, Lc8/JPp;->access$500(Lc8/JPp;)Lmtopsdk/network/domain/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lc8/KPp;->stat:Lmtopsdk/network/domain/NetworkStats;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lc8/JPp;Lc8/IPp;)V
    .locals 0
    .param p1, "x0"    # Lc8/JPp;
    .param p2, "x1"    # Lc8/IPp;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lc8/KPp;-><init>(Lc8/JPp;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Response{ code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/KPp;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/KPp;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, ", headers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/KPp;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v1, ", body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/KPp;->body:Lc8/LPp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, ", request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/KPp;->request:Lc8/FPp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v1, ", stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/KPp;->stat:Lmtopsdk/network/domain/NetworkStats;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
