.class public Lc8/ddo;
.super Ljava/lang/Object;
.source "JSBProtocolHandler.java"

# interfaces
.implements Lc8/Eco;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fdo;->flushMessageQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fdo;


# direct methods
.method constructor <init>(Lc8/fdo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fdo;

    .prologue
    .line 249
    iput-object p1, p0, Lc8/ddo;->this$0:Lc8/fdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errno"    # I
    .param p2, "errmsg"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 256
    :try_start_0
    invoke-static {p3}, Lc8/Aco;->toArrayList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 261
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseuikit/webview/interaction/Message;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 268
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseuikit/webview/interaction/Message;>;"
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseuikit/webview/interaction/Message;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 265
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Aco;

    .line 266
    .local v3, "m":Lc8/Aco;
    iget-object v4, p0, Lc8/ddo;->this$0:Lc8/fdo;

    invoke-static {v4, v3}, Lc8/fdo;->access$000(Lc8/fdo;Lc8/Aco;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
