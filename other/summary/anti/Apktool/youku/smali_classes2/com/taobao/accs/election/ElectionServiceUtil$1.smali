.class public final Lcom/taobao/accs/election/ElectionServiceUtil$1;
.super Ljava/lang/Object;
.source "ElectionServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/election/ElectionServiceUtil;->saveElectionResult(Landroid/content/Context;Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$result:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, "in":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 105
    .local v6, "pathInvailable":Z
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_0

    .line 106
    iget-object v7, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/election/ElectionServiceUtil;->initPath(Landroid/content/Context;)V

    .line 108
    :cond_0
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 109
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_1
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "saveElectionResult electionFile"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "path"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$100()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "host"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$result:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iget-object v11, v11, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "retry"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$result:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iget v11, v11, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$100()Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v4    # "in":Ljava/io/FileOutputStream;
    .local v5, "in":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v3, "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "package"

    iget-object v7, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$result:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iget-object v7, v7, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, ""

    :goto_0
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v7, "retry"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$result:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iget v9, v9, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$200()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$200()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    .line 117
    const-string/jumbo v7, "lastFlushTime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$200()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 123
    .local v2, "electionJson":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    .local v0, "data":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    if-eqz v6, :cond_2

    .line 132
    :try_start_2
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$002(Ljava/io/File;)Ljava/io/File;

    .line 133
    const-string/jumbo v7, "ElectionServiceUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "path invailable, new path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "accs_election"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$102(Ljava/io/File;)Ljava/io/File;

    .line 135
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$100()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFilePath:Ljava/lang/String;

    .line 137
    :cond_2
    if-eqz v5, :cond_3

    .line 138
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object v4, v5

    .line 142
    .end local v0    # "data":[B
    .end local v2    # "electionJson":Lorg/json/JSONObject;
    .end local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    return-void

    .line 114
    .end local v4    # "in":Ljava/io/FileOutputStream;
    .restart local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "in":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_3
    iget-object v7, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$result:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iget-object v7, v7, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 119
    :cond_6
    const-string/jumbo v7, "lastFlushTime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 126
    .end local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    :goto_3
    const/4 v6, 0x1

    .line 131
    if-eqz v6, :cond_7

    .line 132
    :try_start_4
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$002(Ljava/io/File;)Ljava/io/File;

    .line 133
    const-string/jumbo v7, "ElectionServiceUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "path invailable, new path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "accs_election"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$102(Ljava/io/File;)Ljava/io/File;

    .line 135
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$100()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFilePath:Ljava/lang/String;

    .line 137
    :cond_7
    if-eqz v4, :cond_4

    .line 138
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 142
    :catch_1
    move-exception v7

    goto/16 :goto_2

    .end local v4    # "in":Ljava/io/FileOutputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "electionJson":Lorg/json/JSONObject;
    .restart local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "in":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 127
    .end local v0    # "data":[B
    .end local v2    # "electionJson":Lorg/json/JSONObject;
    .end local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Throwable;
    :goto_4
    :try_start_5
    const-string/jumbo v7, "ElectionServiceUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveElectionResult is error,e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    if-eqz v6, :cond_8

    .line 132
    :try_start_6
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$002(Ljava/io/File;)Ljava/io/File;

    .line 133
    const-string/jumbo v7, "ElectionServiceUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "path invailable, new path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "accs_election"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$102(Ljava/io/File;)Ljava/io/File;

    .line 135
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$100()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFilePath:Ljava/lang/String;

    .line 137
    :cond_8
    if-eqz v4, :cond_4

    .line 138
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 142
    :catch_4
    move-exception v7

    goto/16 :goto_2

    .line 130
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 131
    :goto_5
    if-eqz v6, :cond_9

    .line 132
    :try_start_7
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/taobao/accs/election/ElectionServiceUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$002(Ljava/io/File;)Ljava/io/File;

    .line 133
    const-string/jumbo v8, "ElectionServiceUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "path invailable, new path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "accs_election"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$102(Ljava/io/File;)Ljava/io/File;

    .line 135
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$100()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFilePath:Ljava/lang/String;

    .line 137
    :cond_9
    if-eqz v4, :cond_a

    .line 138
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 141
    :cond_a
    :goto_6
    throw v7

    :catch_5
    move-exception v8

    goto :goto_6

    .line 130
    .end local v4    # "in":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 127
    .end local v4    # "in":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 126
    :catch_7
    move-exception v7

    goto/16 :goto_3
.end method
