.class public Lc8/Gbg;
.super Ljava/lang/Object;
.source "WXImage.java"

# interfaces
.implements Lc8/FXf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kbg;->setRemoteSrc(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Kbg;


# direct methods
.method constructor <init>(Lc8/Kbg;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lc8/Gbg;->this$0:Lc8/Kbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "result"    # Z
    .param p4, "extra"    # Ljava/util/Map;

    .prologue
    const/4 v4, 0x0

    .line 309
    iget-object v2, p0, Lc8/Gbg;->this$0:Lc8/Kbg;

    invoke-virtual {v2}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Gbg;->this$0:Lc8/Kbg;

    invoke-virtual {v2}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    const-string/jumbo v3, "load"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 312
    .local v1, "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    instance-of v2, p2, Lc8/Jbg;

    if-eqz v2, :cond_1

    .line 313
    const-string/jumbo v3, "naturalWidth"

    move-object v2, p2

    check-cast v2, Lc8/Jbg;

    invoke-interface {v2}, Lc8/Jbg;->getNaturalWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v2, "naturalHeight"

    check-cast p2, Lc8/Jbg;

    .end local p2    # "imageView":Landroid/widget/ImageView;
    invoke-interface {p2}, Lc8/Jbg;->getNaturalHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_0
    iget-object v2, p0, Lc8/Gbg;->this$0:Lc8/Kbg;

    invoke-virtual {v2}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Gbg;->this$0:Lc8/Kbg;

    const-string/jumbo v3, "load"

    invoke-virtual {v2, v3}, Lc8/Kbg;->containsEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const-string/jumbo v2, "success"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v2, "size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Lc8/Gbg;->this$0:Lc8/Kbg;

    const-string/jumbo v3, "load"

    invoke-virtual {v2, v3, v0}, Lc8/Kbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 326
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 316
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p2    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const-string/jumbo v2, "naturalWidth"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v2, "naturalHeight"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
