.class public Lc8/Ndc;
.super Landroid/os/AsyncTask;
.source "ZipExtractorTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mdc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final inputFile:Ljava/io/File;

.field private final outputFile:Ljava/io/File;

.field private progress:I

.field private final progressDialog:Landroid/app/ProgressDialog;

.field private replaceAll:Z

.field private zipExtracListener:Lc8/Kdc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZLc8/Kdc;)V
    .locals 3
    .param p1, "in"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "replaceAll"    # Z
    .param p5, "zipExtracListener"    # Lc8/Kdc;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    const-string/jumbo v0, "ZipExtractorTask"

    iput-object v0, p0, Lc8/Ndc;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lc8/Ndc;->progress:I

    .line 34
    const/16 v0, 0x2000

    iput v0, p0, Lc8/Ndc;->BUFFER_SIZE:I

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Ndc;->inputFile:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Ndc;->outputFile:Ljava/io/File;

    .line 40
    iput-object p5, p0, Lc8/Ndc;->zipExtracListener:Lc8/Kdc;

    .line 41
    iget-object v0, p0, Lc8/Ndc;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/Ndc;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "ZipExtractorTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to make directories:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Ndc;->outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iput-object p3, p0, Lc8/Ndc;->context:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lc8/Ndc;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lc8/Ndc;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    .line 53
    :goto_0
    iput-boolean p4, p0, Lc8/Ndc;->replaceAll:Z

    .line 54
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/Ndc;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndc;

    .prologue
    .line 24
    iget v0, p0, Lc8/Ndc;->progress:I

    return v0
.end method

.method static synthetic access$012(Lc8/Ndc;I)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndc;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iget v0, p0, Lc8/Ndc;->progress:I

    add-int/2addr v0, p1

    iput v0, p0, Lc8/Ndc;->progress:I

    return v0
.end method

.method static synthetic access$100(Lc8/Ndc;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/Ndc;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lc8/Ndc;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 157
    iget v6, p0, Lc8/Ndc;->BUFFER_SIZE:I

    new-array v0, v6, [B

    .line 158
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    iget v6, p0, Lc8/Ndc;->BUFFER_SIZE:I

    invoke-direct {v3, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 159
    .local v3, "in":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget v6, p0, Lc8/Ndc;->BUFFER_SIZE:I

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 160
    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 162
    .local v1, "count":I
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    iget v7, p0, Lc8/Ndc;->BUFFER_SIZE:I

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .local v4, "n":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 163
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 164
    add-int/2addr v1, v4

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    .end local v4    # "n":I
    :goto_2
    return v1

    .line 172
    .restart local v4    # "n":I
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "n":I
    :catch_2
    move-exception v2

    .line 168
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 176
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 177
    :catch_3
    move-exception v2

    .line 178
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 172
    :catch_4
    move-exception v2

    .line 173
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 171
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 176
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 179
    :goto_5
    throw v6

    .line 172
    :catch_5
    move-exception v2

    .line 173
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private getOriginalSize(Ljava/util/zip/ZipFile;)J
    .locals 8
    .param p1, "file"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 146
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const-wide/16 v2, 0x0

    .line 147
    .local v2, "originalSize":J
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 149
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 153
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    return-wide v2
.end method

.method private unzip()J
    .locals 14

    .prologue
    .line 106
    const-wide/16 v4, 0x0

    .line 108
    .local v4, "extractedSize":J
    const/4 v7, 0x0

    .line 110
    .local v7, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    iget-object v11, p0, Lc8/Ndc;->inputFile:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .local v10, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-direct {p0, v10}, Lc8/Ndc;->getOriginalSize(Ljava/util/zip/ZipFile;)J

    move-result-wide v8

    .line 112
    .local v8, "uncompressedSize":J
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    long-to-int v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lc8/Ndc;->publishProgress([Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 114
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 115
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 116
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_0

    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v11, p0, Lc8/Ndc;->outputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v0, "destination":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 121
    const-string/jumbo v11, "ZipExtractorTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "make="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 126
    new-instance v6, Lc8/Mdc;

    invoke-direct {v6, p0, v0}, Lc8/Mdc;-><init>(Lc8/Ndc;Ljava/io/File;)V

    .line 127
    .local v6, "outStream":Lc8/Mdc;
    invoke-virtual {v10, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {p0, v11, v6}, Lc8/Ndc;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v11

    int-to-long v12, v11

    add-long/2addr v4, v12

    .line 128
    invoke-virtual {v6}, Lc8/Mdc;->close()V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 130
    .end local v0    # "destination":Ljava/io/File;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "outStream":Lc8/Mdc;
    .end local v8    # "uncompressedSize":J
    :catch_0
    move-exception v1

    move-object v7, v10

    .line 131
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/util/zip/ZipException;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 141
    .end local v1    # "e":Ljava/util/zip/ZipException;
    :goto_2
    return-wide v4

    .line 136
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v8    # "uncompressedSize":J
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v10

    .line 139
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 137
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v10

    .line 140
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 137
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v8    # "uncompressedSize":J
    .local v1, "e":Ljava/util/zip/ZipException;
    :catch_2
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 137
    :catch_4
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 136
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 139
    :goto_5
    throw v11

    .line 137
    :catch_5
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v11

    move-object v7, v10

    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 132
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v1

    move-object v7, v10

    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 130
    :catch_7
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 58
    invoke-direct {p0}, Lc8/Ndc;->unzip()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ndc;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 64
    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 67
    :cond_0
    iget-object v0, p0, Lc8/Ndc;->zipExtracListener:Lc8/Kdc;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lc8/Ndc;->zipExtracListener:Lc8/Kdc;

    iget-object v1, p0, Lc8/Ndc;->inputFile:Ljava/io/File;

    iget-object v2, p0, Lc8/Ndc;->outputFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lc8/Kdc;->unzipFinished(Ljava/io/File;Ljava/io/File;)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lc8/Ndc;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ndc;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "Extracting"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lc8/Ndc;->inputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 80
    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lc8/Ldc;

    invoke-direct {v1, p0}, Lc8/Ldc;-><init>(Lc8/Ndc;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 86
    iget-object v0, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 88
    :cond_0
    iget-object v0, p0, Lc8/Ndc;->zipExtracListener:Lc8/Kdc;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lc8/Ndc;->zipExtracListener:Lc8/Kdc;

    invoke-interface {v0}, Lc8/Kdc;->unzipStart()V

    .line 90
    :cond_1
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 95
    iget-object v1, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    array-length v1, p1

    if-le v1, v2, :cond_1

    .line 98
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    .local v0, "max":I
    iget-object v1, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0

    .line 102
    .end local v0    # "max":I
    :cond_1
    iget-object v1, p0, Lc8/Ndc;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ndc;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
