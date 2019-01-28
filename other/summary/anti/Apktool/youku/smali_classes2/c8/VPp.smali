.class public Lc8/VPp;
.super Lc8/LPp;
.source "NetworkListenerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WPp;->onFinishTask(Lc8/nM;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WPp;

.field final synthetic val$byteData:[B


# direct methods
.method constructor <init>(Lc8/WPp;[B)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lc8/VPp;->this$0:Lc8/WPp;

    iput-object p2, p0, Lc8/VPp;->val$byteData:[B

    invoke-direct {p0}, Lc8/LPp;-><init>()V

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lc8/VPp;->val$byteData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/VPp;->val$byteData:[B

    array-length v0, v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public contentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lc8/VPp;->this$0:Lc8/WPp;

    invoke-static {v0}, Lc8/WPp;->access$700(Lc8/WPp;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Content-Type"

    invoke-static {v0, v1}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lc8/VPp;->val$byteData:[B

    return-object v0
.end method
