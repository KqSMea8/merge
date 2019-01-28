.class public Lc8/Jv;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lc8/Bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lc8/Rv;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Lc8/Rv;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 10076
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 10085
    return-void
.end method

.method public onTouchEvent(Lc8/Rv;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Lc8/Rv;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 10081
    return-void
.end method
