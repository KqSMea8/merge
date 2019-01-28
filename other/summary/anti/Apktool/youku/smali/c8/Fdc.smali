.class public Lc8/Fdc;
.super Landroid/os/AsyncTask;
.source "DownLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Edc;
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

.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private progress:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private progressReportingOutputStream:Lc8/Edc;

.field private resGetListener:Lc8/Gdc;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lc8/Gdc;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resGetListener"    # Lc8/Gdc;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    const-string/jumbo v2, "DownLoaderTask"

    iput-object v2, p0, Lc8/Fdc;->TAG:Ljava/lang/String;

    .line 28
    const/4 v2, 0x0

    iput v2, p0, Lc8/Fdc;->progress:I

    .line 33
    const/16 v2, 0x2000

    iput v2, p0, Lc8/Fdc;->BUFFER_SIZE:I

    .line 37
    iput-object p3, p0, Lc8/Fdc;->context:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Lc8/Fdc;->resGetListener:Lc8/Gdc;

    .line 39
    iget-object v2, p0, Lc8/Fdc;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 40
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lc8/Fdc;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    .line 46
    :goto_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/Fdc;->url:Ljava/net/URL;

    .line 47
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lc8/Fdc;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/Fdc;->file:Ljava/io/File;

    .line 49
    const-string/jumbo v2, "DownLoaderTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mUrl.getFile()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/Fdc;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "fileName":Ljava/lang/String;
    :goto_1
    return-void

    .line 43
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lc8/Fdc;)I
    .locals 1
    .param p0, "x0"    # Lc8/Fdc;

    .prologue
    .line 23
    iget v0, p0, Lc8/Fdc;->progress:I

    return v0
.end method

.method static synthetic access$012(Lc8/Fdc;I)I
    .locals 1
    .param p0, "x0"    # Lc8/Fdc;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iget v0, p0, Lc8/Fdc;->progress:I

    add-int/2addr v0, p1

    iput v0, p0, Lc8/Fdc;->progress:I

    return v0
.end method

.method static synthetic access$100(Lc8/Fdc;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/Fdc;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lc8/Fdc;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 136
    iget v6, p0, Lc8/Fdc;->BUFFER_SIZE:I

    new-array v0, v6, [B

    .line 137
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    iget v6, p0, Lc8/Fdc;->BUFFER_SIZE:I

    invoke-direct {v3, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 138
    .local v3, "in":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget v6, p0, Lc8/Fdc;->BUFFER_SIZE:I

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 139
    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 141
    .local v1, "count":I
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    iget v7, p0, Lc8/Fdc;->BUFFER_SIZE:I

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .local v4, "n":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 142
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 143
    add-int/2addr v1, v4

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    .end local v4    # "n":I
    :goto_2
    return v1

    .line 151
    .restart local v4    # "n":I
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 157
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 146
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "n":I
    :catch_2
    move-exception v2

    .line 147
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 155
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 156
    :catch_3
    move-exception v2

    .line 157
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 151
    :catch_4
    move-exception v2

    .line 152
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 150
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 155
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 158
    :goto_5
    throw v6

    .line 151
    :catch_5
    move-exception v2

    .line 152
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 157
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private download()J
    .locals 8

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "bytesCopied":I
    :try_start_0
    iget-object v4, p0, Lc8/Fdc;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 117
    .local v1, "connection":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 118
    .local v3, "length":I
    iget-object v4, p0, Lc8/Fdc;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    int-to-long v4, v3

    iget-object v6, p0, Lc8/Fdc;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 119
    const-string/jumbo v4, "DownLoaderTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/Fdc;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " already exits!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-wide/16 v4, 0x0

    .line 132
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v3    # "length":I
    :goto_0
    return-wide v4

    .line 122
    .restart local v1    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "length":I
    :cond_0
    new-instance v4, Lc8/Edc;

    iget-object v5, p0, Lc8/Fdc;->file:Ljava/io/File;

    invoke-direct {v4, p0, v5}, Lc8/Edc;-><init>(Lc8/Fdc;Ljava/io/File;)V

    iput-object v4, p0, Lc8/Fdc;->progressReportingOutputStream:Lc8/Edc;

    .line 123
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lc8/Fdc;->publishProgress([Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lc8/Fdc;->progressReportingOutputStream:Lc8/Edc;

    invoke-direct {p0, v4, v5}, Lc8/Fdc;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    .line 125
    if-eq v0, v3, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 126
    const-string/jumbo v4, "DownLoaderTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Download incomplete bytesCopied="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    iget-object v4, p0, Lc8/Fdc;->progressReportingOutputStream:Lc8/Edc;

    invoke-virtual {v4}, Lc8/Edc;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v3    # "length":I
    :goto_1
    int-to-long v4, v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 76
    invoke-direct {p0}, Lc8/Fdc;->download()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Fdc;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 101
    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 104
    :cond_0
    iget-object v0, p0, Lc8/Fdc;->resGetListener:Lc8/Gdc;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lc8/Fdc;->resGetListener:Lc8/Gdc;

    iget-object v1, p0, Lc8/Fdc;->file:Ljava/io/File;

    invoke-interface {v0, v1}, Lc8/Gdc;->downloadFinished(Ljava/io/File;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lc8/Fdc;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Fdc;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "Downloading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lc8/Fdc;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 62
    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lc8/Ddc;

    invoke-direct {v1, p0}, Lc8/Ddc;-><init>(Lc8/Fdc;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    iget-object v0, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 70
    :cond_0
    iget-object v0, p0, Lc8/Fdc;->resGetListener:Lc8/Gdc;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lc8/Fdc;->resGetListener:Lc8/Gdc;

    invoke-interface {v0}, Lc8/Gdc;->downloadStart()V

    .line 72
    :cond_1
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 82
    iget-object v1, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    array-length v1, p1

    if-le v1, v2, :cond_2

    .line 85
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    .local v0, "contentLength":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0

    .line 94
    .end local v0    # "contentLength":I
    :cond_2
    iget-object v1, p0, Lc8/Fdc;->progressDialog:Landroid/app/ProgressDialog;

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
    .line 23
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Fdc;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
