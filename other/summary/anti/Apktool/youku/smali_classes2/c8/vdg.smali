.class public Lc8/vdg;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bdg;->initComponentHostView(Landroid/content/Context;)Lc8/Ifg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bdg;


# direct methods
.method constructor <init>(Lc8/Bdg;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 317
    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-static {v2}, Lc8/Bdg;->access$100(Lc8/Bdg;)Lc8/rdg;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-static {v2}, Lc8/Bdg;->access$100(Lc8/Bdg;)Lc8/rdg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/rdg;->getStickyPositions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 319
    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-static {v2}, Lc8/Bdg;->access$200(Lc8/Bdg;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-static {v2}, Lc8/Bdg;->access$200(Lc8/Bdg;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 321
    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-virtual {v2, v1}, Lc8/Bdg;->getSourceTemplate(I)Lc8/jdg;

    move-result-object v0

    .line 322
    .local v0, "cell":Lc8/jdg;
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lc8/jdg;->isSticky()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-static {v2}, Lc8/Bdg;->access$100(Lc8/Bdg;)Lc8/rdg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/rdg;->getStickyPositions()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "cell":Lc8/jdg;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-virtual {v2}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-virtual {v2}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Ifg;

    invoke-virtual {v2}, Lc8/Ifg;->getRecyclerViewBaseAdapter()Lc8/ifg;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Lc8/vdg;->this$0:Lc8/Bdg;

    invoke-virtual {v2}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Ifg;

    invoke-virtual {v2}, Lc8/Ifg;->getRecyclerViewBaseAdapter()Lc8/ifg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ifg;->notifyDataSetChanged()V

    .line 334
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    const-string/jumbo v2, "WXRecyclerTemplateList"

    const-string/jumbo v3, "WXTemplateList notifyDataSetChanged"

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_3
    return-void
.end method
