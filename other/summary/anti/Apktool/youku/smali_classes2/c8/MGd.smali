.class public Lc8/MGd;
.super Ljava/lang/Object;
.source "EncryptionWriter.java"

# interfaces
.implements Lc8/QGd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/LGd;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mEncryptBase64:Lc8/JGd;

.field private mFileCount:I

.field private mFileSuffixName:Ljava/lang/String;

.field private mWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "EncryptionWriter"

    iput-object v0, p0, Lc8/MGd;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/MGd;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 24
    const/4 v0, 0x7

    iput v0, p0, Lc8/MGd;->mFileCount:I

    .line 25
    const-string/jumbo v0, ".log.txt"

    iput-object v0, p0, Lc8/MGd;->mFileSuffixName:Ljava/lang/String;

    .line 28
    new-instance v0, Lc8/JGd;

    const-string/jumbo v1, "lo"

    invoke-direct {v0, v1}, Lc8/JGd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/MGd;->mEncryptBase64:Lc8/JGd;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lc8/MGd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/MGd;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/MGd;->mFileSuffixName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method checkFileCount(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 32
    new-instance v2, Lc8/KGd;

    invoke-direct {v2, p0}, Lc8/KGd;-><init>(Lc8/MGd;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 38
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    array-length v2, v0

    iget v3, p0, Lc8/MGd;->mFileCount:I

    if-le v2, v3, :cond_1

    .line 39
    :cond_0
    new-instance v2, Lc8/LGd;

    invoke-direct {v2, p0}, Lc8/LGd;-><init>(Lc8/MGd;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 40
    iget v1, p0, Lc8/MGd;->mFileCount:I

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 41
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lc8/MGd;->mWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lc8/MGd;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 82
    iget-object v0, p0, Lc8/MGd;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/MGd;->mWriter:Ljava/io/BufferedWriter;

    .line 85
    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " dir failed!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_0
    iget-object v3, p0, Lc8/MGd;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/MGd;->mFileSuffixName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    iget-object v3, p0, Lc8/MGd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "create new file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    :goto_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lc8/MGd;->mWriter:Ljava/io/BufferedWriter;

    .line 64
    return-void

    .line 60
    :cond_2
    invoke-virtual {p0, v0}, Lc8/MGd;->checkFileCount(Ljava/io/File;)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lc8/MGd;->mWriter:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget-object v1, p0, Lc8/MGd;->mWriter:Ljava/io/BufferedWriter;

    iget-object v2, p0, Lc8/MGd;->mEncryptBase64:Lc8/JGd;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/JGd;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lc8/MGd;->mWriter:Ljava/io/BufferedWriter;

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 76
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method
