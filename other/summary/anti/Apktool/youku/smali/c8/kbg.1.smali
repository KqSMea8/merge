.class public Lc8/kbg;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Lc8/qbg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tbg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tbg;


# direct methods
.method constructor <init>(Lc8/tbg;)V
    .locals 0

    .prologue
    .line 173
    .local p0, "this":Lc8/kbg;, "Lcom/taobao/weex/ui/component/WXComponent.1;"
    iput-object p1, p0, Lc8/kbg;->this$0:Lc8/tbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .locals 7

    .prologue
    .local p0, "this":Lc8/kbg;, "Lcom/taobao/weex/ui/component/WXComponent.1;"
    const/4 v6, 0x1

    .line 176
    invoke-static {v6}, Lc8/ogg;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 177
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x4

    invoke-static {v3}, Lc8/ogg;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 178
    .local v2, "position":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 179
    .local v0, "location":[I
    iget-object v3, p0, Lc8/kbg;->this$0:Lc8/tbg;

    iget-object v3, v3, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 180
    const-string/jumbo v3, "x"

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    iget-object v5, p0, Lc8/kbg;->this$0:Lc8/tbg;

    invoke-static {v5}, Lc8/tbg;->access$000(Lc8/tbg;)Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v5

    invoke-static {v4, v5}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v3, "y"

    aget v4, v0, v6

    int-to-float v4, v4

    iget-object v5, p0, Lc8/kbg;->this$0:Lc8/tbg;

    invoke-static {v5}, Lc8/tbg;->access$000(Lc8/tbg;)Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v5

    invoke-static {v4, v5}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v3, "width"

    iget-object v4, p0, Lc8/kbg;->this$0:Lc8/tbg;

    invoke-static {v4}, Lc8/tbg;->access$100(Lc8/tbg;)Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getLayoutWidth()F

    move-result v4

    iget-object v5, p0, Lc8/kbg;->this$0:Lc8/tbg;

    invoke-static {v5}, Lc8/tbg;->access$000(Lc8/tbg;)Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v5

    invoke-static {v4, v5}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v3, "height"

    iget-object v4, p0, Lc8/kbg;->this$0:Lc8/tbg;

    invoke-static {v4}, Lc8/tbg;->access$100(Lc8/tbg;)Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getLayoutHeight()F

    move-result v4

    iget-object v5, p0, Lc8/kbg;->this$0:Lc8/tbg;

    invoke-static {v5}, Lc8/tbg;->access$000(Lc8/tbg;)Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v5

    invoke-static {v4, v5}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v3, "position"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v3, p0, Lc8/kbg;->this$0:Lc8/tbg;

    const-string/jumbo v4, "click"

    invoke-virtual {v3, v4, v1}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 186
    return-void
.end method
