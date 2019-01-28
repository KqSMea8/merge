.class public final Lc8/QYf;
.super Ljava/lang/Object;
.source "WXSwitchDomObject.java"

# interfaces
.implements Lc8/BZf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RYf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(Lc8/CZf;FLc8/HZf;)V
    .locals 7
    .param p1, "node"    # Lc8/CZf;
    .param p2, "width"    # F
    .param p3, "measureOutput"    # Lc8/HZf;

    .prologue
    .line 35
    :try_start_0
    check-cast p1, Lc8/HYf;

    .end local p1    # "node":Lc8/CZf;
    invoke-virtual {p1}, Lc8/HYf;->getDomContext()Lc8/pYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/pYf;->getUIContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Lc8/zeg;

    invoke-direct {v4, v0}, Lc8/zeg;-><init>(Landroid/content/Context;)V

    .line 38
    .local v4, "wxSwitchView":Lc8/zeg;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 39
    .local v2, "heightSpec":I
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 44
    .local v3, "widthSpec":I
    :goto_0
    invoke-virtual {v4, v3, v2}, Lc8/zeg;->measure(II)V

    .line 45
    invoke-virtual {v4}, Lc8/zeg;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p3, Lc8/HZf;->width:F

    .line 46
    invoke-virtual {v4}, Lc8/zeg;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p3, Lc8/HZf;->height:F

    .line 50
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "heightSpec":I
    .end local v3    # "widthSpec":I
    .end local v4    # "wxSwitchView":Lc8/zeg;
    :goto_1
    return-void

    .line 42
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "heightSpec":I
    .restart local v4    # "wxSwitchView":Lc8/zeg;
    :cond_0
    float-to-int v5, p2

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3    # "widthSpec":I
    goto :goto_0

    .line 47
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "heightSpec":I
    .end local v3    # "widthSpec":I
    .end local v4    # "wxSwitchView":Lc8/zeg;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lc8/HYf;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
