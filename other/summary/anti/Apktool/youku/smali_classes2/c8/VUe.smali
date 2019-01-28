.class public final Lc8/VUe;
.super Lc8/dTe;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lc8/GSe;

.field private final source:Lc8/aWp;


# direct methods
.method public constructor <init>(Lc8/GSe;Lc8/aWp;)V
    .locals 0
    .param p1, "headers"    # Lc8/GSe;
    .param p2, "source"    # Lc8/aWp;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/dTe;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/VUe;->headers:Lc8/GSe;

    .line 29
    iput-object p2, p0, Lc8/VUe;->source:Lc8/aWp;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lc8/VUe;->headers:Lc8/GSe;

    invoke-static {v0}, Lc8/UUe;->contentLength(Lc8/GSe;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lc8/MSe;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lc8/VUe;->headers:Lc8/GSe;

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lc8/MSe;->parse(Ljava/lang/String;)Lc8/MSe;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public source()Lc8/aWp;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/VUe;->source:Lc8/aWp;

    return-object v0
.end method
