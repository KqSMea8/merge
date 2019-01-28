.class public Lc8/Qpf;
.super Ljava/lang/Object;
.source "FileTree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .locals 6
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 47
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x1

    .line 48
    .local v2, "success":Z
    if-eqz v1, :cond_0

    .line 49
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 50
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lc8/Qpf;->deleteRecursively(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return v2
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0}, Lc8/Qpf;->deleteContents(Ljava/io/File;)Z

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static walkFileTree(Ljava/io/File;Lc8/Rpf;)V
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "visitor"    # Lc8/Rpf;

    .prologue
    .line 27
    invoke-interface {p1, p0}, Lc8/Rpf;->preVisitDirectory(Ljava/io/File;)V

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 29
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 30
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 31
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    invoke-static {v0, p1}, Lc8/Qpf;->walkFileTree(Ljava/io/File;Lc8/Rpf;)V

    .line 30
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p1, v0}, Lc8/Rpf;->visitFile(Ljava/io/File;)V

    goto :goto_1

    .line 38
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {p1, p0}, Lc8/Rpf;->postVisitDirectory(Ljava/io/File;)V

    .line 39
    return-void
.end method
