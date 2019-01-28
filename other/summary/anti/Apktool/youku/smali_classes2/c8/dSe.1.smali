.class public Lc8/dSe;
.super Lc8/dTe;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lc8/aWp;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final snapshot:Lc8/mTe;


# direct methods
.method public constructor <init>(Lc8/mTe;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lc8/mTe;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 699
    invoke-direct {p0}, Lc8/dTe;-><init>()V

    .line 700
    iput-object p1, p0, Lc8/dSe;->snapshot:Lc8/mTe;

    .line 701
    iput-object p2, p0, Lc8/dSe;->contentType:Ljava/lang/String;

    .line 702
    iput-object p3, p0, Lc8/dSe;->contentLength:Ljava/lang/String;

    .line 704
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lc8/mTe;->getSource(I)Lc8/uWp;

    move-result-object v0

    .line 705
    .local v0, "source":Lc8/uWp;
    new-instance v1, Lc8/cSe;

    invoke-direct {v1, p0, v0, p1}, Lc8/cSe;-><init>(Lc8/dSe;Lc8/uWp;Lc8/mTe;)V

    invoke-static {v1}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v1

    iput-object v1, p0, Lc8/dSe;->bodySource:Lc8/aWp;

    .line 711
    return-void
.end method

.method static synthetic access$500(Lc8/dSe;)Lc8/mTe;
    .locals 1
    .param p0, "x0"    # Lc8/dSe;

    .prologue
    .line 692
    iget-object v0, p0, Lc8/dSe;->snapshot:Lc8/mTe;

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 719
    :try_start_0
    iget-object v2, p0, Lc8/dSe;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/dSe;->contentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 721
    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public contentType()Lc8/MSe;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lc8/dSe;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/dSe;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lc8/MSe;->parse(Ljava/lang/String;)Lc8/MSe;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public source()Lc8/aWp;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lc8/dSe;->bodySource:Lc8/aWp;

    return-object v0
.end method
