.class public Lc8/TPp;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WPp;->onInputStreamGet(Lc8/PM;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WPp;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$inputStream:Lc8/PM;


# direct methods
.method constructor <init>(Lc8/WPp;Lc8/PM;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lc8/TPp;->this$0:Lc8/WPp;

    iput-object p2, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    iput-object p3, p0, Lc8/TPp;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 85
    :try_start_0
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const-string/jumbo v4, "mtopsdk.NetworkListenerAdapter"

    iget-object v5, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v5}, Lc8/WPp;->access$000(Lc8/WPp;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "[onInputStreamGet]start to read input stream"

    invoke-static {v4, v5, v6}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v4, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    invoke-interface {v4}, Lc8/PM;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    invoke-interface {v4}, Lc8/PM;->length()I

    move-result v3

    .line 89
    .local v3, "total":I
    :goto_0
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v4, v5}, Lc8/WPp;->access$202(Lc8/WPp;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 90
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 92
    .local v0, "buff":[B
    :goto_1
    iget-object v4, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    invoke-interface {v4, v0}, Lc8/PM;->read([B)I

    move-result v1

    .local v1, "cnt":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 93
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    const-string/jumbo v4, "mtopsdk.NetworkListenerAdapter"

    iget-object v5, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v5}, Lc8/WPp;->access$000(Lc8/WPp;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[onInputStreamGet]data chunk content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v4}, Lc8/WPp;->access$200(Lc8/WPp;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 98
    .end local v0    # "buff":[B
    .end local v1    # "cnt":I
    .end local v3    # "total":I
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "mtopsdk.NetworkListenerAdapter"

    iget-object v5, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v5}, Lc8/WPp;->access$000(Lc8/WPp;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "[onInputStreamGet]Read data from inputstream failed."

    invoke-static {v4, v5, v6, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lc8/WPp;->access$202(Lc8/WPp;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object v4, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    if-eqz v4, :cond_2

    .line 103
    :try_start_2
    iget-object v4, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    invoke-interface {v4}, Lc8/PM;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :cond_2
    :goto_2
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v4}, Lc8/WPp;->access$200(Lc8/WPp;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    invoke-static {v4}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v5, p0, Lc8/TPp;->this$0:Lc8/WPp;

    monitor-enter v5

    .line 111
    :try_start_3
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v4}, Lc8/WPp;->access$300(Lc8/WPp;)Lc8/nM;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 112
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    iget-object v6, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v6}, Lc8/WPp;->access$300(Lc8/WPp;)Lc8/nM;

    move-result-object v6

    iget-object v7, p0, Lc8/TPp;->val$context:Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lc8/WPp;->access$400(Lc8/WPp;Lc8/nM;Ljava/lang/Object;)V

    .line 116
    :goto_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 88
    :cond_3
    :try_start_4
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v4}, Lc8/WPp;->access$100(Lc8/WPp;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    goto/16 :goto_0

    .line 102
    .restart local v0    # "buff":[B
    .restart local v1    # "cnt":I
    .restart local v3    # "total":I
    :cond_4
    iget-object v4, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    if-eqz v4, :cond_5

    .line 103
    :try_start_5
    iget-object v4, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    invoke-interface {v4}, Lc8/PM;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 106
    :cond_5
    :goto_5
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v4}, Lc8/WPp;->access$200(Lc8/WPp;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    invoke-static {v4}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 102
    .end local v0    # "buff":[B
    .end local v1    # "cnt":I
    .end local v3    # "total":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    if-eqz v5, :cond_6

    .line 103
    :try_start_6
    iget-object v5, p0, Lc8/TPp;->val$inputStream:Lc8/PM;

    invoke-interface {v5}, Lc8/PM;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 106
    :cond_6
    :goto_6
    iget-object v5, p0, Lc8/TPp;->this$0:Lc8/WPp;

    invoke-static {v5}, Lc8/WPp;->access$200(Lc8/WPp;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    invoke-static {v5}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 114
    :cond_7
    :try_start_7
    iget-object v4, p0, Lc8/TPp;->this$0:Lc8/WPp;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lc8/WPp;->access$502(Lc8/WPp;Z)Z

    goto :goto_4

    .line 116
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    :catch_1
    move-exception v5

    goto :goto_6

    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buff":[B
    .restart local v1    # "cnt":I
    .restart local v3    # "total":I
    :catch_3
    move-exception v4

    goto :goto_5
.end method
