.class public Lc8/Spf;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/fresco/disk/fs/FileUtils$RenameException;,
        Lcom/taobao/fresco/disk/fs/FileUtils$FileDeleteException;,
        Lcom/taobao/fresco/disk/fs/FileUtils$ParentDirNotFoundException;,
        Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static mkdirs(Ljava/io/File;)V
    .locals 4
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    new-instance v0, Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;

    .line 33
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/fresco/disk/fs/FileUtils$FileDeleteException;

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taobao/fresco/disk/fs/FileUtils$FileDeleteException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static rename(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/fresco/disk/fs/FileUtils$RenameException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 59
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    .local v0, "innerException":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v0, Lcom/taobao/fresco/disk/fs/FileUtils$FileDeleteException;

    .end local v0    # "innerException":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/fresco/disk/fs/FileUtils$FileDeleteException;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v0    # "innerException":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    new-instance v1, Lcom/taobao/fresco/disk/fs/FileUtils$RenameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown error renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/taobao/fresco/disk/fs/FileUtils$RenameException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    new-instance v0, Lcom/taobao/fresco/disk/fs/FileUtils$ParentDirNotFoundException;

    .end local v0    # "innerException":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/fresco/disk/fs/FileUtils$ParentDirNotFoundException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "innerException":Ljava/lang/Throwable;
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    new-instance v0, Ljava/io/FileNotFoundException;

    .end local v0    # "innerException":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "innerException":Ljava/lang/Throwable;
    goto :goto_0
.end method
