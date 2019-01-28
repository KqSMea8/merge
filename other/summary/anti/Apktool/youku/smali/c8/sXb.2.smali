.class public Lc8/sXb;
.super Ljava/lang/Object;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Query"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uXb;


# direct methods
.method constructor <init>(Lc8/uXb;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lc8/sXb;->this$0:Lc8/uXb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method findCanvasViewModel(Lc8/yXb;)Lc8/nXb;
    .locals 4
    .param p1, "request"    # Lc8/yXb;

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-virtual {p1}, Lc8/yXb;->getAttachActivity()Landroid/app/Activity;

    move-result-object v0

    .line 314
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lc8/yXb;->getDomian()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 315
    iget-object v2, p0, Lc8/sXb;->this$0:Lc8/uXb;

    invoke-static {v2}, Lc8/uXb;->access$000(Lc8/uXb;)Lc8/nXb;

    move-result-object v1

    .line 330
    :cond_0
    :goto_0
    return-object v1

    .line 316
    :cond_1
    invoke-virtual {p1}, Lc8/yXb;->getDomian()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 317
    if-eqz v0, :cond_0

    .line 319
    iget-object v2, p0, Lc8/sXb;->this$0:Lc8/uXb;

    iget-object v2, v2, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {p1}, Lc8/yXb;->getAttachActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/sXb;->findPageCVMIfExist(Landroid/app/Activity;)Lc8/vXb;

    move-result-object v1

    .local v1, "matchVM":Lc8/nXb;
    goto :goto_0

    .line 320
    .end local v1    # "matchVM":Lc8/nXb;
    :cond_2
    invoke-virtual {p1}, Lc8/yXb;->getDomian()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 321
    invoke-virtual {p1}, Lc8/yXb;->getHostView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 322
    new-instance v2, Lcom/alibaba/poplayer/exception/PoplayerException;

    const-string/jumbo v3, "This request not has HostView but Domain is VIEW."

    invoke-direct {v2, v3}, Lcom/alibaba/poplayer/exception/PoplayerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_3
    if-eqz v0, :cond_0

    .line 326
    iget-object v2, p0, Lc8/sXb;->this$0:Lc8/uXb;

    iget-object v2, v2, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {p1}, Lc8/yXb;->getAttachActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/sXb;->findViewCVMIfExist(Landroid/app/Activity;)Lc8/zXb;

    move-result-object v1

    .restart local v1    # "matchVM":Lc8/nXb;
    goto :goto_0

    .line 328
    .end local v1    # "matchVM":Lc8/nXb;
    :cond_4
    new-instance v2, Lcom/alibaba/poplayer/exception/PoplayerException;

    const-string/jumbo v3, "UNKNOW Domain."

    invoke-direct {v2, v3}, Lcom/alibaba/poplayer/exception/PoplayerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method findContainer(Landroid/app/Activity;)Lc8/PXb;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, -0x1

    .line 349
    iget-object v3, p0, Lc8/sXb;->this$0:Lc8/uXb;

    iget-object v3, v3, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v3, p1}, Lc8/sXb;->findContainerIfExist(Landroid/app/Activity;)Lc8/PXb;

    move-result-object v1

    .local v1, "container":Lc8/PXb;
    if-eqz v1, :cond_0

    .line 366
    .end local v1    # "container":Lc8/PXb;
    :goto_0
    return-object v1

    .line 352
    .restart local v1    # "container":Lc8/PXb;
    :cond_0
    sget-boolean v3, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 353
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    .line 355
    :cond_1
    new-instance v2, Lc8/PXb;

    invoke-direct {v2, p1}, Lc8/PXb;-><init>(Landroid/content/Context;)V

    .line 356
    .local v2, "viewContainer":Lc8/PXb;
    sget v3, Lcom/youku/phone/R$id;->layermanager_penetrate_webview_container_id:I

    invoke-virtual {v2, v3}, Lc8/PXb;->setId(I)V

    .line 357
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/PXb;->setVisibility(I)V

    .line 359
    sget-boolean v3, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 360
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 364
    .local v0, "addWindow":Landroid/view/Window;
    :goto_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-virtual {v2}, Lc8/PXb;->bringToFront()V

    move-object v1, v2

    .line 366
    goto :goto_0

    .line 362
    .end local v0    # "addWindow":Landroid/view/Window;
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .restart local v0    # "addWindow":Landroid/view/Window;
    goto :goto_1
.end method

.method findContainerIfExist(Landroid/app/Activity;)Lc8/PXb;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 334
    sget-boolean v0, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$id;->layermanager_penetrate_webview_container_id:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/PXb;

    return-object v0
.end method

.method findContentView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 341
    sget-boolean v0, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    .line 344
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findPageCVMIfExist(Landroid/app/Activity;)Lc8/vXb;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0, p1}, Lc8/sXb;->findContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, "rootView":Landroid/view/View;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 375
    :goto_0
    return-object v0

    .line 374
    :cond_0
    sget v3, Lcom/youku/phone/R$id;->layermanager_viewmodel_page_id:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    check-cast v0, Lc8/vXb;

    goto :goto_0
.end method

.method findViewCVMIfExist(Landroid/app/Activity;)Lc8/zXb;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-virtual {p0, p1}, Lc8/sXb;->findContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, "rootView":Landroid/view/View;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 383
    :goto_0
    return-object v0

    .line 382
    :cond_0
    sget v3, Lcom/youku/phone/R$id;->layermanager_viewmodel_view_id:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 383
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    check-cast v0, Lc8/zXb;

    goto :goto_0
.end method
