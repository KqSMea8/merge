.class public Lc8/nef;
.super Landroid/os/AsyncTask;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sef;->fetchTemplateFromRemote(Ljava/lang/String;Ljava/lang/String;Lc8/yef;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sef;

.field final synthetic val$finalBytes:[B

.field final synthetic val$templateId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/sef;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lc8/nef;->this$0:Lc8/sef;

    iput-object p2, p0, Lc8/nef;->val$templateId:Ljava/lang/String;

    iput-object p3, p0, Lc8/nef;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lc8/nef;->val$finalBytes:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 165
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/nef;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 169
    iget-object v3, p0, Lc8/nef;->this$0:Lc8/sef;

    iget-boolean v3, v3, Lc8/sef;->useTemplateIdAsFileName:Z

    if-eqz v3, :cond_1

    .line 170
    iget-object v1, p0, Lc8/nef;->val$templateId:Ljava/lang/String;

    .line 176
    .local v1, "name":Ljava/lang/String;
    :goto_0
    const-class v4, Lc8/sef;

    monitor-enter v4

    .line 177
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lc8/nef;->this$0:Lc8/sef;

    iget-object v3, v3, Lc8/sef;->rootDir:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    iget-object v3, p0, Lc8/nef;->this$0:Lc8/sef;

    iget-object v5, p0, Lc8/nef;->val$finalBytes:[B

    invoke-static {v3, v5, v0}, Lc8/sef;->access$600(Lc8/sef;[BLjava/io/File;)Ljava/io/File;

    .line 183
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 187
    :try_start_1
    iget-object v3, p0, Lc8/nef;->this$0:Lc8/sef;

    iget-object v3, v3, Lc8/sef;->fileCache:Lc8/hef;

    iget-object v4, p0, Lc8/nef;->val$templateId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lc8/hef;->store(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_0
    :goto_1
    return-object v8

    .line 172
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lc8/nef;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 181
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    monitor-exit v4

    goto :goto_1

    .line 183
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 188
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 189
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "TemplateCache"

    const-string/jumbo v4, "File cache store exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
