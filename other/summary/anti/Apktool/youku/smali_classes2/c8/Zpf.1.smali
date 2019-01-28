.class public Lc8/Zpf;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lc8/Rpf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PurgingVisitor"
.end annotation


# instance fields
.field private insideBaseDirectory:Z

.field final synthetic this$0:Lc8/aqf;


# direct methods
.method private constructor <init>(Lc8/aqf;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lc8/Zpf;->this$0:Lc8/aqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/aqf;Lc8/Vpf;)V
    .locals 0
    .param p1, "x0"    # Lc8/aqf;
    .param p2, "x1"    # Lc8/Vpf;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lc8/Zpf;-><init>(Lc8/aqf;)V

    return-void
.end method

.method private isExpectedFile(Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 578
    iget-object v3, p0, Lc8/Zpf;->this$0:Lc8/aqf;

    invoke-static {v3, p1}, Lc8/aqf;->access$300(Lc8/aqf;Ljava/io/File;)Lc8/Ypf;

    move-result-object v0

    .line 579
    .local v0, "info":Lc8/Ypf;
    if-nez v0, :cond_0

    .line 586
    :goto_0
    return v1

    .line 582
    :cond_0
    iget-object v3, v0, Lc8/Ypf;->type:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    sget-object v4, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    if-ne v3, v4, :cond_1

    .line 583
    invoke-direct {p0, p1}, Lc8/Zpf;->isRecentFile(Ljava/io/File;)Z

    move-result v1

    goto :goto_0

    .line 585
    :cond_1
    iget-object v3, v0, Lc8/Ypf;->type:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    sget-object v4, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    if-ne v3, v4, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lc8/LNf;->checkState(Z)V

    move v1, v2

    .line 586
    goto :goto_0
.end method

.method private isRecentFile(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 593
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v2, p0, Lc8/Zpf;->this$0:Lc8/aqf;

    invoke-static {v2}, Lc8/aqf;->access$700(Lc8/aqf;)Lc8/Lpf;

    move-result-object v2

    invoke-interface {v2}, Lc8/Lpf;->now()J

    move-result-wide v2

    sget-wide v4, Lc8/aqf;->TEMP_FILE_LIFETIME_MS:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public postVisitDirectory(Ljava/io/File;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 565
    iget-object v0, p0, Lc8/Zpf;->this$0:Lc8/aqf;

    invoke-static {v0}, Lc8/aqf;->access$600(Lc8/aqf;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-boolean v0, p0, Lc8/Zpf;->insideBaseDirectory:Z

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 571
    :cond_0
    iget-boolean v0, p0, Lc8/Zpf;->insideBaseDirectory:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Zpf;->this$0:Lc8/aqf;

    invoke-static {v0}, Lc8/aqf;->access$500(Lc8/aqf;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Zpf;->insideBaseDirectory:Z

    .line 575
    :cond_1
    return-void
.end method

.method public preVisitDirectory(Ljava/io/File;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 550
    iget-boolean v0, p0, Lc8/Zpf;->insideBaseDirectory:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Zpf;->this$0:Lc8/aqf;

    invoke-static {v0}, Lc8/aqf;->access$500(Lc8/aqf;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Zpf;->insideBaseDirectory:Z

    .line 554
    :cond_0
    return-void
.end method

.method public visitFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 558
    iget-boolean v0, p0, Lc8/Zpf;->insideBaseDirectory:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lc8/Zpf;->isExpectedFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 561
    :cond_1
    return-void
.end method
