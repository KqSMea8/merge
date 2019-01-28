.class public Lc8/CFn;
.super Landroid/os/AsyncTask;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/ui/activity/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncLoadTabDrawable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTmpCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/youku/ui/activity/HomePageActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/HomePageActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/youku/ui/activity/HomePageActivity;

    .prologue
    .line 805
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    .line 806
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/CFn;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 807
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 799
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/CFn;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 811
    iget-object v3, p0, Lc8/CFn;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/ui/activity/HomePageActivity;

    .line 812
    .local v0, "activity":Lcom/youku/ui/activity/HomePageActivity;
    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0}, Lcom/youku/ui/activity/HomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 815
    .local v1, "appContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 817
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$drawable;->main_tab_selector:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$drawable;->homepage_tab_home_selector_new:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$drawable;->homepage_tab_hotspot_selector_new:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$drawable;->homepage_tab_vip_selector_new:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$drawable;->homepage_tab_star_selector_new:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$drawable;->homepage_tab_user_selector_new:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$color;->homepage_tab_text_selector:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$color;->homepage_tab_text_selector_bottom_vip:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v3, p0, Lc8/CFn;->mTmpCache:Ljava/util/List;

    sget v4, Lcom/youku/phone/R$drawable;->home_navbar_usercenter_txt_bg:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 799
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/CFn;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 832
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 834
    iget-object v2, p0, Lc8/CFn;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/ui/activity/HomePageActivity;

    .local v0, "activity":Lcom/youku/ui/activity/HomePageActivity;
    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Lcom/youku/ui/activity/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 837
    .local v1, "resources":Landroid/content/res/Resources;
    sget-boolean v2, Lc8/Nzk;->isBottomFinished:Z

    if-nez v2, :cond_0

    .line 839
    iget-object v2, v0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHome:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$drawable;->main_tab_selector:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 840
    iget-object v2, v0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHotSpot:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$drawable;->main_tab_selector:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 841
    iget-object v2, v0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuVip:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$drawable;->main_tab_selector:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 842
    iget-object v2, v0, Lcom/youku/ui/activity/HomePageActivity;->layout_YouKuSubscribe:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$drawable;->main_tab_selector:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 843
    iget-object v2, v0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuUser:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$drawable;->main_tab_selector:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 845
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$500(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$drawable;->homepage_tab_home_selector_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 846
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$600(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$drawable;->homepage_tab_hotspot_selector_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 847
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$700(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$drawable;->homepage_tab_vip_selector_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 848
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$800(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$drawable;->homepage_tab_star_selector_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 849
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$900(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$drawable;->homepage_tab_user_selector_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 851
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$1000(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$color;->homepage_tab_text_selector:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 852
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$1100(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$color;->homepage_tab_text_selector:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 853
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$1200(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$color;->homepage_tab_text_selector_bottom_vip:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 854
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$1300(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$color;->homepage_tab_text_selector:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 855
    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$1400(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$color;->homepage_tab_text_selector:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 858
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
