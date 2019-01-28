.class public Lc8/mWo;
.super Ljava/lang/Object;
.source "YKDiv.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nWo;->updateProperties(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nWo;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/nWo;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nWo;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/mWo;->this$0:Lc8/nWo;

    iput-object p2, p0, Lc8/mWo;->val$props:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v5, p0, Lc8/mWo;->val$props:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lc8/mWo;->val$props:Ljava/util/Map;

    const-string/jumbo v6, "track"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    iget-object v5, p0, Lc8/mWo;->val$props:Ljava/util/Map;

    const-string/jumbo v6, "track"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    .local v4, "track":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    const-class v5, Lcom/youku/weex/utils/ReportExtend;

    invoke-static {v3, v5}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/weex/utils/ReportExtend;

    .line 51
    .local v2, "report":Lcom/youku/weex/utils/ReportExtend;
    const-string/jumbo v5, "spm"

    iget-object v6, v2, Lcom/youku/weex/utils/ReportExtend;->spm:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v5, "scm"

    iget-object v6, v2, Lcom/youku/weex/utils/ReportExtend;->scm:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v5, "track_info"

    iget-object v6, v2, Lcom/youku/weex/utils/ReportExtend;->trackInfo:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v5, "utparam"

    iget-object v6, v2, Lcom/youku/weex/utils/ReportExtend;->utParam:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2    # "report":Lcom/youku/weex/utils/ReportExtend;
    :goto_0
    const-string/jumbo v5, "Weex"

    invoke-static {p1, v1, v5}, Lc8/RMg;->setTrackerTagParam(Landroid/view/View;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 61
    .end local v1    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "track":Ljava/lang/Object;
    :cond_0
    return-void

    .line 55
    .restart local v1    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "track":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/ut/mini/UTTracker;->setExposureTag(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    return-void
.end method
