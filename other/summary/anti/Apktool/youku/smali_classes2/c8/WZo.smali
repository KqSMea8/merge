.class public Lc8/WZo;
.super Landroid/widget/FrameLayout;
.source "HomeToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/VZo;
    }
.end annotation


# static fields
.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final FILTER_ITEM_ALL_TAG:I = 0x138a

.field public static final HOME_PAGE:Ljava/lang/String; = "homePage"

.field public static final INTERNACTION:Ljava/lang/String; = "interaction"

.field public static final MSG_VIEW_TAG:I = 0x1389

.field public static final SEARCH_VIEW_TAG:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "HomeToolbar"

.field public static mIsRedPointVisble:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHotWrodTextView:Landroid/widget/TextView;

.field private mIsOnHomePage:Z

.field private mMsgRedPoint:Landroid/view/View;

.field private mPageTitle:Ljava/lang/String;

.field private mRightContainer:Landroid/widget/LinearLayout;

.field private mSearchFrame:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lc8/WZo;->mIsRedPointVisble:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/WZo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/WZo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/WZo;->mIsOnHomePage:Z

    .line 78
    iput-object p1, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/WZo;->setWillNotDraw(Z)V

    .line 80
    sget v0, Lcom/youku/phone/R$layout;->home_tool_bar:I

    invoke-static {p1, v0, p0}, Lc8/WZo;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    sget v0, Lcom/youku/phone/R$id;->home_tool_bar_right_container:I

    invoke-virtual {p0, v0}, Lc8/WZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lc8/WZo;->mRightContainer:Landroid/widget/LinearLayout;

    .line 83
    invoke-direct {p0}, Lc8/WZo;->addHomePageRightBar()V

    .line 85
    sget v0, Lcom/youku/phone/R$id;->home_tool_bar_search_frame:I

    invoke-virtual {p0, v0}, Lc8/WZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/WZo;->mSearchFrame:Landroid/view/View;

    .line 86
    sget v0, Lcom/youku/phone/R$id;->tool_bar_hot_word:I

    invoke-virtual {p0, v0}, Lc8/WZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/WZo;->mHotWrodTextView:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lc8/WZo;->mSearchFrame:Landroid/view/View;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lc8/WZo;->mSearchFrame:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lc8/WZo;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lc8/WZo;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/WZo;->mRightContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lc8/WZo;)V
    .locals 0
    .param p0, "x0"    # Lc8/WZo;

    .prologue
    .line 44
    invoke-direct {p0}, Lc8/WZo;->addHomePageRightBar()V

    return-void
.end method

.method static synthetic access$202(Lc8/WZo;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/WZo;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lc8/WZo;->mIsOnHomePage:Z

    return p1
.end method

.method static synthetic access$300(Lc8/WZo;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/WZo;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lc8/WZo;->addChannelRightBar(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lc8/WZo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/WZo;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lc8/WZo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/WZo;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/WZo;->mPageTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lc8/WZo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/WZo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lc8/WZo;->channelClickedAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addChannelRightBar(Ljava/util/List;Ljava/lang/String;)V
    .locals 15
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/FilterWrapper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/FilterWrapper;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "before add channel + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/WZo;->mIsOnHomePage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 188
    sget v1, Lcom/youku/phone/R$id;->home_tool_bar_search_frame:I

    invoke-virtual {p0, v1}, Lc8/WZo;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 189
    .local v13, "searchFrame":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .local v12, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->home_tool_bar_logo_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 191
    invoke-virtual {v13, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v12    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "searchFrame":Landroid/view/View;
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$layout;->home_tool_bar_right_filter_layout:I

    iget-object v3, p0, Lc8/WZo;->mRightContainer:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v3, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 196
    iget-object v1, p0, Lc8/WZo;->mRightContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 198
    .local v10, "filterLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 199
    .local v9, "filterAllItemLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 201
    .local v11, "filterTextViewAll":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 202
    .local v8, "filterAllItemData":Lcom/youku/vo/FilterWrapper;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/FilterWrapper;

    .line 203
    .local v7, "filter":Lcom/youku/vo/FilterWrapper;
    iget v2, v7, Lcom/youku/vo/FilterWrapper;->is_all:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 204
    move-object v8, v7

    .line 205
    iget-object v1, v7, Lcom/youku/vo/FilterWrapper;->title:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v7    # "filter":Lcom/youku/vo/FilterWrapper;
    :cond_2
    if-eqz v8, :cond_3

    .line 210
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_3
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 214
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/FilterWrapper;

    .line 215
    .restart local v7    # "filter":Lcom/youku/vo/FilterWrapper;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {p0, v7, v0, v10, v2}, Lc8/WZo;->addTab(Lcom/youku/vo/FilterWrapper;Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v7    # "filter":Lcom/youku/vo/FilterWrapper;
    :cond_4
    if-eqz v8, :cond_5

    .line 219
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    iget-object v6, v8, Lcom/youku/vo/FilterWrapper;->title:Ljava/lang/String;

    .line 221
    .local v6, "title":Ljava/lang/String;
    iget-object v4, v8, Lcom/youku/vo/FilterWrapper;->mfilterList:Ljava/lang/String;

    .line 222
    .local v4, "list":Ljava/lang/String;
    iget v5, v8, Lcom/youku/vo/FilterWrapper;->is_all:I

    .line 223
    .local v5, "isAll":I
    new-instance v1, Lc8/TZo;

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lc8/TZo;-><init>(Lc8/WZo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .end local v4    # "list":Ljava/lang/String;
    .end local v5    # "isAll":I
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after add channel + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/WZo;->mIsOnHomePage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private addHomePageRightBar()V
    .locals 8

    .prologue
    .line 166
    iget-object v4, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$layout;->home_tool_bar_right_three_btn:I

    iget-object v6, p0, Lc8/WZo;->mRightContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 167
    sget v4, Lcom/youku/phone/R$id;->home_tool_bar_history:I

    invoke-virtual {p0, v4}, Lc8/WZo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "historyImg":Landroid/view/View;
    sget v4, Lcom/youku/phone/R$id;->home_tool_bar_download:I

    invoke-virtual {p0, v4}, Lc8/WZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "downloadImg":Landroid/view/View;
    sget v4, Lcom/youku/phone/R$id;->home_tool_bar_msg:I

    invoke-virtual {p0, v4}, Lc8/WZo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 170
    .local v3, "msgCenterImg":Landroid/view/View;
    sget v4, Lcom/youku/phone/R$id;->home_tool_bar_msg_red_point:I

    invoke-virtual {p0, v4}, Lc8/WZo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lc8/WZo;->mMsgRedPoint:Landroid/view/View;

    .line 172
    const/16 v4, 0x67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    const/16 v4, 0x1389

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    new-instance v2, Lc8/VZo;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lc8/VZo;-><init>(Lc8/WZo;Lc8/SZo;)V

    .line 177
    .local v2, "menuClick":Lc8/VZo;
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    sget-boolean v4, Lc8/WZo;->mIsRedPointVisble:Z

    invoke-direct {p0, v4}, Lc8/WZo;->setRedPointVisible(Z)V

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "after add homepage + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lc8/WZo;->mIsOnHomePage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    return-void
.end method

.method private addTab(Lcom/youku/vo/FilterWrapper;Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # Lcom/youku/vo/FilterWrapper;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "ll"    # Landroid/widget/LinearLayout;
    .param p4, "position"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v1, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$layout;->home_tool_bar_tab_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p1, Lcom/youku/vo/FilterWrapper;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    new-instance v1, Lc8/UZo;

    invoke-direct {v1, p0, p2, p1, p4}, Lc8/UZo;-><init>(Lc8/WZo;Ljava/lang/String;Lcom/youku/vo/FilterWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method private changeRightBarWithAnim(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/FilterWrapper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/FilterWrapper;>;"
    iget-object v2, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    sget v3, Lcom/youku/phone/R$anim;->home_tool_bar_right_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 135
    .local v1, "outAnim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    sget v3, Lcom/youku/phone/R$anim;->home_tool_bar_right_int:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 136
    .local v0, "inAnim":Landroid/view/animation/Animation;
    new-instance v2, Lc8/SZo;

    invoke-direct {v2, p0, p1, p2, v0}, Lc8/SZo;-><init>(Lc8/WZo;Ljava/util/List;Ljava/lang/String;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 161
    iget-object v2, p0, Lc8/WZo;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    return-void
.end method

.method private channelClickedAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "showTitle"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "page_channelmain_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "pageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "capsule"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "arg1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "a2h05.8165803_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".capsule."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "spm":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "spm"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v4, "object_title"

    invoke-virtual {v1, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v4, "ct"

    iget-object v5, p0, Lc8/WZo;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {v2, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "channel clicked analaytics, position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " showtitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    return-void
.end method

.method private launchSearchPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hotWord"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "KEY_EXTRA_QUERY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "sokusdk://search"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 131
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "sokusdk://search"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setRedPointVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lc8/WZo;->mMsgRedPoint:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lc8/WZo;->mMsgRedPoint:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tool bar,set red visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    :cond_0
    return-void

    .line 252
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v3, p0, Lc8/WZo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    const-string/jumbo v4, "youku://messageCenter"

    invoke-virtual {v3, v4}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "spm"

    const-string/jumbo v4, "a2h0f.8166708.home.message"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v3, p0, Lc8/WZo;->mMsgRedPoint:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 281
    const-string/jumbo v3, "tips"

    const-string/jumbo v4, "red"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :goto_1
    const-string/jumbo v4, "login"

    const-class v3, Lc8/vdn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vdn;

    invoke-interface {v3}, Lc8/vdn;->isLogined()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "1"

    :goto_2
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v3, "page_tnavigate"

    const-string/jumbo v4, "navigatemessage"

    invoke-static {v3, v4, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "home tool bar to msg center ---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/WZo;->mMsgRedPoint:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_0
    const-string/jumbo v3, "tips"

    const-string/jumbo v4, "null"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 285
    :cond_1
    const-string/jumbo v3, "0"

    goto :goto_2

    .line 291
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    iget-object v3, p0, Lc8/WZo;->mHotWrodTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "hotword":Ljava/lang/String;
    iget-object v3, p0, Lc8/WZo;->mSearchFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lc8/WZo;->launchSearchPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v2, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "spm"

    const-string/jumbo v4, "a2h0f.8166708.home.search"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v3, "keyword"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v3, p0, Lc8/WZo;->mPageTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 298
    const-string/jumbo v3, "ct"

    iget-object v4, p0, Lc8/WZo;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_2
    const-string/jumbo v3, "page_tnavigate"

    const-string/jumbo v4, "navigatesearch"

    invoke-static {v3, v4, v2}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setChannelTabs(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/FilterWrapper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/FilterWrapper;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tool bar setChannelTabs ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/WZo;->mIsOnHomePage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hashcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    if-nez p1, :cond_1

    .line 104
    iget-boolean v0, p0, Lc8/WZo;->mIsOnHomePage:Z

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/WZo;->mIsOnHomePage:Z

    .line 114
    :cond_1
    invoke-direct {p0, p1, p2}, Lc8/WZo;->changeRightBarWithAnim(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHotWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lc8/WZo;->mHotWrodTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setMsgRedPointVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 119
    sput-boolean p1, Lc8/WZo;->mIsRedPointVisble:Z

    .line 120
    invoke-direct {p0, p1}, Lc8/WZo;->setRedPointVisible(Z)V

    .line 121
    return-void
.end method

.method public setPageTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lc8/WZo;->mPageTitle:Ljava/lang/String;

    .line 99
    return-void
.end method
