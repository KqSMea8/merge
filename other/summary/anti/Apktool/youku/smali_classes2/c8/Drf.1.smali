.class public Lc8/Drf;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ActivityLifecycleCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Grf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Grf;


# direct methods
.method constructor <init>(Lc8/Grf;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lc8/Drf;->this$0:Lc8/Grf;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 784
    iget-object v0, p0, Lc8/Drf;->this$0:Lc8/Grf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Grf;->mHasMoved:Z

    .line 785
    sget-boolean v0, Lc8/msf;->sIsDetailDebug:Z

    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 775
    iget-object v0, p0, Lc8/Drf;->this$0:Lc8/Grf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Grf;->mHasMoved:Z

    .line 776
    sget-boolean v0, Lc8/msf;->sIsDetailDebug:Z

    .line 779
    const/4 v0, 0x0

    return v0
.end method
