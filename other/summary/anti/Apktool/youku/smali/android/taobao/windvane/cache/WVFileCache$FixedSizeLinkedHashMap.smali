.class public Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "WVFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedSizeLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lc8/rB;


# direct methods
.method public constructor <init>(Lc8/rB;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->this$0:Lc8/rB;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->size()I

    move-result v2

    iget-object v3, p0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->this$0:Lc8/rB;

    invoke-static {v3}, Lc8/rB;->access$000(Lc8/rB;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 450
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-static {}, Lc8/rB;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEldestEntry, size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 454
    .local v1, "val":Ljava/lang/Object;
    instance-of v2, v1, Lc8/tB;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 455
    check-cast v0, Lc8/tB;

    .line 456
    .local v0, "info":Lc8/tB;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->this$0:Lc8/rB;

    invoke-static {v3}, Lc8/rB;->access$200(Lc8/rB;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lc8/tB;->fileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lc8/JD;->deleteFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    const/4 v2, 0x3

    iget-object v3, p0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->this$0:Lc8/rB;

    invoke-static {v3}, Lc8/rB;->access$300(Lc8/rB;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lc8/uB;->updateFileInfo(ILc8/tB;Ljava/nio/channels/FileChannel;)Lc8/tB;

    .line 461
    .end local v0    # "info":Lc8/tB;
    :cond_1
    const/4 v2, 0x1

    .line 463
    .end local v1    # "val":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
