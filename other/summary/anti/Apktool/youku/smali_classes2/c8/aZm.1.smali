.class public Lc8/aZm;
.super Ljava/lang/Object;
.source "PopLayerWeexView.java"

# interfaces
.implements Lc8/NUf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dZm;->init(Landroid/content/Context;Lc8/lYb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dZm;


# direct methods
.method constructor <init>(Lc8/dZm;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dZm;

    .prologue
    .line 86
    iput-object p1, p0, Lc8/aZm;->this$0:Lc8/dZm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string/jumbo v0, "WeexTrackController.weexInstance.onException: {%s,%s}."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onRefreshSuccess(Lc8/nVf;II)V
    .locals 4
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 113
    const-string/jumbo v0, "WeexTrackController.weexInstance.onRefreshSuccess: {%s,%s}."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public onRenderSuccess(Lc8/nVf;II)V
    .locals 4
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 107
    const-string/jumbo v0, "WeexTrackController.weexInstance.onRenderSuccess: {%s,%s}."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lc8/aZm;->this$0:Lc8/dZm;

    invoke-virtual {v0}, Lc8/dZm;->displayMe()V

    .line 109
    return-void
.end method

.method public onViewCreated(Lc8/nVf;Landroid/view/View;)V
    .locals 5
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 91
    :try_start_0
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 92
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 93
    .local v2, "root":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "content":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "content":Landroid/view/View;
    .end local v2    # "root":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    iget-object v3, p0, Lc8/aZm;->this$0:Lc8/dZm;

    invoke-static {v3, p2}, Lc8/dZm;->access$002(Lc8/dZm;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v3, "WeexTrackController.weexInstance.onViewCreated."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method
