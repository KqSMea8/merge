.class public Lc8/tpb;
.super Landroid/widget/FrameLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/spb;,
        Lc8/rpb;
    }
.end annotation


# instance fields
.field private mOnTabSelectedListener:Lc8/rpb;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSelectedTab:Lc8/spb;

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabbar:Lc8/Opb;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/spb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0, p1}, Lc8/tpb;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0, p1}, Lc8/tpb;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/Opb;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tabbar"    # Lc8/Opb;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    .line 28
    iput-object p2, p0, Lc8/tpb;->mTabbar:Lc8/Opb;

    .line 29
    invoke-direct {p0, p1}, Lc8/tpb;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic access$100(Lc8/tpb;I)V
    .locals 0
    .param p0, "x0"    # Lc8/tpb;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lc8/tpb;->updateTab(I)V

    return-void
.end method

.method private addTabView(Lc8/spb;Z)V
    .locals 4
    .param p1, "tab"    # Lc8/spb;
    .param p2, "isSelected"    # Z

    .prologue
    .line 102
    invoke-virtual {p1}, Lc8/spb;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lc8/tpb;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_0

    .line 104
    new-instance v2, Lc8/qpb;

    invoke-direct {v2, p0}, Lc8/qpb;-><init>(Lc8/tpb;)V

    iput-object v2, p0, Lc8/tpb;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 112
    :cond_0
    if-eqz v1, :cond_1

    .line 113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iget-object v3, p0, Lc8/tpb;->mTabbar:Lc8/Opb;

    invoke-virtual {v3}, Lc8/Opb;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getLayoutHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 115
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v2, p0, Lc8/tpb;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lc8/tpb;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    if-eqz p2, :cond_1

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 123
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, "root":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lc8/tpb;->mTabbar:Lc8/Opb;

    invoke-virtual {v3}, Lc8/Opb;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getLayoutHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    invoke-virtual {p0, v1, v0}, Lc8/tpb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iput-object v1, p0, Lc8/tpb;->mRootView:Landroid/widget/LinearLayout;

    .line 54
    return-void
.end method

.method private updateTab(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lc8/tpb;->getTabAt(I)Lc8/spb;

    move-result-object v2

    .line 87
    .local v2, "tab":Lc8/spb;
    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v2}, Lc8/spb;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 91
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    :cond_0
    invoke-virtual {p0, v0}, Lc8/tpb;->addView(Landroid/view/View;)V

    .line 99
    .end local v0    # "custom":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Lc8/spb;Z)V
    .locals 5
    .param p1, "tab"    # Lc8/spb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "setSelected"    # Z

    .prologue
    .line 132
    invoke-static {p1}, Lc8/spb;->access$000(Lc8/spb;)Lc8/tpb;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 133
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Tab belongs to a different TabLayout."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2}, Lc8/tpb;->addTabView(Lc8/spb;Z)V

    .line 137
    iget-object v3, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 138
    .local v2, "oldSize":I
    iget-object v3, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lc8/spb;->setPosition(I)V

    .line 139
    iget-object v3, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    iget-object v3, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 142
    .local v0, "count":I
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 143
    iget-object v3, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/spb;

    invoke-virtual {v3, v1}, Lc8/spb;->setPosition(I)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p1}, Lc8/spb;->select()V

    .line 149
    :cond_2
    return-void
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lc8/tpb;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lc8/tpb;->mRootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    invoke-virtual {v0}, Lc8/spb;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Lc8/spb;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/spb;

    return-object v0
.end method

.method public newTab()Lc8/spb;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lc8/spb;

    invoke-direct {v0, p0}, Lc8/spb;-><init>(Lc8/tpb;)V

    return-object v0
.end method

.method public removeAllTabs()V
    .locals 3

    .prologue
    .line 158
    iget-object v2, p0, Lc8/tpb;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/spb;

    .line 160
    .local v1, "tab":Lc8/spb;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lc8/spb;->setPosition(I)V

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 164
    .end local v1    # "tab":Lc8/spb;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    .line 165
    return-void
.end method

.method selectTab(Lc8/spb;)V
    .locals 2
    .param p1, "tab"    # Lc8/spb;

    .prologue
    .line 172
    iget-object v0, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    if-ne v0, p1, :cond_1

    .line 173
    iget-object v0, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lc8/tpb;->mOnTabSelectedListener:Lc8/rpb;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lc8/tpb;->mOnTabSelectedListener:Lc8/rpb;

    iget-object v1, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    invoke-interface {v0, v1}, Lc8/rpb;->onTabReselected(Lc8/spb;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/tpb;->mOnTabSelectedListener:Lc8/rpb;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lc8/tpb;->mOnTabSelectedListener:Lc8/rpb;

    iget-object v1, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    invoke-interface {v0, v1}, Lc8/rpb;->onTabUnselected(Lc8/spb;)V

    .line 182
    :cond_2
    iput-object p1, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    .line 183
    iget-object v0, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tpb;->mOnTabSelectedListener:Lc8/rpb;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lc8/tpb;->mOnTabSelectedListener:Lc8/rpb;

    iget-object v1, p0, Lc8/tpb;->mSelectedTab:Lc8/spb;

    invoke-interface {v0, v1}, Lc8/rpb;->onTabSelected(Lc8/spb;)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method public setOnTabSelectedListener(Lc8/rpb;)V
    .locals 0
    .param p1, "onTabSelectedListener"    # Lc8/rpb;

    .prologue
    .line 168
    iput-object p1, p0, Lc8/tpb;->mOnTabSelectedListener:Lc8/rpb;

    .line 169
    return-void
.end method
