.class public Lc8/Oap;
.super Landroid/view/TouchDelegate;
.source "TouchDelegateGroup.java"


# static fields
.field private static final USELESS_HACKY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mCurrentTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lc8/Oap;->USELESS_HACKY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "uselessHackyView"    # Landroid/view/View;

    .prologue
    .line 21
    sget-object v0, Lc8/Oap;->USELESS_HACKY_RECT:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1
    .param p1, "touchDelegate"    # Landroid/view/TouchDelegate;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    .line 28
    :cond_0
    iget-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public clearTouchDelegates()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Oap;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 45
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "delegate":Landroid/view/TouchDelegate;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 54
    :pswitch_0
    iget-object v2, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TouchDelegate;

    .line 56
    .local v1, "touchDelegate":Landroid/view/TouchDelegate;
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    iput-object v1, p0, Lc8/Oap;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 59
    const/4 v2, 0x1

    goto :goto_1

    .line 67
    .end local v1    # "touchDelegate":Landroid/view/TouchDelegate;
    :pswitch_1
    iget-object v0, p0, Lc8/Oap;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 68
    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lc8/Oap;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Oap;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1
    .param p1, "touchDelegate"    # Landroid/view/TouchDelegate;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Oap;->mTouchDelegates:Ljava/util/ArrayList;

    .line 38
    :cond_0
    return-void
.end method
