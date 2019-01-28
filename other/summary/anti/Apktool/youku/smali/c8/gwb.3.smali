.class public Lc8/gwb;
.super Ljava/lang/Object;
.source "WeexPageFragment.java"

# interfaces
.implements Lc8/LUf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwb;->initSDKInstance(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jwb;


# direct methods
.method constructor <init>(Lc8/jwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jwb;

    .prologue
    .line 716
    iput-object p1, p0, Lc8/gwb;->this$0:Lc8/jwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lc8/tbg;)V
    .locals 0
    .param p1, "wxComponent"    # Lc8/tbg;

    .prologue
    .line 721
    return-void
.end method

.method public onPreDestory(Lc8/tbg;)V
    .locals 0
    .param p1, "wxComponent"    # Lc8/tbg;

    .prologue
    .line 726
    return-void
.end method

.method public onViewCreated(Lc8/tbg;Landroid/view/View;)V
    .locals 4
    .param p1, "wxComponent"    # Lc8/tbg;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 730
    iget-object v2, p0, Lc8/gwb;->this$0:Lc8/jwb;

    invoke-static {v2}, Lc8/jwb;->access$100(Lc8/jwb;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v2

    iget-object v3, p0, Lc8/gwb;->this$0:Lc8/jwb;

    invoke-virtual {v3}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ut/mini/internal/UTTeamWork;->getExposureViewHandler(Landroid/app/Activity;)Lcom/ut/mini/internal/ExposureViewHandle;

    move-result-object v0

    .line 736
    .local v0, "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    if-eqz v0, :cond_0

    .line 737
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    iget-object v3, p0, Lc8/gwb;->this$0:Lc8/jwb;

    invoke-virtual {v3}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTPageHitHelper;->getPageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/ut/mini/internal/ExposureViewHandle;->isExposureView(Ljava/lang/String;Landroid/view/View;)Z

    move-result v1

    .line 738
    .local v1, "isExposureView":Z
    if-eqz v1, :cond_0

    .line 739
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ut/mini/internal/UTTeamWork;->setExposureTagForWeex(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    .end local v0    # "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    .end local v1    # "isExposureView":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
