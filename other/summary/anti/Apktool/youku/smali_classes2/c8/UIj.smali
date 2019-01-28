.class public final Lc8/UIj;
.super Ljava/lang/Thread;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WIj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lc8/UIj;->val$filename:Ljava/lang/String;

    iput-object p2, p0, Lc8/UIj;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, "dir":Ljava/io/File;
    const/4 v3, 0x0

    .line 153
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 155
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v7, Lc8/WIj;->URLCacheDataPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v0    # "dir":Ljava/io/File;
    .local v1, "dir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "make dir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    :cond_0
    new-instance v4, Ljava/io/File;

    sget-object v7, Lc8/WIj;->URLCacheDataPath:Ljava/lang/String;

    iget-object v8, p0, Lc8/UIj;->val$filename:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 159
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_3
    iget-object v7, p0, Lc8/UIj;->val$content:Ljava/lang/String;

    const-string/jumbo v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 163
    if-eqz v6, :cond_3

    .line 165
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .line 171
    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-static {v0, v3}, Lc8/WIj;->controlUrlCacheFilesSize(Ljava/io/File;Ljava/io/File;)V

    .line 172
    return-void

    .line 166
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "NetworkUtils"

    const-string/jumbo v8, "saveUrlCacheToLocal()"

    invoke-static {v7, v8, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .line 168
    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 161
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string/jumbo v7, "NetworkUtils"

    const-string/jumbo v8, "saveUrlCacheToLocal()"

    invoke-static {v7, v8, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    if-eqz v5, :cond_1

    .line 165
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 166
    :catch_2
    move-exception v2

    .line 167
    const-string/jumbo v7, "NetworkUtils"

    const-string/jumbo v8, "saveUrlCacheToLocal()"

    invoke-static {v7, v8, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    .line 165
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 168
    :cond_2
    :goto_3
    throw v7

    .line 166
    :catch_3
    move-exception v2

    .line 167
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "NetworkUtils"

    const-string/jumbo v9, "saveUrlCacheToLocal()"

    invoke-static {v8, v9, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 163
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dir":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_2

    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_2

    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_3
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_2

    .line 160
    .end local v0    # "dir":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_1

    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_1

    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_1

    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_3
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0
.end method
