.class public Lc8/Nrf;
.super Ljava/lang/Object;
.source "LoadTimeCalculate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Prf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadTimeOnGlobalLayoutListener"
.end annotation


# instance fields
.field mIndex:I

.field final synthetic this$0:Lc8/Prf;


# direct methods
.method public constructor <init>(Lc8/Prf;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 853
    iput-object p1, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput p2, p0, Lc8/Nrf;->mIndex:I

    .line 855
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 859
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    if-eqz v0, :cond_1

    iget v0, p0, Lc8/Nrf;->mIndex:I

    iget-object v1, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget v1, v1, Lc8/Grf;->mCreateIndex:I

    if-eq v0, v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-boolean v0, v0, Lc8/Prf;->mLoadTimeGetted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/Prf;->isOriatationPortrait(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lc8/Prf;->mIsPortrait:Z

    .line 864
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-boolean v0, v0, Lc8/Prf;->mIsPortrait:Z

    if-eqz v0, :cond_5

    .line 865
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mLargeLocation:[B

    iput-object v1, v0, Lc8/Prf;->mHeightLocation:[B

    .line 866
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mSmallLocation:[B

    iput-object v1, v0, Lc8/Prf;->mWidthLocation:[B

    .line 871
    :goto_1
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-boolean v3, v0, Lc8/Prf;->mIsLayouted:Z

    .line 872
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-short v1, v0, Lc8/Prf;->mTotalLayOutTimes:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lc8/Prf;->mTotalLayOutTimes:S

    .line 873
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 874
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    :cond_2
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-short v3, v0, Lc8/Prf;->mMaxLayoutDepth:S

    .line 878
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-short v2, v0, Lc8/Prf;->mRedundantLayout:S

    .line 879
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-short v2, v0, Lc8/Prf;->mMaxRelativeLayoutDepth:S

    .line 880
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-short v2, v0, Lc8/Prf;->mSuspectRelativeLayout:S

    .line 882
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput v2, v0, Lc8/Prf;->mVisibleArea:I

    .line 883
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-boolean v2, v0, Lc8/Prf;->mIsWaitDataFill:Z

    .line 884
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mRectResult:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 885
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-short v2, v0, Lc8/Prf;->mFirstRelativeLayoutDepth:S

    .line 886
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-short v2, v0, Lc8/Prf;->mMeasureTimes:S

    .line 887
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput v2, v0, Lc8/Prf;->mActivityViewCount:I

    .line 888
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput v2, v0, Lc8/Prf;->mActivityVisibleViewCount:I

    .line 889
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-boolean v2, v0, Lc8/Prf;->mHasEditTextView:Z

    .line 890
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/Prf;->mViewWaitDataFill:Landroid/view/View;

    .line 891
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-boolean v0, v0, Lc8/Prf;->mLoadTimeGetted:Z

    if-nez v0, :cond_3

    .line 892
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-short v1, v0, Lc8/Prf;->mLayoutTimesOnLoad:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lc8/Prf;->mLayoutTimesOnLoad:S

    .line 894
    :cond_3
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput v2, v0, Lc8/Prf;->mSmoothViewOutRevLayoutDepth:I

    .line 895
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-boolean v2, v0, Lc8/Prf;->mHasSmoothView:Z

    .line 896
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iput-boolean v2, v0, Lc8/Prf;->mEditTextViewFocused:Z

    .line 897
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v0, :cond_4

    .line 898
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v2, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->overDraw3xCount:S

    .line 899
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v2, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->overDraw4xCount:S

    .line 902
    :cond_4
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    invoke-virtual {v0}, Lc8/Prf;->getLastFrameTime()V

    .line 903
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    invoke-virtual {v0}, Lc8/Prf;->postFrameCallback()V

    .line 904
    sget v0, Lc8/msf;->sApiLevel:I

    if-ge v0, v4, :cond_0

    .line 905
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    invoke-virtual {v0, v2}, Lc8/Prf;->doOnEndOfLayout(Z)V

    goto/16 :goto_0

    .line 868
    :cond_5
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mSmallLocation:[B

    iput-object v1, v0, Lc8/Prf;->mHeightLocation:[B

    .line 869
    iget-object v0, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, p0, Lc8/Nrf;->this$0:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mLargeLocation:[B

    iput-object v1, v0, Lc8/Prf;->mWidthLocation:[B

    goto/16 :goto_1
.end method
