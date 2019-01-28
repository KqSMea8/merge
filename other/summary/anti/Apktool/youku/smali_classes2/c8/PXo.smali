.class public Lc8/PXo;
.super Ljava/lang/Object;
.source "YoukuTrackerModule.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QXo;->doAutoTrack(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QXo;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$module:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/QXo;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/QXo;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/PXo;->this$0:Lc8/QXo;

    iput-object p2, p0, Lc8/PXo;->val$map:Ljava/util/Map;

    iput-object p3, p0, Lc8/PXo;->val$module:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lc8/PXo;->val$map:Ljava/util/Map;

    const-string/jumbo v4, "track"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/youku/weex/utils/ReportExtend;

    invoke-static {v3, v4}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/weex/utils/ReportExtend;

    .line 74
    .local v2, "report":Lcom/youku/weex/utils/ReportExtend;
    const-string/jumbo v3, "spm"

    iget-object v4, v2, Lcom/youku/weex/utils/ReportExtend;->spm:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v3, "scm"

    iget-object v4, v2, Lcom/youku/weex/utils/ReportExtend;->scm:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v3, "track_info"

    iget-object v4, v2, Lcom/youku/weex/utils/ReportExtend;->trackInfo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v3, "utparam"

    iget-object v4, v2, Lcom/youku/weex/utils/ReportExtend;->utParam:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v2    # "report":Lcom/youku/weex/utils/ReportExtend;
    :goto_0
    iget-object v3, p0, Lc8/PXo;->val$module:Ljava/lang/Object;

    if-nez v3, :cond_0

    const-string/jumbo v3, "weex"

    :goto_1
    invoke-static {p1, v1, v3}, Lc8/RMg;->setTrackerTagParam(Landroid/view/View;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 82
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lc8/PXo;->val$module:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/ut/mini/UTTracker;->setExposureTag(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    return-void
.end method
