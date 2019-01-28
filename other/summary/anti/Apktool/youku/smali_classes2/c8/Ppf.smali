.class public Lc8/Ppf;
.super Ljava/lang/Object;
.source "FileBinaryResource.java"

# interfaces
.implements Lc8/Hpf;


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lc8/Ppf;->mFile:Ljava/io/File;

    .line 22
    return-void
.end method

.method public static createOrNull(Ljava/io/File;)Lc8/Ppf;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    new-instance v0, Lc8/Ppf;

    invoke-direct {v0, p0}, Lc8/Ppf;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    instance-of v1, p1, Lc8/Ppf;

    if-nez v1, :cond_1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 56
    check-cast v0, Lc8/Ppf;

    .line 57
    .local v0, "that":Lc8/Ppf;
    iget-object v1, p0, Lc8/Ppf;->mFile:Ljava/io/File;

    iget-object v2, v0, Lc8/Ppf;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lc8/Ppf;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Ppf;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lc8/Ppf;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public read()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lc8/Ppf;->mFile:Ljava/io/File;

    invoke-static {v0}, Lc8/Tpf;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Ppf;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
