.class public Lc8/dag;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lc8/fag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hag;->sendHttp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hag;

.field final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/hag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lc8/dag;->this$0:Lc8/hag;

    iput-object p2, p0, Lc8/dag;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lc8/SXf;Ljava/util/Map;)V
    .locals 5
    .param p1, "response"    # Lc8/SXf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SXf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/dag;->val$callback:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/dag;->this$0:Lc8/hag;

    iget-object v0, v0, Lc8/hag;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v1

    iget-object v0, p0, Lc8/dag;->this$0:Lc8/hag;

    iget-object v0, v0, Lc8/hag;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/dag;->val$callback:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lc8/SXf;->originalData:[B

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "{}"

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void

    .line 96
    :cond_2
    iget-object v4, p1, Lc8/SXf;->originalData:[B

    if-eqz p2, :cond_3

    const-string/jumbo v0, "Content-Type"

    invoke-static {p2, v0}, Lc8/hag;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v4, v0}, Lc8/hag;->readAsString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method
