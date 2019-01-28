.class public Lc8/GFn;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/ui/activity/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnHomePageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/HomePageActivity;


# direct methods
.method private constructor <init>(Lcom/youku/ui/activity/HomePageActivity;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/youku/ui/activity/HomePageActivity;Lc8/tFn;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .param p2, "x1"    # Lc8/tFn;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lc8/GFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " onClick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v2}, Lcom/youku/ui/activity/HomePageActivity;->access$1500(Lcom/youku/ui/activity/HomePageActivity;)V

    .line 917
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/youku/phone/R$id;->layout_user:I

    if-ne v2, v3, :cond_1

    .line 919
    const-string/jumbo v2, "spm"

    const-string/jumbo v3, "space"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Lc8/Yyo;->generateSpm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string/jumbo v2, "page_bnavigate"

    const-string/jumbo v3, "space"

    const-string/jumbo v4, "1"

    .line 921
    invoke-static {v3, v4}, Lc8/Yyo;->generateArg1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 920
    invoke-static {v2, v3, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 922
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget v2, v2, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    if-eq v2, v7, :cond_0

    .line 923
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v2, v7}, Lcom/youku/ui/activity/HomePageActivity;->switchTab(I)V

    .line 924
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget-object v3, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v3}, Lcom/youku/ui/activity/HomePageActivity;->access$900(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/ui/activity/HomePageActivity;->access$1600(Lcom/youku/ui/activity/HomePageActivity;Landroid/widget/ImageView;)V

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/youku/phone/R$id;->layout_home:I

    if-ne v2, v3, :cond_3

    .line 927
    const-string/jumbo v2, "spm"

    const-string/jumbo v3, "home"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Lc8/Yyo;->generateSpm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string/jumbo v2, "ifrefresh"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string/jumbo v2, "page_bnavigate"

    const-string/jumbo v3, "home"

    const-string/jumbo v4, "1"

    .line 930
    invoke-static {v3, v4}, Lc8/Yyo;->generateArg1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 929
    invoke-static {v2, v3, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 931
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget v2, v2, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    if-eqz v2, :cond_2

    .line 932
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/ui/activity/HomePageActivity;->switchTab(I)V

    .line 933
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget-object v3, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v3}, Lcom/youku/ui/activity/HomePageActivity;->access$500(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/ui/activity/HomePageActivity;->access$1600(Lcom/youku/ui/activity/HomePageActivity;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 935
    :cond_2
    new-instance v2, Lc8/EFn;

    invoke-direct {v2, p0}, Lc8/EFn;-><init>(Lc8/GFn;)V

    invoke-static {v2}, Lc8/Vcf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 949
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/youku/phone/R$id;->layout_subscribe:I

    if-ne v2, v3, :cond_5

    .line 950
    const-string/jumbo v2, "otherMsg"

    sput-object v2, Lc8/zDn;->sourceCode:Ljava/lang/String;

    .line 951
    const/4 v2, 0x0

    sput-object v2, Lc8/zDn;->wakeSubs:Ljava/lang/String;

    .line 952
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget v2, v2, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    if-eq v2, v4, :cond_4

    .line 953
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v2, v4}, Lcom/youku/ui/activity/HomePageActivity;->switchTab(I)V

    .line 954
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget-object v3, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v3}, Lcom/youku/ui/activity/HomePageActivity;->access$800(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/ui/activity/HomePageActivity;->access$1600(Lcom/youku/ui/activity/HomePageActivity;Landroid/widget/ImageView;)V

    .line 960
    :goto_1
    const-string/jumbo v2, "spm"

    const-string/jumbo v3, "star"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Lc8/Yyo;->generateSpm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    const-string/jumbo v2, "page_bnavigate"

    const-string/jumbo v3, "star"

    const-string/jumbo v4, "1"

    .line 962
    invoke-static {v3, v4}, Lc8/Yyo;->generateArg1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 961
    invoke-static {v2, v3, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 956
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.youku.key.ACTION_HOME_TAB_REFRESH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "tab_name"

    const-string/jumbo v3, "planet"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v2}, Lcom/youku/ui/activity/HomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    .line 964
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/youku/phone/R$id;->layout_hotspot:I

    if-ne v2, v3, :cond_7

    .line 965
    const-string/jumbo v2, "spm"

    const-string/jumbo v3, "hot"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Lc8/Yyo;->generateSpm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string/jumbo v2, "page_bnavigate"

    const-string/jumbo v3, "hot"

    const-string/jumbo v4, "1"

    .line 967
    invoke-static {v3, v4}, Lc8/Yyo;->generateArg1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 966
    invoke-static {v2, v3, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 968
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget v2, v2, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    if-eq v2, v5, :cond_6

    .line 969
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v2, v5}, Lcom/youku/ui/activity/HomePageActivity;->switchTab(I)V

    .line 970
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget-object v3, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v3}, Lcom/youku/ui/activity/HomePageActivity;->access$600(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/ui/activity/HomePageActivity;->access$1600(Lcom/youku/ui/activity/HomePageActivity;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 972
    :cond_6
    new-instance v2, Lc8/FFn;

    invoke-direct {v2, p0}, Lc8/FFn;-><init>(Lc8/GFn;)V

    invoke-static {v2}, Lc8/Vcf;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 985
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/youku/phone/R$id;->layout_vip:I

    if-ne v2, v3, :cond_0

    .line 986
    const-string/jumbo v2, "spm"

    const-string/jumbo v3, "vip"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Lc8/Yyo;->generateSpm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string/jumbo v2, "page_bnavigate"

    const-string/jumbo v3, "vip"

    const-string/jumbo v4, "1"

    .line 988
    invoke-static {v3, v4}, Lc8/Yyo;->generateArg1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 987
    invoke-static {v2, v3, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 989
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget v2, v2, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    if-eq v2, v6, :cond_8

    .line 990
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v2, v6}, Lcom/youku/ui/activity/HomePageActivity;->switchTab(I)V

    .line 991
    iget-object v2, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iget-object v3, p0, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v3}, Lcom/youku/ui/activity/HomePageActivity;->access$700(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/ui/activity/HomePageActivity;->access$1600(Lcom/youku/ui/activity/HomePageActivity;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 993
    :cond_8
    invoke-static {}, Lc8/uAo;->clickVipTab()V

    goto/16 :goto_0
.end method
