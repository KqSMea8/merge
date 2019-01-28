.class public Lc8/dJd;
.super Ljava/lang/Object;
.source "ANImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iJd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iJd;


# direct methods
.method constructor <init>(Lc8/iJd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iJd;

    .prologue
    .line 328
    iput-object p1, p0, Lc8/dJd;->this$0:Lc8/iJd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 331
    iget-object v2, p0, Lc8/dJd;->this$0:Lc8/iJd;

    invoke-static {v2}, Lc8/iJd;->access$200(Lc8/iJd;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/eJd;

    .line 332
    .local v0, "bir":Lc8/eJd;
    invoke-static {v0}, Lc8/eJd;->access$300(Lc8/eJd;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/gJd;

    .line 333
    .local v1, "container":Lc8/gJd;
    invoke-static {v1}, Lc8/gJd;->access$400(Lc8/gJd;)Lc8/hJd;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 336
    invoke-virtual {v0}, Lc8/eJd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 337
    invoke-static {v0}, Lc8/eJd;->access$000(Lc8/eJd;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/gJd;->access$502(Lc8/gJd;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 338
    invoke-static {v1}, Lc8/gJd;->access$400(Lc8/gJd;)Lc8/hJd;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lc8/hJd;->onResponse(Lc8/gJd;Z)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-static {v1}, Lc8/gJd;->access$400(Lc8/gJd;)Lc8/hJd;

    move-result-object v4

    invoke-virtual {v0}, Lc8/eJd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v5

    invoke-interface {v4, v5}, Lc8/hJd;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 344
    .end local v0    # "bir":Lc8/eJd;
    .end local v1    # "container":Lc8/gJd;
    :cond_3
    iget-object v2, p0, Lc8/dJd;->this$0:Lc8/iJd;

    invoke-static {v2}, Lc8/iJd;->access$200(Lc8/iJd;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 345
    iget-object v2, p0, Lc8/dJd;->this$0:Lc8/iJd;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/iJd;->access$602(Lc8/iJd;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 346
    return-void
.end method
