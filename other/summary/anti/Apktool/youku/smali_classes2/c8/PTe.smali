.class public Lc8/PTe;
.super Lc8/rTe;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/STe;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/STe;

.field final synthetic val$newStream:Lc8/YTe;


# direct methods
.method varargs constructor <init>(Lc8/STe;Ljava/lang/String;[Ljava/lang/Object;Lc8/YTe;)V
    .locals 0
    .param p1, "this$1"    # Lc8/STe;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 672
    iput-object p1, p0, Lc8/PTe;->this$1:Lc8/STe;

    iput-object p4, p0, Lc8/PTe;->val$newStream:Lc8/YTe;

    invoke-direct {p0, p2, p3}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 675
    :try_start_0
    iget-object v1, p0, Lc8/PTe;->this$1:Lc8/STe;

    iget-object v1, v1, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1}, Lc8/TTe;->access$2000(Lc8/TTe;)Lc8/OTe;

    move-result-object v1

    iget-object v2, p0, Lc8/PTe;->val$newStream:Lc8/YTe;

    invoke-virtual {v1, v2}, Lc8/OTe;->onStream(Lc8/YTe;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lc8/pTe;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/PTe;->this$1:Lc8/STe;

    iget-object v4, v4, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v4}, Lc8/TTe;->access$1100(Lc8/TTe;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    :try_start_1
    iget-object v1, p0, Lc8/PTe;->val$newStream:Lc8/YTe;

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Lc8/YTe;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 683
    :catch_1
    move-exception v1

    goto :goto_0
.end method
