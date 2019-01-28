.class public Lc8/iwb;
.super Ljava/lang/Object;
.source "WeexPageFragment.java"

# interfaces
.implements Lc8/NUf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WXRenderListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jwb;


# direct methods
.method constructor <init>(Lc8/jwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jwb;

    .prologue
    .line 863
    iput-object p1, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 952
    const-string/jumbo v2, "WeexPageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "into--[onException] errCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const/4 v1, 0x0

    .line 954
    .local v1, "shouldDegrade":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "|"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    const-string/jumbo v2, "|"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "codeType":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    const/4 v1, 0x1

    .line 969
    .end local v0    # "codeType":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v2, v5}, Lc8/jwb;->access$800(Lc8/jwb;Z)V

    .line 970
    iget-object v2, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-virtual {v2, p1, p2, p3}, Lc8/jwb;->onWXException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v2, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v2}, Lc8/jwb;->access$500(Lc8/jwb;)Lc8/hwb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 972
    iget-object v2, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v2}, Lc8/jwb;->access$500(Lc8/jwb;)Lc8/hwb;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2, p3}, Lc8/hwb;->onException(Lc8/nVf;ZLjava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_1
    return-void

    .line 959
    :cond_2
    const-string/jumbo v2, "wx_create_instance_error"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "createInstance fail"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 960
    const/4 v1, 0x1

    goto :goto_0

    .line 961
    :cond_3
    const-string/jumbo v2, "wx_user_intercept_error"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "degradeToH5"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 962
    const/4 v1, 0x1

    goto :goto_0

    .line 963
    :cond_4
    const-string/jumbo v2, "wx_network_error"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 964
    iget-object v2, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v2}, Lc8/jwb;->access$900(Lc8/jwb;)V

    .line 965
    iget-object v2, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v2}, Lc8/jwb;->access$000(Lc8/jwb;)Lc8/cwb;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5!"

    :goto_1
    invoke-virtual {v3, v2}, Lc8/cwb;->show(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p3

    goto :goto_1

    .line 966
    :cond_6
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    invoke-virtual {p1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p3, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onRefreshSuccess(Lc8/nVf;II)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 938
    const-string/jumbo v0, "WeexPageFragment"

    const-string/jumbo v1, "into--[onRefreshSuccess]"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public onRenderSuccess(Lc8/nVf;II)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 930
    const-string/jumbo v0, "WeexPageFragment"

    const-string/jumbo v1, "into--[onRenderSuccess]"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v0}, Lc8/jwb;->access$500(Lc8/jwb;)Lc8/hwb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v0}, Lc8/jwb;->access$500(Lc8/jwb;)Lc8/hwb;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/hwb;->onRenderSuccess(Lc8/nVf;II)V

    .line 934
    :cond_0
    return-void
.end method

.method public onViewCreated(Lc8/nVf;Landroid/view/View;)V
    .locals 11
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 866
    const-string/jumbo v7, "WeexPageFragment"

    const-string/jumbo v8, "into--[onViewCreated]"

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$200(Lc8/jwb;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 869
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$300(Lc8/jwb;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 871
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7, p2}, Lc8/jwb;->access$400(Lc8/jwb;Landroid/view/View;)V

    .line 873
    move-object v6, p2

    .line 874
    .local v6, "wrappedView":Landroid/view/View;
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$500(Lc8/jwb;)Lc8/hwb;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 875
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$500(Lc8/jwb;)Lc8/hwb;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lc8/hwb;->onCreateView(Lc8/nVf;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 877
    :cond_0
    sget v7, Lcom/youku/phone/R$id;->weex_render_view:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 878
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$200(Lc8/jwb;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_6

    .line 879
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lc8/jwb;->access$602(Lc8/jwb;Z)Z

    .line 880
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$200(Lc8/jwb;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 893
    .end local v6    # "wrappedView":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$700(Lc8/jwb;)Lc8/Jyb;

    move-result-object v7

    if-nez v7, :cond_2

    .line 894
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    new-instance v8, Lc8/Jyb;

    invoke-virtual {p1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p2}, Lc8/Jyb;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v7, v8}, Lc8/jwb;->access$702(Lc8/jwb;Lc8/Jyb;)Lc8/Jyb;

    .line 897
    :cond_2
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7, v10}, Lc8/jwb;->access$800(Lc8/jwb;Z)V

    .line 898
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-virtual {v7, p1, p2}, Lc8/jwb;->onWXViewCreated(Lc8/nVf;Landroid/view/View;)V

    .line 899
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$500(Lc8/jwb;)Lc8/hwb;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 900
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$500(Lc8/jwb;)Lc8/hwb;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lc8/hwb;->onViewCreated(Lc8/nVf;Landroid/view/View;)V

    .line 903
    :cond_3
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v7

    invoke-virtual {v7}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v1

    .line 904
    .local v1, "configAdapter":Lc8/Hob;
    if-eqz v1, :cond_4

    .line 905
    const-string/jumbo v7, "weexcache_cfg"

    const-string/jumbo v8, "preload"

    const-string/jumbo v9, "true"

    invoke-interface {v1, v7, v8, v9}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "isPreload":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 907
    invoke-static {}, Lc8/Awb;->getInstance()Lc8/Awb;

    move-result-object v7

    invoke-virtual {v7, v10}, Lc8/Awb;->tryToPutZCachePackageIntoMemroyCache(Z)V

    .line 911
    .end local v2    # "isPreload":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$100(Lc8/jwb;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 913
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    iget-object v7, v7, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v7}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v4

    .line 915
    .local v4, "rootCom":Lc8/tbg;
    if-eqz v4, :cond_5

    .line 916
    invoke-virtual {v4}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v7

    invoke-interface {v7}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    .line 917
    .local v0, "attrs":Lc8/xYf;
    const-string/jumbo v7, "spmId"

    invoke-virtual {v0, v7}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 918
    .local v5, "spmAB":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 919
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 920
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "spm-cnt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".0.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v7

    iget-object v8, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-virtual {v8}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    .line 926
    .end local v0    # "attrs":Lc8/xYf;
    .end local v1    # "configAdapter":Lc8/Hob;
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "rootCom":Lc8/tbg;
    .end local v5    # "spmAB":Ljava/lang/String;
    :cond_5
    return-void

    .line 882
    .restart local v6    # "wrappedView":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$200(Lc8/jwb;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 885
    .end local v6    # "wrappedView":Landroid/view/View;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 886
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$200(Lc8/jwb;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    if-le v7, v9, :cond_8

    .line 887
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$200(Lc8/jwb;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 889
    :cond_8
    iget-object v7, p0, Lc8/iwb;->this$0:Lc8/jwb;

    invoke-static {v7}, Lc8/jwb;->access$200(Lc8/jwb;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
