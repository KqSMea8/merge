.class public Lc8/Wpf;
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
    name = "EntriesCollector"
.end annotation


# instance fields
.field private final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/dqf;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/aqf;


# direct methods
.method private constructor <init>(Lc8/aqf;)V
    .locals 1

    .prologue
    .line 508
    iput-object p1, p0, Lc8/Wpf;->this$0:Lc8/aqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Wpf;->result:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lc8/aqf;Lc8/Vpf;)V
    .locals 0
    .param p1, "x0"    # Lc8/aqf;
    .param p2, "x1"    # Lc8/Vpf;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lc8/Wpf;-><init>(Lc8/aqf;)V

    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/dqf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lc8/Wpf;->result:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public postVisitDirectory(Ljava/io/File;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 526
    return-void
.end method

.method public preVisitDirectory(Ljava/io/File;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 514
    return-void
.end method

.method public visitFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 518
    iget-object v1, p0, Lc8/Wpf;->this$0:Lc8/aqf;

    invoke-static {v1, p1}, Lc8/aqf;->access$300(Lc8/aqf;Ljava/io/File;)Lc8/Ypf;

    move-result-object v0

    .line 519
    .local v0, "info":Lc8/Ypf;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc8/Ypf;->type:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    sget-object v2, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    if-ne v1, v2, :cond_0

    .line 520
    iget-object v1, p0, Lc8/Wpf;->result:Ljava/util/List;

    new-instance v2, Lc8/Xpf;

    iget-object v3, p0, Lc8/Wpf;->this$0:Lc8/aqf;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lc8/Xpf;-><init>(Lc8/aqf;Ljava/io/File;Lc8/Vpf;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_0
    return-void
.end method
