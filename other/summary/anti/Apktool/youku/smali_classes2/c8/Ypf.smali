.class public Lc8/Ypf;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field public final resourceId:Ljava/lang/String;

.field public final type:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;


# direct methods
.method private constructor <init>(Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;
    .param p2, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p1, p0, Lc8/Ypf;->type:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    .line 463
    iput-object p2, p0, Lc8/Ypf;->resourceId:Ljava/lang/String;

    .line 464
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;Ljava/lang/String;Lc8/Vpf;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lc8/Vpf;

    .prologue
    .line 456
    invoke-direct {p0, p1, p2}, Lc8/Ypf;-><init>(Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;Ljava/lang/String;)V

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lc8/Ypf;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 467
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 469
    .local v3, "pos":I
    if-gtz v3, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-object v6

    .line 472
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "ext":Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->fromExtension(Ljava/lang/String;)Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    move-result-object v5

    .line 474
    .local v5, "type":Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;
    if-eqz v5, :cond_0

    .line 477
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "resourceId":Ljava/lang/String;
    sget-object v7, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    invoke-virtual {v5, v7}, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 479
    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 480
    .local v2, "numPos":I
    if-lez v2, :cond_0

    .line 483
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 486
    .end local v2    # "numPos":I
    :cond_2
    new-instance v6, Lc8/Ypf;

    invoke-direct {v6, v5, v4}, Lc8/Ypf;-><init>(Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "parent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/Ypf;->resourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".tmp"

    invoke-static {v1, v2, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 500
    .local v0, "f":Ljava/io/File;
    return-object v0
.end method

.method public toFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "parentDir"    # Ljava/io/File;

    .prologue
    .line 495
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/Ypf;->resourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Ypf;->type:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    iget-object v2, v2, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/Ypf;->type:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Ypf;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
