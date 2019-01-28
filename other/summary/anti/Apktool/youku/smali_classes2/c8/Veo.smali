.class public Lc8/Veo;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lc8/Peo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ueo;,
        Lc8/Seo;,
        Lc8/Teo;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/CharSequence;


# instance fields
.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field private final mTabLayout:Lc8/Leo;

.field private mTabReselectedListener:Lc8/Teo;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private onTabClickListener:Lc8/Seo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Veo;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Veo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Lc8/Qeo;

    invoke-direct {v0, p0}, Lc8/Qeo;-><init>(Lc8/Veo;)V

    iput-object v0, p0, Lc8/Veo;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Veo;->setHorizontalScrollBarEnabled(Z)V

    .line 98
    new-instance v0, Lc8/Leo;

    sget v1, Lcom/youku/phone/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {v0, p1, v1}, Lc8/Leo;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lc8/Veo;->mTabLayout:Lc8/Leo;

    .line 99
    iget-object v0, p0, Lc8/Veo;->mTabLayout:Lc8/Leo;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/Veo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lc8/Veo;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lc8/Veo;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Veo;)Lc8/Teo;
    .locals 1
    .param p0, "x0"    # Lc8/Veo;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Veo;->mTabReselectedListener:Lc8/Teo;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Veo;)Lc8/Seo;
    .locals 1
    .param p0, "x0"    # Lc8/Veo;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Veo;->onTabClickListener:Lc8/Seo;

    return-object v0
.end method

.method static synthetic access$302(Lc8/Veo;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lc8/Veo;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    iput-object p1, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lc8/Veo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Veo;

    .prologue
    .line 38
    iget v0, p0, Lc8/Veo;->mMaxTabWidth:I

    return v0
.end method

.method private addTab(ILjava/lang/CharSequence;I)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "iconResId"    # I

    .prologue
    const/4 v5, 0x0

    .line 167
    new-instance v0, Lc8/Ueo;

    invoke-virtual {p0}, Lc8/Veo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/Ueo;-><init>(Lc8/Veo;Landroid/content/Context;)V

    .line 168
    .local v0, "tabView":Lc8/Ueo;
    invoke-static {v0, p1}, Lc8/Ueo;->access$402(Lc8/Ueo;I)I

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Ueo;->setFocusable(Z)V

    .line 170
    iget-object v1, p0, Lc8/Veo;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lc8/Ueo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v0, p2}, Lc8/Ueo;->setText(Ljava/lang/CharSequence;)V

    .line 173
    if-eqz p3, :cond_0

    .line 174
    invoke-virtual {v0, p3, v5, v5, v5}, Lc8/Ueo;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 177
    :cond_0
    iget-object v1, p0, Lc8/Veo;->mTabLayout:Lc8/Leo;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lc8/Leo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    return-void
.end method

.method private animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lc8/Veo;->mTabLayout:Lc8/Leo;

    invoke-virtual {v1, p1}, Lc8/Leo;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/Veo;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    :cond_0
    new-instance v1, Lc8/Reo;

    invoke-direct {v1, p0, v0}, Lc8/Reo;-><init>(Lc8/Veo;Landroid/view/View;)V

    iput-object v1, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    .line 146
    iget-object v1, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/Veo;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method


# virtual methods
.method public getOnTabClickListener()Lc8/Seo;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lc8/Veo;->onTabClickListener:Lc8/Seo;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 7

    .prologue
    .line 221
    iget-object v6, p0, Lc8/Veo;->mTabLayout:Lc8/Leo;

    invoke-virtual {v6}, Lc8/Leo;->removeAllViews()V

    .line 222
    iget-object v6, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 223
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    const/4 v3, 0x0

    .line 224
    .local v3, "iconAdapter":Lc8/Keo;
    instance-of v6, v0, Lc8/Keo;

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 225
    check-cast v3, Lc8/Keo;

    .line 227
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 228
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 229
    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 230
    .local v5, "title":Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 231
    sget-object v5, Lc8/Veo;->EMPTY_TITLE:Ljava/lang/CharSequence;

    .line 233
    :cond_1
    const/4 v4, 0x0

    .line 234
    .local v4, "iconResId":I
    if-eqz v3, :cond_2

    .line 235
    invoke-interface {v3, v2}, Lc8/Keo;->getIconResId(I)I

    move-result v4

    .line 237
    :cond_2
    invoke-direct {p0, v2, v5, v4}, Lc8/Veo;->addTab(ILjava/lang/CharSequence;I)V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v4    # "iconResId":I
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_3
    iget v6, p0, Lc8/Veo;->mSelectedTabIndex:I

    if-le v6, v1, :cond_4

    .line 240
    add-int/lit8 v6, v1, -0x1

    iput v6, p0, Lc8/Veo;->mSelectedTabIndex:I

    .line 242
    :cond_4
    iget v6, p0, Lc8/Veo;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lc8/Veo;->setCurrentItem(I)V

    .line 243
    invoke-virtual {p0}, Lc8/Veo;->requestLayout()V

    .line 244
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 152
    iget-object v0, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/Veo;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 161
    iget-object v0, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lc8/Veo;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/Veo;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 164
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 109
    .local v4, "widthMode":I
    if-ne v4, v7, :cond_2

    move v1, v5

    .line 110
    .local v1, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v1}, Lc8/Veo;->setFillViewport(Z)V

    .line 112
    iget-object v6, p0, Lc8/Veo;->mTabLayout:Lc8/Leo;

    invoke-virtual {v6}, Lc8/Leo;->getChildCount()I

    move-result v0

    .line 113
    .local v0, "childCount":I
    if-le v0, v5, :cond_4

    if-eq v4, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 114
    :cond_0
    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    .line 115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lc8/Veo;->mMaxTabWidth:I

    .line 123
    :goto_1
    invoke-virtual {p0}, Lc8/Veo;->getMeasuredWidth()I

    move-result v3

    .line 124
    .local v3, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 125
    invoke-virtual {p0}, Lc8/Veo;->getMeasuredWidth()I

    move-result v2

    .line 127
    .local v2, "newWidth":I
    if-eqz v1, :cond_1

    if-eq v3, v2, :cond_1

    iget-object v5, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_1

    .line 129
    iget v5, p0, Lc8/Veo;->mSelectedTabIndex:I

    invoke-virtual {p0, v5}, Lc8/Veo;->setCurrentItem(I)V

    .line 131
    :cond_1
    return-void

    .line 109
    .end local v0    # "childCount":I
    .end local v1    # "lockedExpanded":Z
    .end local v2    # "newWidth":I
    .end local v3    # "oldWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 117
    .restart local v0    # "childCount":I
    .restart local v1    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lc8/Veo;->mMaxTabWidth:I

    goto :goto_1

    .line 120
    :cond_4
    const/4 v5, -0x1

    iput v5, p0, Lc8/Veo;->mMaxTabWidth:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lc8/Veo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lc8/Veo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 185
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lc8/Veo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lc8/Veo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 192
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lc8/Veo;->setCurrentItem(I)V

    .line 197
    iget-object v0, p0, Lc8/Veo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lc8/Veo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 254
    iget-object v4, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 255
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    :cond_0
    iput p1, p0, Lc8/Veo;->mSelectedTabIndex:I

    .line 258
    iget-object v4, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 260
    iget-object v4, p0, Lc8/Veo;->mTabLayout:Lc8/Leo;

    invoke-virtual {v4}, Lc8/Leo;->getChildCount()I

    move-result v3

    .line 261
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 262
    iget-object v4, p0, Lc8/Veo;->mTabLayout:Lc8/Leo;

    invoke-virtual {v4, v1}, Lc8/Leo;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 264
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 265
    if-eqz v2, :cond_1

    .line 266
    invoke-direct {p0, p1}, Lc8/Veo;->animateToTab(I)V

    .line 261
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "isSelected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 269
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 273
    iput-object p1, p0, Lc8/Veo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 274
    return-void
.end method

.method public setOnTabClickListener(Lc8/Seo;)V
    .locals 0
    .param p1, "onTabClickListener"    # Lc8/Seo;

    .prologue
    .line 304
    iput-object p1, p0, Lc8/Veo;->onTabClickListener:Lc8/Seo;

    .line 305
    return-void
.end method

.method public setOnTabReselectedListener(Lc8/Teo;)V
    .locals 0
    .param p1, "listener"    # Lc8/Teo;

    .prologue
    .line 103
    iput-object p1, p0, Lc8/Veo;->mTabReselectedListener:Lc8/Teo;

    .line 104
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 204
    iget-object v1, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 211
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_2

    .line 212
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_2
    iput-object p1, p0, Lc8/Veo;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 215
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 216
    invoke-virtual {p0}, Lc8/Veo;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lc8/Veo;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 249
    invoke-virtual {p0, p2}, Lc8/Veo;->setCurrentItem(I)V

    .line 250
    return-void
.end method
