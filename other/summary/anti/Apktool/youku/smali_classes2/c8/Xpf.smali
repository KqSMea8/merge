.class public Lc8/Xpf;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lc8/dqf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryImpl"
.end annotation


# instance fields
.field private final resource:Lc8/Ppf;

.field private size:J

.field final synthetic this$0:Lc8/aqf;

.field private timestamp:J


# direct methods
.method private constructor <init>(Lc8/aqf;Ljava/io/File;)V
    .locals 4
    .param p1, "this$0"    # Lc8/aqf;
    .param p2, "cachedFile"    # Ljava/io/File;

    .prologue
    const-wide/16 v2, -0x1

    .line 605
    iput-object p1, p0, Lc8/Xpf;->this$0:Lc8/aqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    invoke-static {p2}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-static {p2}, Lc8/Ppf;->createOrNull(Ljava/io/File;)Lc8/Ppf;

    move-result-object v0

    iput-object v0, p0, Lc8/Xpf;->resource:Lc8/Ppf;

    .line 608
    iput-wide v2, p0, Lc8/Xpf;->size:J

    .line 609
    iput-wide v2, p0, Lc8/Xpf;->timestamp:J

    .line 610
    return-void
.end method

.method synthetic constructor <init>(Lc8/aqf;Ljava/io/File;Lc8/Vpf;)V
    .locals 0
    .param p1, "x0"    # Lc8/aqf;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Lc8/Vpf;

    .prologue
    .line 600
    invoke-direct {p0, p1, p2}, Lc8/Xpf;-><init>(Lc8/aqf;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResource()Lc8/Hpf;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lc8/Xpf;->getResource()Lc8/Ppf;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lc8/Ppf;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lc8/Xpf;->resource:Lc8/Ppf;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 628
    iget-wide v0, p0, Lc8/Xpf;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 629
    iget-object v0, p0, Lc8/Xpf;->resource:Lc8/Ppf;

    invoke-virtual {v0}, Lc8/Ppf;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Xpf;->size:J

    .line 631
    :cond_0
    iget-wide v0, p0, Lc8/Xpf;->size:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 6

    .prologue
    .line 614
    iget-wide v2, p0, Lc8/Xpf;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 615
    iget-object v1, p0, Lc8/Xpf;->resource:Lc8/Ppf;

    invoke-virtual {v1}, Lc8/Ppf;->getFile()Ljava/io/File;

    move-result-object v0

    .line 616
    .local v0, "cachedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/Xpf;->timestamp:J

    .line 618
    .end local v0    # "cachedFile":Ljava/io/File;
    :cond_0
    iget-wide v2, p0, Lc8/Xpf;->timestamp:J

    return-wide v2
.end method
