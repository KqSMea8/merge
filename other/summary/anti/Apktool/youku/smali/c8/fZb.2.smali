.class public Lc8/fZb;
.super Ljava/lang/Object;
.source "PopLayerConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/poplayerconsole/PopLayerConsole;->getDropDownItems(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lc8/fZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 212
    :try_start_0
    invoke-static {}, Lc8/ZYb;->getCurrentStatus()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "page"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/poplayer/utils/Monitor$Info;

    iget-object v4, v4, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-static {v4}, Lc8/mZb;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 214
    .local v0, "curActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 215
    iget-object v4, p0, Lc8/fZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-virtual {v4}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "Current Activity is null"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 237
    .end local v0    # "curActivity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 220
    .restart local v0    # "curActivity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$id;->poplayer_console_selector_touch_interceptor_id:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 221
    .local v2, "intercepter":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 223
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v0    # "curActivity":Landroid/app/Activity;
    .end local v2    # "intercepter":Landroid/view/View;
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PopLayer"

    const-string/jumbo v5, "Toggle_view_tracker.error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "curActivity":Landroid/app/Activity;
    .restart local v2    # "intercepter":Landroid/view/View;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/widget/FrameLayout;

    .end local v2    # "intercepter":Landroid/view/View;
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 229
    .restart local v2    # "intercepter":Landroid/view/View;
    const/high16 v4, 0x44ff0000    # 2040.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    sget v4, Lcom/youku/phone/R$id;->poplayer_console_selector_touch_interceptor_id:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 231
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v4, Lc8/iZb;

    iget-object v5, p0, Lc8/fZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lc8/iZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/aZb;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
