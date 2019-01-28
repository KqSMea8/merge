.class public Lc8/lxb;
.super Ljava/lang/Object;
.source "NetworkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nxb;->interceptResponse([BLc8/Twb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nxb;

.field final synthetic val$data:[B

.field final synthetic val$descriptor:Lc8/Twb;


# direct methods
.method constructor <init>(Lc8/nxb;[BLc8/Twb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nxb;

    .prologue
    .line 201
    iput-object p1, p0, Lc8/lxb;->this$0:Lc8/nxb;

    iput-object p2, p0, Lc8/lxb;->val$data:[B

    iput-object p3, p0, Lc8/lxb;->val$descriptor:Lc8/Twb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 204
    iget-object v0, p0, Lc8/lxb;->val$data:[B

    if-eqz v0, :cond_0

    .line 205
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lc8/lxb;->val$data:[B

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 206
    .local v4, "inputStream":Ljava/io/InputStream;
    iget-object v0, p0, Lc8/lxb;->this$0:Lc8/nxb;

    invoke-static {v0}, Lc8/nxb;->access$200(Lc8/nxb;)Lc8/Uwb;

    move-result-object v0

    iget-object v1, p0, Lc8/lxb;->this$0:Lc8/nxb;

    invoke-static {v1}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/lxb;->val$descriptor:Lc8/Twb;

    .line 207
    invoke-virtual {v2}, Lc8/Twb;->contentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/lxb;->val$descriptor:Lc8/Twb;

    .line 208
    invoke-virtual {v3}, Lc8/Twb;->contentEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 206
    invoke-virtual/range {v0 .. v5}, Lc8/Uwb;->interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    .line 212
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    iget-object v0, p0, Lc8/lxb;->this$0:Lc8/nxb;

    invoke-static {v0}, Lc8/nxb;->access$200(Lc8/nxb;)Lc8/Uwb;

    move-result-object v0

    iget-object v1, p0, Lc8/lxb;->this$0:Lc8/nxb;

    invoke-static {v1}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Uwb;->responseReadFinished(Ljava/lang/String;)V

    .line 213
    return-void
.end method
