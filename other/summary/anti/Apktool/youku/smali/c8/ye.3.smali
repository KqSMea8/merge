.class public Lc8/ye;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private mAutoRefresh:Z

.field final synthetic this$0:Lc8/Ke;


# direct methods
.method constructor <init>(Lc8/Ke;)V
    .locals 0

    .prologue
    .line 2223
    iput-object p1, p0, Lc8/ye;->this$0:Lc8/Ke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2224
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2229
    iget-object v0, p0, Lc8/ye;->this$0:Lc8/Ke;

    iget-object v0, v0, Lc8/Ke;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 2230
    iget-object v0, p0, Lc8/ye;->this$0:Lc8/Ke;

    iget-boolean v1, p0, Lc8/ye;->mAutoRefresh:Z

    invoke-virtual {v0, p3, v1}, Lc8/Ke;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 2232
    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 0
    .param p1, "autoRefresh"    # Z

    .prologue
    .line 2235
    iput-boolean p1, p0, Lc8/ye;->mAutoRefresh:Z

    .line 2236
    return-void
.end method
