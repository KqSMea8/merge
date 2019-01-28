.class public Lc8/Vcg;
.super Lc8/Cv;
.source "BasicListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xcg;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mFirstEvent:Z

.field private offsetXCorrection:I

.field private offsetYCorrection:I

.field final synthetic this$0:Lc8/Xcg;


# direct methods
.method constructor <init>(Lc8/Xcg;)V
    .locals 1

    .prologue
    .line 1219
    .local p0, "this":Lc8/Vcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.6;"
    iput-object p1, p0, Lc8/Vcg;->this$0:Lc8/Xcg;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Vcg;->mFirstEvent:Z

    return-void
.end method


# virtual methods
.method public onScrolled(Lc8/Rv;II)V
    .locals 5
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1225
    .local p0, "this":Lc8/Vcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.6;"
    invoke-super {p0, p1, p2, p3}, Lc8/Cv;->onScrolled(Lc8/Rv;II)V

    .line 1231
    invoke-virtual {p1}, Lc8/Rv;->computeHorizontalScrollOffset()I

    move-result v1

    .line 1232
    .local v1, "offsetX":I
    invoke-virtual {p1}, Lc8/Rv;->computeVerticalScrollOffset()I

    move-result v2

    .line 1234
    .local v2, "offsetY":I
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1235
    iput v1, p0, Lc8/Vcg;->offsetXCorrection:I

    .line 1236
    iput v2, p0, Lc8/Vcg;->offsetYCorrection:I

    .line 1237
    const/4 v1, 0x0

    .line 1238
    const/4 v2, 0x0

    .line 1243
    :goto_0
    iget-object v3, p0, Lc8/Vcg;->this$0:Lc8/Xcg;

    invoke-virtual {v3}, Lc8/Xcg;->getScrollStartEndHelper()Lc8/Gcg;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lc8/Gcg;->onScrolled(II)V

    .line 1244
    iget-object v3, p0, Lc8/Vcg;->this$0:Lc8/Xcg;

    invoke-virtual {v3}, Lc8/Xcg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v3

    const-string/jumbo v4, "scroll"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1261
    :cond_0
    :goto_1
    return-void

    .line 1240
    :cond_1
    iget v3, p0, Lc8/Vcg;->offsetXCorrection:I

    sub-int/2addr v1, v3

    .line 1241
    iget v3, p0, Lc8/Vcg;->offsetYCorrection:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 1247
    :cond_2
    iget-boolean v3, p0, Lc8/Vcg;->mFirstEvent:Z

    if-eqz v3, :cond_3

    .line 1249
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/Vcg;->mFirstEvent:Z

    goto :goto_1

    .line 1253
    :cond_3
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 1254
    .local v0, "layoutManager":Lc8/xv;
    invoke-virtual {v0}, Lc8/xv;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1258
    iget-object v3, p0, Lc8/Vcg;->this$0:Lc8/Xcg;

    invoke-static {v3, v1, v2}, Lc8/Xcg;->access$400(Lc8/Xcg;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    iget-object v3, p0, Lc8/Vcg;->this$0:Lc8/Xcg;

    invoke-static {v3, p1, v1, v2}, Lc8/Xcg;->access$500(Lc8/Xcg;Lc8/Rv;II)V

    goto :goto_1
.end method
